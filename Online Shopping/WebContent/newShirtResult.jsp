<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %> 
   <%@ taglib uri=  "http://java.sun.com/jstl/core" prefix="c"%>
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
<tr>
<td width="600">
<td width="300">Welcome <s:property value="username"/></td>
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
shirt
<li>jeans</li>
<li>Tshirt</li>

</ul>

<h4>prize</h4>
<ul>
<li><a href="below500.jsp">below 500</a></li>
<li>500-1000</li>
<li>1000-1500</li>
<li>1500 to above</li>
</ul>
</td>
<td>
Size is:<s:property value="ll"/><br>
color is:<s:property value="color"/><br>
Prize is:<s:property value="prize"/><br>
Discount is:<s:property value="discount"/><br>
<%session.setAttribute("size",request.getParameter("ll")); %>

</td>
<td>
<s:form action="newnext.action">
<s:submit value="nextShirt"/>
</s:form>
  </td>
<td>
<a href="shippingdetail.jsp">buy</a>
  </td>
</tr>/
</table>


</body>
</html>
