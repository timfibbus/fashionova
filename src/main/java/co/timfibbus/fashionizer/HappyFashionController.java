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
	
	@RequestMapping("/search")
	public String searchByTerm(@RequestParam("q") String search, Model model){
		
		List<ImagesResults> finds = fs.searchFashion(search);
		model.addAttribute("results", finds);
		return "results";
	}
	
}
