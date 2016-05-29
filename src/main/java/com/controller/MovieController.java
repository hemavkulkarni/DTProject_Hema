package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import java.io.*;
import java.util.*;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import com.Model.Movie;
import com.Model.MovieService;
import com.Model.MoviesBean;
@Controller
public class MovieController 
{
		@Autowired
		 MovieService mService;	
		@Autowired
		ServletContext req;
		Movie movie=new Movie();
		
		@RequestMapping("/")
		public ModelAndView showMessage()
		 {
			System.out.println("in controller");	 
			ModelAndView mv = new ModelAndView("index");
			return mv;
		}		
		
		@RequestMapping(value="/Add")
		public ModelAndView addmovie()
		{
			Map<String, Object> model = new HashMap<String, Object>();	
			Movie mb=new Movie();
			ModelAndView mav=new ModelAndView("AddMovie");
			mav.addObject("mov",mb);
			//model.put("s",  prepareListofBean(mService.listMovies()));  
			//  return new ModelAndView("AddMovie", model);  		
			return mav;
		}
		@RequestMapping(value = "/SaveMovies", method = RequestMethod.POST)  
		public ModelAndView saveMovies(@ModelAttribute("mov")Movie mBean,BindingResult result) 
		{  
			System.out.println(mBean.getMoviecat1());
			String p=req.getRealPath("/");
			System.out.println("hello1");			
			 p=mBean.getFilePath(p, req.getContextPath());
			System.out.println(p);
			//	Movies m = prepareModel(mBean);
				System.out.println("hello3");
				mService.addMovie(mBean);  
				return new ModelAndView("SaveMovies");  
		}
		
		@RequestMapping("/editMovies")  
		  public ModelAndView editMovie(@RequestParam int id,@ModelAttribute Movie movie)
		{
			Movie mObject=mService.getMovieById(id);		    
		   System.out.println("Edit:"+mObject.getMovienm());
		   return new ModelAndView("editMovies", "mObject", mObject);  
		  }
		
		  @RequestMapping("/delete")
		  public String deletemovie(@RequestParam("id")String movieid)
		  {
			  System.out.println(movieid);
			  int id=Integer.parseInt(movieid);
			  mService.deleteMovie(id);
			  
			  //return "DeleteMovie";
			  return "redirect:ViewMovies";			  
		  }
	
		  @RequestMapping("/update")  
		  public ModelAndView updateMovie(@ModelAttribute Movie m) {  
			  System.out.println(""+m.getMovieid());
			  String p=req.getRealPath("/");
			  //System.out.println("*****"+product.getFile1());
			  String path=m.getFilePath(p,req.getContextPath());		
			  System.out.println("Context path"+req.getContextPath()+"############"+path); 
		   mService.updateMovie(m);  
		   return new ModelAndView("redirect:ViewMovies");
		   }
		
		  
		/*@RequestMapping(value = "/DeleteMovie", method = RequestMethod.GET)  
		 public ModelAndView editMovies(@ModelAttribute("command")MoviesBean mBean,BindingResult result)
		{  
		   mService.deleteMovie(prepareModel(mBean));  
		   Map<String, Object> model = new HashMap<String, Object>();  
		   model.put("products", null);  
		   model.put("movies",  prepareListofBean(mService.listMovies()));  
		   return new ModelAndView("ViewMovies", model);  
		  } */
		@RequestMapping(value="/ViewMovies", method = RequestMethod.GET)
		public ModelAndView listMovies( Map<String, Object> model)
		{
		List <Movie> lst=mService.listMovies();
		System.out.println("In list all movies");
		return new ModelAndView("ViewMovies","movieList", lst);
		}
		/*private Movie prepareModel(MoviesBean mBean)
		{
		Movie movie = new Movie();
		movie.setMovieid(mBean.getMovieid());
		movie.setMovienm(mBean.getMovienm());
		movie.setMoviecat1(mBean.getMoviecat1());
		movie.setQty(mBean.getQty());
		movie.setPrice(mBean.getPrice());
		mBean.setMovieid(0);
		return movie;
		}
		private List<MoviesBean> prepareListofBean(List<Movie> movies)
		{
			List<MoviesBean> beans = null;
			if(movies != null && !movies.isEmpty())
			{
					beans = new ArrayList<MoviesBean>();
					MoviesBean bean = null;
					for(Movie m : movies)
					{
							bean = new MoviesBean();
							bean.setMovieid(m.getMovieid());
							bean.setMovienm(m.getMovienm());
							bean.setMoviecat1(m.getMoviecat1());
							bean.setQty(m.getQty());
							bean.setPrice(m.getPrice());
							beans.add(bean);
					}
			}
			return beans;
			}*/
	
			@RequestMapping("/contact")
			public String Contact()
			{
				return "contact";
			}
}