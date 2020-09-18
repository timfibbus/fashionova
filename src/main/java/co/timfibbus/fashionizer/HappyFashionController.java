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

		return "about";
	}

	@RequestMapping("/search-outfit")
	public String searchOutfit(@RequestParam(required = false) String gender, @RequestParam(required = false) String search,
			@RequestParam("occasion") String occasion, Model model) { 
		if (search == null)
			search = "";
		if (gender == null)
			gender = "";
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

	
	
	@RequestMapping("/upload")
	public String uploadImage() {
		return "uploadimage";
	}
}
