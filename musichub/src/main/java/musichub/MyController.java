package musichub;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class MyController {
	//String message = "Welcome to Spring MVC!";
 
	
	@RequestMapping("/Register")
	public String showRegister() {
		System.out.println("Register");
 
		//ModelAndView mv = new ModelAndView("Register");
		
		return "registernew";
	}
	
	@RequestMapping("/")
	public String showIndex() {
		
		System.out.println("in controller");
		
		return "index";
	}
	
	@RequestMapping("/guitars")
	public String showGuiter() {
		//System.out.println("Register");
 
		//ModelAndView mv = new ModelAndView("Register");
		
		return "guitars";
	}
}
