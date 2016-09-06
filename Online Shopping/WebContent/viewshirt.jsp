<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %> 
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<table>
<tr>
<h1>
Welcome to Online Shopping
</h1>
</tr>
<tr>
<td width="300"><a href="homeus.html">HomeUs</a></td>
<td width="300"><a href="contactus.html">ContactUs</a></td>
<td width="300"><a href="aboutus.html">AboutUs</a></td>
</tr>
<hr>
<tr>
<td width="600">
<td width="300">Welcome <s:property value="username"/></td>
<td><s:form action="signoutservlet" method="post">
<s:submit value="signout">
</s:submit>
|</s:form></td>
</tr>
<hr>
<tr><td width="300"><a href="men.jsp">Men</a></td>
<td width="300"><a href="women.jsp">Women</a></td>
<td width="300"><a href="child.jsp">Children</a></td>
</tr>
<hr>
<% 
 
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
	ResultSet rs=stmt.executeQuery("select * from shirts");  
	//step5 close the connection object  


%><tr><td>
<TABLE BORDER="1">
            <TR>
                <TH>Size</TH>
                <TH>Color</TH>
                <TH>Prize</TH>
                <TH>Discount</TH>
               
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getInt(3) %></TD>
                <TD> <%= rs.getInt(4) %></TD>
            
            </TR>
            <% } %>
          
        </TABLE>
        </td>
        <td width="300"><a href="insertshirt.jsp">Insert New Shirt</a></td>
<td width="300"><a href="updateshirt.jsp">Update Shirt</a></td>
<td width="300"><a href="deleteshirt.jsp">Delete Shirt</a></td>
        </tr>
</table>
<script>

</script>
</body>
</html>
