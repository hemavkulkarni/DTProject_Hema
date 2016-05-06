package com.example;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import Model.Products; 
@Controller
public class HomeController 
{
	@RequestMapping("/")
	public ModelAndView showMessage()
	{
		System.out.println("in controller");		
 		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@RequestMapping("/Login")
	public String login()
	{
		return ("Login");
	}
	@RequestMapping("/About")
	public String about()
	{
		return ("About");
	}
	@RequestMapping("/Reg")
	public String reg()
	{
		return ("Reg");
	}
	/*@RequestMapping("/Products1")
	public String products1()
	{
		return("Products1");
	}*/
	@RequestMapping("/Details")
	public String details()
	{
		return ("Details");
		
	}
	@RequestMapping("/ref")
	public String Ref()
	{
		return ("ref");
		
	}
	@RequestMapping("/washingmachine")
	public String WashingMachine()
	{
		return ("washingmachine");
		
	}
	@RequestMapping("/tv")
	public String TV()
	{
		return ("tv");		
	}
	@RequestMapping("/Products1")	
	public String productDAO(@RequestParam("category") String cat,Model m)	
	{
		ProductDAO pd=new ProductDAO();		
		ArrayList<Products> st=pd.addProducts(cat);
		m.addAttribute("Parray",st);
		return ("Products1");
	}
}