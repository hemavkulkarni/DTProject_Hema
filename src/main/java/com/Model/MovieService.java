package com.Model;

import java.util.List;

public interface MovieService 
{
	public void addMovie(Movie mBean);
	public void deleteMovie(int movieid);
	public void updateMovie(Movie m);
	public List<Movie> listMovies();
	public Movie getMovieById(int movieid);
}