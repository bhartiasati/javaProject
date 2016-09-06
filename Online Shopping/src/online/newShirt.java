package online;


import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;

import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.bcel.internal.generic.RETURN;

public class newShirt extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String ll;
	String color;
	int prize;
	int discount;
	
	

public String getLl() {
		return ll;
	}
	public void setLl(String ll) {
		this.ll = ll;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getPrize() {
		return prize;
	}
	public void setPrize(int prize) {
		this.prize = prize;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	
	
	static int i=1;
	public String execute(){
		
		try{  
			//step1 load the driver class  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			  System.out.println("driver loaded");
			//step2 create  the connection object  
			Connection con=DriverManager.getConnection(  
			"jdbc:oracle:thin:@localhost:1521:xe","system","tiger");  
			System.out.println("connection established");
			//step3 create the statement object  
			 Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
			  
			//step4 execute query  
			ResultSet rs=stmt.executeQuery("select * from shirts");  
			
			  rs.absolute(i);{
			//rs.next(); 
				setLl(rs.getString(1));
				setColor(rs.getString(2)); 
				setPrize(rs.getInt(3)); 
				setDiscount(rs.getInt(4)); 
				i++;
			  }
			
			
			System.out.println("here we close connection");
			//step5 close the connection object  
			con.close();  
			  
			}catch(Exception e){ System.out.println(e);}  
		    return "success";
			}  
	
		
	}
