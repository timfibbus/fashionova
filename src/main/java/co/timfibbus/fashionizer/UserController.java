package co.timfibbus.fashionizer;

import java.util.Base64;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String submitSignup(User user,@RequestParam("passwordConfirm") String passwordConfirm, Model model) {

		User existingUser = userDao.findByUsername(user.getUsername());
		if (existingUser != null) {
			model.addAttribute("message", "That username already exists. Please choose a different username.");

			return "signup";

		}
		if (!passwordConfirm.contentEquals(user.getPassword())) {
			model.addAttribute("message", "The passwords you entered do not match. Please try again.");
			return "signup";
		}

		String encodePass = Base64.getEncoder().encodeToString(user.getPassword().getBytes());
		user.setPassword(encodePass);
		userDao.save(user);

		session.setAttribute("user", user);
		return "redirect:/index";

	}

	// LOGIN METHODS
	@RequestMapping("/login")
	public String showLogin() {
		return "login";
	}

	@PostMapping("/login")
	public String submitLogin(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model, RedirectAttributes redirect) {
		User user = userDao.findByUsername(username);

		if (user == null) {
			model.addAttribute("message", "Incorrect username. Please try again.");
			return "login";
		}
		byte[] decodeByte = Base64.getDecoder().decode(user.getPassword());
		String decodePass = new String(decodeByte);

		if (!password.contentEquals(decodePass)) {
			model.addAttribute("message", "Incorrect password. Please try again.");
			return "login";
		}

		session.setAttribute("user", user);
		redirect.addFlashAttribute("message", "You are now logged in.");
		return "redirect:/index";
	}

	// LOGOUT METHOD
	@RequestMapping("/logout")
	public String logout(RedirectAttributes redirect) {
		session.invalidate();
		redirect.addFlashAttribute("message", "You are now logged out.");
		
		return "redirect:/index";
	}

}