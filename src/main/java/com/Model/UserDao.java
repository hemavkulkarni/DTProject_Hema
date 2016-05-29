package com.Model;
import java.util.List;
import com.Model.User;
public interface UserDao 
{
	public List<User> getList();
	public void addUser(User p);
	public void updateUser(User p);
	public void deleteUser(String userid);
	public User getUserbyId(String userid); 
}