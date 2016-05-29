package com.Model;

import java.util.List;

public interface MoviesDAO
{
	public void addMovie(Movie m1);
	public void deleteMovie(int m1);
	public void updateMovie(Movie m);
	public List<Movie> listMovies();	
	public Movie getMovieById(int movieid);	
}