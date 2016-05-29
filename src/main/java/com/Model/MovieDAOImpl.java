package com.Model;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Repository;

@Repository("MovieDAO")
public class MovieDAOImpl implements MoviesDAO 
{
	@Autowired
	SessionFactory sessionfactory;
	@Transactional
	public void addMovie(Movie m1)
	{
		System.out.println("inside add movie");
		Session sess=sessionfactory.openSession();
		
		Transaction trans=sess.beginTransaction();
		sess.save(m1);
		System.out.println("Inserted Successfully");
		trans.commit();
		sess.flush();
		sess.close();
		//sessionfactory.getCurrentSession().saveOrUpdate(m1);			
	}
	@Transactional
	public void updateMovie(Movie m) 
	{
		Session session = sessionfactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(m);  
		  tx.commit();  
		//  Serializable id = session.getIdentifier(employee);  
		  session.close();  
	}
	@Transactional
	public void deleteMovie(int m11)
	{
		System.out.println("Inside delete movie");
		Session sess=sessionfactory.openSession();
		Transaction trans=sess.beginTransaction();
		Movie m1=(Movie) sess.load(Movie.class, m11);
				sess.delete(m1);
				trans.commit();
				sess.close();
		//sessionfactory.getCurrentSession().createQuery("DELETE FROM MOVIES WHERE movieid="+m1.getMovieid()).executeUpdate();				
	}
	@SuppressWarnings("unchecked")
	public List<Movie> listMovies()
	{
		return (List<Movie>) sessionfactory.openSession().createQuery("from Movie").list();
		//return (List<Movies>) sessionfactory.getCurrentSession().createCriteria(Movies.class).list(); 
	}	
	@Override
	public Movie getMovieById(int movieid)
	{
		Session session=sessionfactory.openSession();
		Movie m1=(Movie) session.load(Movie.class, movieid);
		// TODO Auto-generated method stub
		return m1;
	}	
}