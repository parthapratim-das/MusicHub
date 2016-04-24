package musichub.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Product;
import model.User;
import musichub.controllers.ProductService;

@Controller
public class HomeController {

	ProductService ps;
	
	@Autowired
	public HomeController(ProductService ps)
	{
		this.ps=ps;
	}
	
	@RequestMapping("/")
	public String showHome()
	{
		return "index";
	}
	
	@RequestMapping(value="/signin", method = RequestMethod.GET)
    public String login(ModelMap model) {
     
    return "signin";
     
    }
     
    @RequestMapping(value="/loginError", method = RequestMethod.GET)
    public String loginError(ModelMap model) {
    model.addAttribute("error", "Invalid Username or Password!!");
    return "signin";
     
    }
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap model) {
        return "index";
    }
	
//Trying to resolve confusion	
	/*@RequestMapping(value = "/adminproducts**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		//model.addObject("title", "Spring Security Custom Login Form");
		//model.addObject("message", "This is protected page!");
		model.setViewName("adminproducts");
		return model;

	}*/
	
	
	@RequestMapping("/index")
	public String backToHome()
	{
		return "index";
	}
	
	@RequestMapping("/register")
	public String showRegister()
	{
		return "register";
	}
	
	//method to retrieve and load database table to productdetails.jsp
	
	@RequestMapping("/productdetails")
	public List<Product> showDetails(Model mp)
	{
		List<Product> listtojsp=new ArrayList<Product>();
		listtojsp=ps.getAll();
		mp.addAttribute("listfromtable",listtojsp);
		return listtojsp;
	}
	
	@RequestMapping("/adminproducts")
	public List<Product> showDetailstoAdmin(Model mp)
	{
		List<Product> listtojsp=new ArrayList<Product>();
		listtojsp=ps.getAll();
		mp.addAttribute("listfromtable",listtojsp);
		return listtojsp;
	}
	
	@ModelAttribute("user")
	public User getUser()
	{
		return new User();
	}
	@RequestMapping(value="/newuser", method=RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("user") User p, BindingResult result)
	{
		if (result.hasErrors()) {
			 
		    return "register";
		 
		} else {
		 
	            //new person, add it
	            this.ps.addPerson(p);
		
        
      }
		return "redirect:/index";
	}
	
	@RequestMapping("/addnew")
	public String invokeAddNew()
	{
		return "addnew";
	}
	
	@ModelAttribute("product")
	public Product create()
	{
		return new Product();
	}
	
	@RequestMapping(value= "/newproductdetails", method = RequestMethod.POST)
    public String addProduct(@Valid @ModelAttribute("product") Product p, BindingResult result){
        
		if (result.hasErrors()) {
			 
		    return "addnew";
		 
		} else {
		 
			if(p.getId() == 0){
	            //new person, add it
	            this.ps.addProduct(p);
		}
		//System.out.println(p.getName());
        
      }
         
        return "redirect:/adminproducts";
         
    }
	
	@RequestMapping("/remove/{id}")
    public String removePerson(@PathVariable("id") int id){
         
		System.out.println("in remove");
        this.ps.removeProduct(id);
        
        return "redirect:/adminproducts";
    }
	
	@RequestMapping("/edit/{id}")
    public String editPerson(@PathVariable("id") int id, Model model){
        //model.addAttribute("product", this.ps.update(id));
        //model.addAttribute("listPersons", this.ps.getAll());
        return "redirect:/productdetails";
	}
	
}
