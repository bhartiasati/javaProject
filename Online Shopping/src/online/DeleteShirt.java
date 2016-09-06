package online;





import com.opensymphony.xwork2.ActionSupport;

import java.sql.*;

public class DeleteShirt extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String size;
	
	 
	
	public String getSize() {
		return size;
	}



	public void setSize(String size) {
		this.size = size;
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
			
			
		
			String str="delete from shirts where ll=?";	
		PreparedStatement psst = con.prepareStatement(str);
		psst.setString(1, size);
		
		psst.executeUpdate();
			}catch(Exception e){}
		
	
		return "success";	
	}
}