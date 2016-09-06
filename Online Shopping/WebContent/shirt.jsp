<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %> 
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
<tr>
<td width="600">
<td width="300">Welcome <%=request.getParameter("username") %></td>
<td>
<s:form action="signoutservlet" method="post">
<s:submit value="signout">
</s:submit>
|</s:form>
</td>
</tr>
<tr><td width="300"><a href="men.html">Men</a></td>
<td width="300"><a href="women.html">Women</a></td>
<td width="300"><a href="child.html">Children</a></td>
</tr>
<hr>
<tr>
<td width="300">

<ul>
<li>
<s:form action="shirt">
<s:submit value="shirt"/>
</s:form></li>
<li>jeans</li>
<li>Tshirt</li>

</ul>

<h4>prize</h4>
<ul>
<li><a href="below500.jsp">below 500</li>
<li><a href="b500-1000.jsp">between 500 to 1000</</a></li>
<li>1000-1500</li>
<li>1500 to above</li>
</ul>
</td>
<td></td>
</tr>
</table>


</body>
</html>
