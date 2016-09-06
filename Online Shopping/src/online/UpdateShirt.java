package online;



import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;

public class UpdateShirt extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String size;
	private String	color;
	private int prize;
	private int discount;
	
	 
	
	public String getSize() {
		return size;
	}



	public void setSize(String size) {
		this.size = size;
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



	@SuppressWarnings("unused")
	public String execute() throws Exception {
		 
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");  
				System.out.println("The Driver is loaded!!!");
			} catch (ClassNotFoundException clse) 
			{
				System.out.println("Not loaded");
				clse.printStackTrace();

			}

			try{
				 Connection con=DriverManager.getConnection(  
							"jdbc:oracle:thin:@localhost:1521:xe","system","tiger");  
			System.out.println("Connected:");
			
			
		
			String str="update shirts set color=? ,prize=?,discount=?where ll=?";	
		PreparedStatement psst = con.prepareStatement(str);
		psst.setString(1, color);
		psst.setInt(2,prize);
		psst.setInt(3,discount);
		psst.setString(4,size);
		psst.executeUpdate();
			}catch(Exception e){}
		
	
		return "success";	
	}
}