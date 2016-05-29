package com.Model;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.persistence.*;
import javax.servlet.annotation.MultipartConfig;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name="Movie")
public class Movie
{
	@Id
	@GeneratedValue
	private int movieid;
	@Column(name="MovieName")	
	private String movienm;
	@Column(name="Category")
	private String moviecat1;
	@Column(name="Price")
	private int price;
	@Column(name="Quantity")
	private int qty;
	@Column(name="fpath")
	private String fpath;
	public Movie(){}
	public int getMovieid() {
		return movieid;
	}
	public void setMovieid(int movieid) {
		this.movieid = movieid;
	}
	public String getMovienm() {
		return movienm;
	}
	public void setMovienm(String movienm) {
		this.movienm = movienm;
	}
	public String getMoviecat1() {
		return moviecat1;
	}
	public void setMoviecat1(String moviecat) {
		this.moviecat1 = moviecat;
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
	public String getFpath() {
		return fpath;
	}
	public void setFpath(String fpath) {
		this.fpath = fpath;
	}
	transient private MultipartFile file1;
	public MultipartFile getFile1() 
	{
		return file1;
	}
	public void setFile1(MultipartFile file1)
	{
		this.file1 = file1;
	}
	public String getFilePath(String path1,String contextPath)
	{
		String fileName=null;
		if(!file1.isEmpty())
		{
			try
			{
				fileName=file1.getOriginalFilename();
				 byte[] bytes = file1.getBytes();
				 String npath=path1+"\\resources\\images\\"+fileName;
				 BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File(npath)));
				 buffStream.write(bytes);
	             buffStream.close();
	             String dbfilename=contextPath+"/resources/images/"+fileName;
	             setFpath(dbfilename);
	             return dbfilename;
			}
			catch(Exception e)
			{
				return "You failed to upload "+fileName+" : "+e.getMessage(); 
			}
		}
		else
		{
			return "Unable to upload. File is empty.";
		}
	}
}