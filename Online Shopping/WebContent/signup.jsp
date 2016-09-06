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
<td width="300"><a href="login.jsp">SignIn</a></td>
<td width="300"><a href="SignOut.jsp">SignOut</a></td>
</tr>
<tr>
<s:form action="create.action">
<s:textfield name="username" label="UserName"></s:textfield>  
<s:password name="password" label="Password"></s:password>  
<s:submit value="Create Account"></s:submit>  
</s:form> 
</tr>
</table>
</body>
</html>
