package com.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.Model.User;
import com.Model.UserDao;
import com.Model.UserService;

public class UserServiceImpl implements UserService 
{
	 @Autowired
	 UserDao userDao;

	public List<User> getList()
	{
		return userDao.getList();
	}

	public void addUser(User p) 
	{
		userDao.addUser(p);

	}

	public void updateUser(User p) {
		userDao.updateUser(p);

	}

	public void deleteUser(String prodid) {
		userDao.deleteUser(prodid);

	}

	public User getUserbyId(String prodid) {
		return userDao.getUserbyId(prodid);
	}

}
