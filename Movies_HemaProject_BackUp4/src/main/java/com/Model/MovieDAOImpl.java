package com.Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
@Repository("MovieDAO")
public class MovieDAOImpl implements MoviesDAO 
{
	@Autowired
	public SessionFactory sessionfactory;
	@Transactional
	public void addMovie(Movies m1)
	{
		System.out.println("inside add movie");
		Session sess=sessionfactory.openSession();
		
		Transaction trans=sess.beginTransaction();
		sess.save(m1);
		System.out.println("Inserted Successfully");
		trans.commit();
		sess.close();
		//sessionfactory.getCurrentSession().saveOrUpdate(m1);			
	}
	@Transactional
	public void deleteMovie(Movies m1)
	{
		/*Session sess=sessionfactory.getCurrentSession();
		 */
		sessionfactory.getCurrentSession().createQuery("DELETE FROM MOVIES WHERE movieid="+m1.getMovieid()).executeUpdate();	 
	}
}