package online;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
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
			String	username=request.getParameter("username");
			String	password=request.getParameter("password");
				if(username.equals(rs.getString(1))&password.equals(rs.getString(2))){
					HttpSession session=request.getSession();  
			        session.setAttribute("username",username);  
			        PrintWriter out=response.getWriter();
			        out.print("hello");
				RequestDispatcher rd=request.getRequestDispatcher("result.jsp");
				rd.forward(request, response);
				
				}
			}
		
		
			System.out.println("here we close connection");
			//step5 close the connection object  
			con.close();  
			  
			}catch(Exception e){ System.out.println(e);}  
			  
		
			
		
	}

}
