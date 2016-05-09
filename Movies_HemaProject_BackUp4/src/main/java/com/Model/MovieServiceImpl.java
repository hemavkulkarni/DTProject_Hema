package com.Model;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
@Service("MovieService")
public class MovieServiceImpl implements MovieService 
{	
	@Autowired
	private MoviesDAO moviesdao;
	//@Transactional(propagation=Propagation.REQUIRED,readonly=false)
	@Transactional
	public void addMovie(Movies m1)
	{
		moviesdao.addMovie(m1);		
	}
	@Transactional("deleteMovie")
	public void deleteMovie(Movies m1)
	{
		moviesdao.deleteMovie(m1);
	}
	@Override
	public Object listEmployeess() 
	{
		return null;
	}
}