<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="Project.DB" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Project.Product" %>
<%@ page import ="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css"/>
<title>Insert title here</title>
<style>
img .hr{
align:center;}
</style>

</head>
<body>
<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>
	<h1 style="font-size:30px">GROCERS </h1>
        
        <nav class="navigation-bar">
            <img class="logo" src="img/fruits-and-vegetable.png">
            <a href="lab2.jsp" >SHOP BY CATEGORY</a>
             <li style="float:right"><a href="Anishka?page=showcart">CART(<c:out value="${x}"/>)</a></li>
            <li style="float:right"><a class="fi" href="about.jsp">ABOUT</a></li>
            <li style="float:right"><a class="fi" href="index.jsp" >LOGIN</a></li>
            <li style="float:right"><a class="fi" href="log2.jsp" >REGISTER</a></li>
            <li style="float:right"><a class="fi" href="home.jsp" >HOME</a></li>
                
        </nav>
        
        <h4>Thank you for Shopping with us. We received your order and it will be delivered to you with in 4-5 working days.</h4>
					<h4>Confirmation mail will be sent shortly to your email</h4><br>
		<a href="Anishka?page=home"><input type="button" value="Continue Shopping" class="btn btn-warning" style="width:100%;padding:8px;font-size:16px;"></a>			
	</body></html>				