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
<hr>
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
<hr>
<tr><td width="300"><a href="men.jsp">Men</a></td>
<td width="300"><a href="women.jsp">Women</a></td>
<td width="300"><a href="child.jsp">Children</a></td>
</tr>
<tr><td>
<s:property value="size"/>
<s:property value="color"/>
</td>

<s:radio name="type" label="select payment type" list="{'<a href=https://www.onlinesbi.com/>SBI</a>','<a href=icici>ICICI</a>','<a href=allahabad>Allahabad</a>'}"/>


</tr>
</table>

</body>
</html>
