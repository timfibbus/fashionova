package co.timfibbus.fashionizer;

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

	@RequestMapping("/signup")
	public String showSignup() {
		return "signup";
	}

	@PostMapping("/signup")
	public String submitSignup(User user, @RequestParam("confirm-password") String confirmPassword, Model model) {

		User existingUser = userDao.findByUsername(user.getUsername());
		// if (existingUser != null) {
		return "signup";

	}

	// if (!confirmPassword.equals(user.getPassword())) {

}