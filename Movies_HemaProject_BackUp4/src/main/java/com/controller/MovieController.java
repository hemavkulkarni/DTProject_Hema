package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.Model.*;
@Controller
public class MovieController 
{
	@Autowired
	private MovieService mService;
	@RequestMapping("/AddMovie")
	public String addmovie()
	{
		return "AddMovie";	 
	}
	@RequestMapping("/ViewMovies")
	public String viewMovies()
	{
		return "ViewMovies";
	}  
	@RequestMapping("/")  
    public ModelAndView saveUserData(@ModelAttribute("Movies") Movies m1, BindingResult result)
	{  
		mService.addMovie(m1);
		System.out.println("Save User Data");  
        return new ModelAndView("index");    
    }	
		@RequestMapping("/index")
		public String Index()
		{
			return "index";
		}
		@RequestMapping("/contact")
		public String Contact()
		{
			return "contact";
		}
		@RequestMapping("/reg")
		public String Reg()
		{
			return "reg";
		}
		@RequestMapping("/login")
		public String Login()
		{
			return "login";
		}
		@RequestMapping("/movies")
		public String Movies()
		{
			return "movies";
		}	
}