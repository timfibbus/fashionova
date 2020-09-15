package co.timfibbus.fashionDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class fashionDaoController {

	@Autowired
	closetDao closetDao;
	
	@Autowired
	wishlistDao wish;
	
	@RequestMapping("/closet")
	public String showCloset(Model model) {	
		List<Closet> mine = closetDao.findAll();
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
	public String addtoWishlist() {
		return "wish-list";
	}
	
	@RequestMapping("/closet/add")
	public String addToCloset(Closet closet) {
		closetDao.save(closet);
		return "closet-form";
	}
		
	@PostMapping("/closet/add")
	public String submitToCloset(@RequestParam("type") String type, 
			@RequestParam("description") String description, @RequestParam("title") String title, Closet closet) {
		return "closet";
	}

}
	
