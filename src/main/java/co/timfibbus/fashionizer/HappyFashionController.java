package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	/*
	@RequestMapping("/search")
	public String searchByTerm(@RequestParam("search") String search, Model model){
		
		List<ImagesResults> finds = fs.searchFashion(search);
		model.addAttribute("results", finds);
		System.out.println(finds);
		return "results";
	}
	
	@RequestMapping("/search-shop")
	public String searchShoppin(@RequestParam("search") String search, Model model) {
		
		List<ShoppingResults> finds = fs.searchShopping(search);
		model.addAttribute("results", finds);
		System.out.println(finds);
		return "results2";
	}
	*/
	@RequestMapping("/search-outfit")
	public String searchOutfit(@RequestParam(required=false) String search, @RequestParam("occasion") String occasion, Model model) {
		List<ShoppingResults> outfits = fs.searchShopping(search, occasion);
		model.addAttribute("results", outfits);
		System.out.println(outfits);
		return "results2";
	}
	
	
	@RequestMapping("/closet")
	public String showCloset() {
		
		return "closet";
	}
}
