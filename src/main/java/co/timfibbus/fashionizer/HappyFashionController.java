package co.timfibbus.fashionizer;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HappyFashionController {

	@Autowired
	FashionService fs;
	@Autowired
	HttpSession session;
	@Autowired
	UserDao user;

	@RequestMapping("/")
	public String home() {
		return "about";
	}

	@RequestMapping("/search-outfit")
	public String searchOutfit(@RequestParam(required = false) String gender, @RequestParam(required = false) String search,
			@RequestParam(required = false) String occasion, Model model) { 
		if (search == null)
			search = "";
		if (gender == null)
			gender = "";
		if (occasion == null)
			occasion = "";
		List<ShoppingResults> outfits = fs.searchShopping(search, occasion, gender);
		model.addAttribute("results", outfits);
		model.addAttribute("occasion", occasion);
		System.out.println(outfits);
		return "results2";
	}
	
	@RequestMapping("/reverse-search")
	public String searchOutfit(@RequestParam(required = false) String thumbnail, Model model) {
		
		List<ShoppingResults> outfits = fs.reverseSearch(thumbnail);
		model.addAttribute("results", outfits);
		return "results2";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}

}
