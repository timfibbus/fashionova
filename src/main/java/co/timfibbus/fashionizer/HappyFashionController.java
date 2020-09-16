package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HappyFashionController {

	@Autowired
	FashionService fs;

	@RequestMapping("/")
	public String home() {

		return "index";
	}

	@RequestMapping("/search-outfit")
	public String searchOutfit(@RequestParam(required = false) String search, @RequestParam("occasion") String occasion,
			Model model) { 
		if (search == null)
			search = "";
		List<ShoppingResults> outfits = fs.searchShopping(search, occasion);
		model.addAttribute("results", outfits);
		model.addAttribute("occasion", occasion);
		System.out.println(outfits);
		return "results2";
	}

	@RequestMapping("/about")
	public String aboutUs() {
		return "about";
	}

}
