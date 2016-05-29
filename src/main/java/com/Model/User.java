package com.Model;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class User
{ 
	@Id
	/*@GeneratedValue*/
	 @NotEmpty(message="please enter Userid")
	private String userId;
	 @NotEmpty(message="please enter username")
	 private String username;	 
	 @NotEmpty(message="please enter password")	
	 @Length(min=6,message="please enter password min 6 character")
	private String password;
	 @NotEmpty(message="please enter contact no.")
	private String mobno;
	 @NotEmpty(message="please enter Email ID")
	 @Pattern(regexp=".+@.+\\..+", message="Email Id is not valid!")
	private String email;
	 @NotEmpty(message="please enter address")
	private String address;
	 @NotEmpty(message="please enter City")
	private String city;
	 @NotEmpty(message="please enter country")
	private String country;
	@OneToMany(mappedBy="user")
	Set<User_Authorization>roles;
	
	public User() {}	
	
	public Set<User_Authorization> getRoles() {
		return roles;
	}
	public void setRoles(Set<User_Authorization> roles) {
		this.roles = roles;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password) 
	{
		this.password = password;
	}
	public String getMobno() 
	{
		return mobno;
	}
	public void setMobno(String mobno)
	{
		this.mobno = mobno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city)
	{
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country)
	{
		this.country = country;
	}
}