package com.example;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView; 
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
	@RequestMapping("/Products1")
	public String products1()
	{
		return("Products1");
	}
	@RequestMapping("/Details")
	public String details()
	{
		return ("Details");
		
	}
}