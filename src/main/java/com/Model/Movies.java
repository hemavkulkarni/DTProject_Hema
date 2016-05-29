package com.Model;
import java.io.*;
import java.io.BufferedOutputStream;
import javax.persistence.*;
import org.springframework.web.multipart.MultipartFile;
@Entity
//@Table(name="Movies")
public class Movies
{
	@Id
	@GeneratedValue
	private int movieid;

	@Column(name="Moviename")
	private String movienm;
	@Column(name="MovieCategory")
	private String moviecat1;		
	@Column(name="TicketPrice")	
	private int price;
	@Column(name="Quantity")
	private int qty;	
	@Column
	private String fpath;
	
	public String getMoviecat1() {
		return moviecat1;
	}
	public void setMoviecat1(String moviecat1) {
		this.moviecat1 = moviecat1;
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
	public String getFpath() {
		return fpath;
	}
	public void setFpath(String fpath) {
		this.fpath = fpath;
	}
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