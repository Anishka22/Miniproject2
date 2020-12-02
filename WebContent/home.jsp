<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>GROCERS</title>
        <link rel="stylesheet" href="style.css"/>

    
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
            <li style="float:right"><a class="fi" href="about.html">ABOUT</a></li>
            <li style="float:right"><a class="fi" href="index.jsp" >LOGIN</a></li>
            <li style="float:right"><a class="fi" href="log2.html" >REGISTER</a></li>

            <div id="backgroundimage"></div>
                
        </nav>
        
    </body>

    

  
    
</html>
