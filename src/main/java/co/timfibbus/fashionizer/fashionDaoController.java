package co.timfibbus.fashionizer;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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
		return "closet";
	}
	
	@RequestMapping("/wishlist")
	public String showWishlist(Model model) {
		List<Wishlist> wishes = wish.findAll();
		model.addAttribute("results", wishes);
		return "wish-list";
	}
	
//	@RequestMapping("/wish-list/search")
//	public List<Wishlist> searchWishlist(@RequestParam(required = false) String title) {
//		return wish.findByTitleContainsIgnoreCase(title);
//	}
//
//	@RequestMapping("/wish-list/delete")
//	public List<Wishlist> deleteFromWishlist(@RequestParam("id") Long id) {
//		wish.deleteById(id);
//		return wish.findAll();
//	}
//
	@RequestMapping("/wish-list/add")
	public String addToList(Model model,@RequestParam("thumbnail") String thumbnail, @RequestParam("title") String title, 
			@RequestParam("price") String price, @RequestParam("link") String link){
		Wishlist wishy = new Wishlist();
		wishy.setThumbnail(thumbnail);
		wishy.setTitle(title);
		wishy.setPrice(price);
		wishy.setLink(link);
		wish.save(wishy);
		model.addAttribute("title", title);
		System.out.println(wishy.toString());
		System.out.println(wish.findById(3L).get().getThumbnail());
		return "confirm";
	}
	
	@RequestMapping("/closet/add")
	public String addToCloset(Model model,@RequestParam("thumbnail") String thumbnail, @RequestParam("title") String title){
		Closet close = new Closet();
		close.setThumbnail(thumbnail);
		close.setTitle(title);
		closet.save(close);
		model.addAttribute("title", title);
		System.out.println(close.toString());
		System.out.println(wish.findById(3L).get().getThumbnail());
		return "confirm";
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
	
