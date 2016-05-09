package com.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("MovieService")
public class MovieServiceImpl implements MovieService 
{	
	@Autowired
	private MoviesDAO moviesdao;
	@Transactional("addMovie()")
	public void addMovie(Movies m1)
	{
		moviesdao.addMovie(m1);		
	}
	@Transactional("deleteMovie")
	public void deleteMovie(Movies m1)
	{
		moviesdao.deleteMovie(m1);
	}
}