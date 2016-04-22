package musichub.controllers;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Product;


@Controller
public class HomeController {
	
	@Autowired
	ProductService ps;
	
	@RequestMapping("/")
	public String showHome()
	{
		return "index";
	}
	
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
    public String addProduct(@ModelAttribute("product") Product p){
         System.out.println(p.getName());
        if(p.getId() == 0){
            //new person, add it
            this.ps.addProduct(p);
        }
         
        return "redirect:/productdetails";
         
    }
	
	@RequestMapping("/remove/{id}")
    public String removePerson(@PathVariable("id") int id){
         
		System.out.println("in remove");
        this.ps.removeProduct(id);
        
        return "redirect:/productdetails";
    }
	
	
}
