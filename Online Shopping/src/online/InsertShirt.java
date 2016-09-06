package online;



import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;

public class InsertShirt extends ActionSupport{
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
			
			
		
		String sql = "Insert Into shirts values(?,?,?,?)";		
		PreparedStatement psst = con.prepareStatement(sql);
		psst.setString(1, size);
		psst.setString(2,color);
		psst.setInt(3,prize);
		psst.setInt(4,discount);
		psst.executeUpdate();
			}catch(Exception e){}
		
	
		return "success";	
	}
}