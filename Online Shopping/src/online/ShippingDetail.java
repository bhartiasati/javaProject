package online;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.opensymphony.xwork2.ActionSupport;

public class ShippingDetail extends ActionSupport{
	String name;
	String address;
	String email;
	int contactno;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getContactno() {
		return contactno;
	}

	public void setContactno(int contactno) {
		this.contactno = contactno;
	}

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



			String sql = "Insert Into  shiiping values (?,?,?,?)";		
			PreparedStatement psst = con.prepareStatement(sql);
			psst.setString(1, name);
			psst.setString(2,address);
			psst.setString(3,email);
			psst.setInt(4,contactno);
			psst.executeUpdate();
		}catch(Exception e){}


		return "success";	
	}
}
