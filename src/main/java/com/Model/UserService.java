package com.Model;
import java.util.List;
import com.Model.*;

public interface UserService {
	public List<User> getList();
	public void addUser(User p);
	public void updateUser(User p);
	public void deleteUser(String prodid);
	public User getUserbyId(String prodid);
}