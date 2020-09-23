package co.timfibbus.fashionizer;

import java.util.Base64;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

	@Autowired
	UserDao userDao;

	@Autowired
	HttpSession session;

	// SIGNUP METHODS
	@RequestMapping("/signup")
	public String showSignup() {
		return "signup";
	}

	@PostMapping("/signup")
	public String submitSignup(User user, Model model) {

		User existingUser = userDao.findByUsername(user.getUsername());
		if (existingUser != null) {
			model.addAttribute("message", "That username already exists. Please choose a different username.");

			return "signup";

		}
//		if (confirmPassword.contentEquals(user.getPassword())) {
//			model.addAttribute("message", "The passwords you entered do not match. Please try again.");
//			return "signup";
//		}

		String encodePass = Base64.getEncoder().encodeToString(user.getPassword().getBytes());
		user.setPassword(encodePass);
		userDao.save(user);

		session.setAttribute("user", user);
		return "redirect:/";

	}

	// LOGIN METHODS
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}

	@PostMapping("/login")
	public String submitLogin(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		User user = userDao.findByUsername(username);

		byte[] decodeByte = Base64.getDecoder().decode(user.getPassword());
		String decodePass = new String(decodeByte);

		if (!password.contentEquals(decodePass)) {
			model.addAttribute("message", "Incorrect password or username. Please try again.");
			return "login";
		}

		session.setAttribute("user", user);
		return "redirect:/";
	}

	// LOGOUT METHOD
	@RequestMapping("/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}

}