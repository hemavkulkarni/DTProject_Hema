package com.Model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class User_Authorization
{
	@Id
	@Column
	private String user_role_id;
	/*@Column
	private String user_id;*/
	@Column
	private String role;
	@OneToOne @JoinColumn(name="userId")
	private User user;
 

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUser_role_id() {
		return user_role_id;
	}

	public void setUser_role_id(String user_role_id) {
		this.user_role_id = user_role_id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public User_Authorization() {
		// TODO Auto-generated constructor stub
	}
}