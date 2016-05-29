package com.Model;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("MovieService")
public class MovieServiceImpl implements MovieService 
{	
	public MovieServiceImpl(){}
	@Autowired
	 MoviesDAO moviesdao;
	//@Transactional(propagation=Propagation.REQUIRED,readOnly=false)
	@Transactional
	public void addMovie(Movie m1)
	{
		moviesdao.addMovie(m1);		
	}
	@Transactional
	public void deleteMovie(int m1)
	{
		moviesdao.deleteMovie(m1);
	}
	public void updateMovie(Movie m)
	{
		moviesdao.updateMovie(m);
	}
	@Transactional
	public List<Movie> listMovies() 
	{
		return moviesdao.listMovies(); 
	}
	@Transactional
	public Movie getMovieById(int movieid)
	{
		Movie m=moviesdao.getMovieById(movieid);		
		return m;
	}	
}