package co.timfibbus.fashionizer;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class fashionDaoController {

	@Autowired
	closetDao closet;
	
	@Autowired
	wishlistDao wish;
	
	@RequestMapping("/closet")
	public String showCloset(Model model) {	
		List<Closet> mine = closet.findAll();
		model.addAttribute("closet", mine);
		for (Closet i : mine) {
		System.out.println(i.toString());
		}
		return "closet";
	}
	
	@RequestMapping("/closet/sort")
	public String sortClosetByOccasion(Model model, @RequestParam("sort") String occasion) {
		List<Closet> these = closet.findByOccasion(occasion);
		model.addAttribute("these", these);
		return "closet";
	}
	
	@RequestMapping("/wishlist")
	public String showWishlist(Model model) {
		List<Wishlist> wishes = wish.findAll();
		model.addAttribute("results", wishes);
		return "wish-list";
	}
	
	@RequestMapping("/wish-list/search")
	public String searchWishlist(@RequestParam(required = false) String title, Model model) {
		List<Wishlist> searched = wish.findByTitleContainsIgnoreCase(title);
		model.addAttribute("searched", searched);
		return "wish-list";
	}
//
//	@RequestMapping("/wish-list/delete")
//	public List<Wishlist> deleteFromWishlist(@RequestParam("id") Long id) {
//		wish.deleteById(id);
//		return wish.findAll();
//	}
//
	@RequestMapping("/wish-list/add")
	public String addToList(Model model,@RequestParam("thumbnail") String thumbnail, @RequestParam("title") String title, 
			@RequestParam("price") String price, @RequestParam("link") String link, @RequestParam("occasion") String occasion){
		Wishlist wishy = new Wishlist();
		wishy.setThumbnail(thumbnail);
		wishy.setTitle(title);
		wishy.setPrice(price);
		wishy.setLink(link);
		wishy.setOccasion(occasion);
		wish.save(wishy);
		model.addAttribute("title", title);
		System.out.println(wishy.toString());
		//System.out.println(wish.findById(3L).get().getThumbnail());
		return "confirm";
	}
	
	@RequestMapping("/closet/add")
	public String addToCloset(Model model,@RequestParam("thumbnail") String thumbnail, @RequestParam("title") String title, @RequestParam("type") String type,
			@RequestParam("description") String description, @RequestParam("occasion") String occasion){
		Closet close = new Closet();
		close.setThumbnail(thumbnail);
		close.setTitle(title);
		close.setType(type);
		close.setDescription(description);
		close.setOccasion(occasion);
		closet.save(close);
		model.addAttribute("title", title);
		System.out.println(close.toString());
		return "redirect:/closet";
	}
	
	@RequestMapping("/confirm-closet")
	public String confirmClosetAdd(Model model, @RequestParam("thumbnail") String thumbnail, @RequestParam("title") String title,
			@RequestParam("occasion") String occasion) {
		model.addAttribute("thumbnail", thumbnail);
		model.addAttribute("title", title);
		model.addAttribute("occasion", occasion);
		return "confirm-closet";
	}
	
	@RequestMapping("/confirm")
	public String confirm(@RequestParam("title") String title, Model model) {
		String wish = title;
		model.addAttribute("title", wish);
		return "confirm";
	}

	
//	@RequestMapping("/closet/add")
//	public String addToCloset(Closet closet) {
//		closet.save(closet);
//		return "closet-form";
//	}
//		
//	@PostMapping("/closet/add")
//	public String submitToCloset(@RequestParam("type") String type, 
//			@RequestParam("description") String description, @RequestParam("title") String title, Closet closet) {
//		return "closet";
//	}

}
	
