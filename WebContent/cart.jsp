<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="style.css">
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
        <c:choose> 
		<c:when test="${x == 1}">
						<h4 style="margin-top: 40px;">My shopping bag(<c:out value="${x}"/> item)</h4>
		</c:when>
		<c:when test="${x > 1}">
						<h4 style="margin-top: 40px;">My shopping bag(<c:out value="${x}"/> items)</h4>
		</c:when>
		<c:otherwise >
				<h4 style="margin-top: 40px;">Your Shopping Bag is Empty</h4>
		</c:otherwise>
	
	</c:choose>
	<table>
		<tr>
			<th>Item Name</th>
			<th>Price</th>
			<th>Category</th>
			<th>Remove Item</th>
		</tr>
	</table>
	
		<c:set var="total" value="0"></c:set>
		<c:forEach items="${cartlist }" var="i">
			<c:forEach items="${list }" var="Product">
				<c:if test="${i == Product.getId() }">
				
				<c:set var="total" value="${total + Product.getPrice() }"></c:set>
				
			<table style="table-layout: fixed;width: 100%;">
				<tr>
					<td style="width: 100px;"><img src="${Product.getImage()}" height="100" width="150" >  (<c:out value="${Product.getName()}"/>)</td>
					<td style="width: 50px;"><c:out value="${Product.getPrice()}"/></td>
					<td style="width: 100px;"><c:out value="${Product.getCategory()}"/></td>
					<td style="width: 100px;"><a href="Anishka?page=remove&id=<c:out value="${Product.getId()}"/>"><span class="btn btn-danger">X</span></a></td>
				</tr>
			</table>
				</c:if>
			</c:forEach>
		</c:forEach>
		<h4 style="margin-top: 40px;margin-bottom: 40px;">Order Total: &#x20b9; (<c:out value="${ total}"></c:out>)</h4>
		<a href="Anishka?page=success"><input type="submit" value="Proceed to Checkout" class="btn btn-success" style="width:100%;padding:8px;font-size:16px;"></a><br>
	
</body></html>
