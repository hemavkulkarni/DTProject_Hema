package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Model.*;
@Controller
public class MovieController 
{
	@Autowired
	private MovieService movieservice;
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
	@RequestMapping("/displayProducts")  
    public ModelAndView saveUserData(@ModelAttribute("Movies") Movies m1, BindingResult result)
	{  
		movieservice.addMovie(m1);
		System.out.println("Save User Data");  
        return new ModelAndView("displayProducts");    
    }  
	/*private Employee prepareModel(EmployeeBean employeeBean){  
		  Employee employee = new Employee();  
		  employee.setEmpAddress(employeeBean.getAddress());  
		  employee.setEmpAge(employeeBean.getAge());  
		  employee.setEmpName(employeeBean.getName());  
		  employee.setSalary(employeeBean.getSalary());  
		  employee.setEmpId(employeeBean.getId());  
		  employeeBean.setId(null);  
		  return employee;  
		 } */ 
		@RequestMapping("/")
		public String showMessage()
		{
			System.out.println("in controller");	
			Movies m1=new Movies();
			m1.setMovieid(101);
			m1.setMovienm("Kho-Kho");
			m1.setMoviecat("Timepass");
			m1.setQty(2);
			m1.setPrice(140);
			movieservice.addMovie(m1);
	 		//ModelAndView mv = new ModelAndView("index");
			//return mv;
			return "index";
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