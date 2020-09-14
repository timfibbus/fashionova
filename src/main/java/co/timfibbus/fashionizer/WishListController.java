package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WishListController {

	@Autowired
	private wishlistDao wish;

	@RequestMapping("/wishlist")
	public String showWishlist(Model model) {
		List<Wishlist> wishes = wish.findAll();
		model.addAttribute("wishes", wishes);
		return "wishlist";
	}

	@RequestMapping("/wish-list/search")
	public List<Wishlist> searchWishlist(@RequestParam(required = false) String title) {
		return wish.findByTitleContainsIgnoreCase(title);
	}

	@RequestMapping("/wish-list/delete")
	public List<Wishlist> deleteFromWishlist(@RequestParam("id") Long id) {
		wish.deleteById(id);
		return wish.findAll();
	}

	@RequestMapping("/wish-list/add")
	public String addtoWishlist() {
		return "wish-list";
	}

}
