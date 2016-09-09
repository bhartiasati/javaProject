<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
	<table>
		<tr>
			<h1>Welcome to Online Shopping</h1>
		</tr>
		<tr>
			<td width="300"><a href="homeus.html">HomeUs</a></td>
			<td width="300"><a href="contactus.html">ContactUs</a></td>
			<td width="300"><a href="aboutus.html">AboutUs</a></td>
		</tr>
		<tr>
			<td width="600">
			<td width="300">Welcome <s:property value="username" /></td>
			<td><s:form action="signoutservlet" method="post">
					<s:submit value="signout">
					</s:submit>
|</s:form></td>
		</tr>
		<tr>
			<td width="300"><a href="men.html">Men</a></td>
			<td width="300"><a href="women.html">Women</a></td>
			<td width="300"><a href="child.html">Children</a></td>
		</tr>
		
		<tr>
			<td width="300">

				<ul>
					<li>shirt
					<li>jeans</li>
					<li>Tshirt</li>

				</ul>

				<h4>prize</h4>
				<ul>
					<li><a href="below10.jsp">below 10%</a></li>
					<li>500-1000</li>
					<li>1000-1500</li>
					<li>1500 to above</li>
				</ul>
			</td>
			<td>
				<%
					//step1 load the driver class  
					Class.forName("oracle.jdbc.driver.OracleDriver");  
					  System.out.println("driver loaded");
					//step2 create  the connection object  
					Connection con=DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","system","tiger");  
					System.out.println("connection established");
					//step3 create the statement object  
					
					//step4 execute query  
					 Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
					//step5 close the connection object  

		 		 int i=1;
				ResultSet rs=stmt.executeQuery("select * from shirts where prize<500");
				%>
			
		
				
					<%
						rs.absolute(i);i++;{
					%>
					
						<TD>
						<ul>
						<li>size is <%=rs.getString(1)%></li>
						<li>color is<%=rs.getString(2)%></li>
						<li>prize is<%=rs.getInt(3)%></li>
						<li>discount is<%=rs.getInt(4)%></li></ul></TD>
						<% %>
					<%
					
						}
					%>
					
<td><a href="below500.jsp">next</a></td>
</tr>

					
					
					
				
</body>
</html>
