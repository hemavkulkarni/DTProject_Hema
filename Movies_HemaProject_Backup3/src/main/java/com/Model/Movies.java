package com.Model;
import javax.persistence.*;
@Entity
public class Movies 
{
	@Id
	@GeneratedValue
	private int movieid;

	@Column(name="Moviename")
	private String movienm;
	@Column(name="MovieCategory")
	private String moviecat;		
	@Column(name="TicketPrice")	
	private int price;
	@Column(name="Quantity")
	private int qty;
	
	
	public int getMovieid() {
		return movieid;
	}
	public void setMovieid(int movieid) {
		this.movieid = movieid;
	}
	public String getMoviecat() {
		return moviecat;
	}
	public void setMoviecat(String moviecat) {
		this.moviecat = moviecat;
	}
	public String getMovienm() {
		return movienm;
	}
	public void setMovienm(String movienm) {
		this.movienm = movienm;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
}