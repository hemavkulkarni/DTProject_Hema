package com.controller;
import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;  
import org.springframework.web.servlet.ModelAndView;
import com.Model.*;
//import com.Model.User;  
  
@Controller  
public class LoginController 
{  
	@Autowired
	 UserService userService;
  
 @RequestMapping("login")  
 public ModelAndView getLoginForm(Model model,@RequestParam(required = false) String authfailed, String logout, String denied) 
 {  	 
	 System.out.println("in Login controller");
  String message = "";  
  if (authfailed != null) {  
   message = "Invalid username of password, try again !";  
  } else if (logout != null) {  
   message = "Logged Out successfully, login again to continue !";  
  } else if (denied != null) {  
   message = "Access denied for this user !";  
  }  
 // message="in login";
  return new ModelAndView("login", "message", message);  
 }  
  
 @RequestMapping("/SaveUsers")  
 public String geUserPage(Model model) 
 {  
  return "SaveUsers";  
 }  
  
 @RequestMapping("/AdminHome")
 public String admin()
 {
	  return "AdminHome";
 }  
  
 @RequestMapping("403page")  
 public String ge403denied() 
 {  
  return "redirect:login?denied";  
 }  
 
 @RequestMapping(value="/saveUser", method=RequestMethod.POST)
 public String addUser(@Valid @ModelAttribute("userData") User reg,BindingResult result)
 {
	  System.out.println("Inside Save User");
	  if(result.hasErrors())
	  {
		return "reg";  
	  }
	  else
	  {
	  userService.addUser(reg);
	  }
	  return "index";
 } 
 
 @RequestMapping("/reg")
 public ModelAndView register()
 {
	  User register=getUserObject();
	  ModelAndView model=new ModelAndView("reg");
	  model.addObject(register);
	// model.addObject("userData", reg);
	  return model;
 }
 
 @ModelAttribute("userData")
 public User getUserObject()
 {
	  return new User();
 } 
}