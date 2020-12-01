
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

<%
ArrayList<Product> list = new ArrayList<>();
DB db = new DB();

try {
	list = db.fetch();
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
request.setAttribute("list", list);
 %>
 <h1 style="font-size:30px">GROCERS </h1>
        
        <nav class="navigation-bar">
            <img class="logo" src="fruits-and-vegetable.png">
            <a href="lab2.html" >SHOP BY CATEGORY</a>
            
            <li style="float:right"><a class="fi" href="about.html">ABOUT</a></li>
            <li style="float:right"><a class="fi" href="index.jsp" >LOGIN</a></li>
            <li style="float:right"><a class="fi" href="log2.html" >REGISTER</a></li>
            <li style="float:right"><a class="fi" href="home.html" >HOME</a></li>
                
        </nav>
<h2 style="text-align: center;">BABYCARE</h2><br>

<c:forEach items="${list }" var="product">
 						
 						<c:if test="${product.getCategory() == 'baby' }">
 							
		 					
		 					    <figure>
		 						<img id="hr" src="${product.getImage() }"  >
		 						<figcaption><c:out value="${product.getName() }"></c:out></figcaption><br>
		 						<figcaption><p > &#x20b9;  <c:out value="${ product.getPrice() }"></c:out></p></figcaption>
		 						</figure>
		 					
		 					
 							
 						</c:if>
 						
 						
 					</c:forEach> 
</body>
</html>