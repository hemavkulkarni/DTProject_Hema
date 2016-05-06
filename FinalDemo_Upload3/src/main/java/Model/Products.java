package Model;
public class Products 
{
	private int prodid;
	private String prodnm;
	private String modelno;  
	private int qty;
	private String price;
	private int category;
	public Products(int prodid,String prodnm,String modelno,int qty,String price,int category)
	{
		this.prodid=prodid;
		this.prodnm=prodnm;
		this.modelno=modelno;
		this.qty=qty;
		this.price=price;		
		this.category=category;
	}
	public int getCategory()
	{
		return category;
	}
	public int getProdID()
	{
		return prodid;
	}
	public String getProdName()
	{
		return prodnm;
	}
	public String getmodelno()
	{
		return modelno;
	}
	public int getQuantity()
	{
		return qty;
	}
	public String getPrice()
	{
		return price;
	}
	public void setProductID(int prodid)
	{
		this.prodid=prodid;
	}
	public void setProductName(String prodnm)
	{
		this.prodnm=prodnm;
	}
	public void setmodelno(String modelno)
	{
		this.modelno=modelno;
	}
	public void setPrice(String price)
	{
		this.price=price;
	}
	public void getQuantity(int qty)
	{
		this.qty=qty;
	}	
	public void getCategory(int category)
	{
		this.category=category;
	}	
}