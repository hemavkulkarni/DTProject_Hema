package com.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.Model.UserService;
import com.Model.User;
import com.Model.UserDao;

public class UserServiceImpll implements UserService
{
	 @Autowired
	 UserDao userDao;
	public UserServiceImpll()
	{
		// TODO Auto-generated constructor stub
	}

//	@Override
	public List<User> getList() 
	{
		
		return userDao.getList();
	}

	//@Override
	public void addUser(User p) 
	{
		// TODO Auto-generated method stub
		userDao.addUser(p);
	}

	//@Override
	public void updateUser(User p)
	{
		userDao.updateUser(p);
	}

	public void deleteUser(String prodid)
	{
		// TODO Auto-generated method stub
		userDao.deleteUser(prodid);
	}

	public User getUserbyId(String prodid)
	{
		// TODO Auto-generated method stub
		return userDao.getUserbyId(prodid);
	}
}