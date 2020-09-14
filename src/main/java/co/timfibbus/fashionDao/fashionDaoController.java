package co.timfibbus.fashionDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		model.addAttribute("wishes", wishes);
		return "wishlist";
	}
	
	
	
}
