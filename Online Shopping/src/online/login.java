package online;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;



import com.opensymphony.xwork2.ActionSupport;


public class login extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}


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
			Statement stmt=con.createStatement();  
			  
			//step4 execute query  
			ResultSet rs=stmt.executeQuery("select * from customer");  
			while(rs.next()) { 
			//System.out.println(rs.getString(1)+"  "+rs.getString(2));  
				if(username.equals(rs.getString(1))&password.equals(rs.getString(2))){
					
					return "success";
				}
			}
		
		
			System.out.println("here we close connection");
			//step5 close the connection object  
			con.close();  
			  
			}catch(Exception e){ System.out.println(e);}  
			  
		
			return	"error";
		
	}
}
