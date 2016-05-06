package com.example;
import java.util.*;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import Model.*;
public class ProductDAO 
{
	public ArrayList<Products> addProducts(String cat)
	{	
		ArrayList<Products> plist=new ArrayList<Products>();
		Products p11=new Products(101,"CURVE TV","VKT55CX0ZSA",10,"Rs. 229,990.00",1);
		Products p12=new Products(102,"Liquid Luminous TV","KX55FH16FAH",17,"Rs. 71,990.00",1);
		Products p13=new Products(103,"Fully Automatic Top Loading","WM VT10C44-SRY",10,"Rs. 33,990.00",2);
		Products p14=new Products(104,"Direct Cool","VZ255USC",10,"Rs. 19,490.00",3);
		
		if(cat.equals("1"))
		{
			plist.add(p11);
			plist.add(p12);
		}
		else if(cat.equals("2"))
		{
			plist.add(p13);		
		}
		else if(cat.equals("3"))
		{
			plist.add(p14);
		}
		else if(cat.equals("all"))
		{
			plist.add(p11);
			plist.add(p12);
			plist.add(p13);
			plist.add(p14);
		}
		return plist;
	}
}