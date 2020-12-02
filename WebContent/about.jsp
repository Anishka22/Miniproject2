<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css"/>
    </head>
    <body>
    <c:set var="x" value="0"></c:set>
        <h1 style="font-size:30px">GROCERS </h1>
        
        <nav class="navigation-bar">
            <img class="logo" src="img/fruits-and-vegetable.png">
            <a href="lab2.jsp" >SHOP BY CATEGORY</a>
             <li style="float:right"><a href="Anishka?page=showcart">CART(<c:out value="${x}"/>)</a></li>
            
            <li style="float:right"><a class="fi" href="index.jsp" >LOGIN</a></li>
            <li style="float:right"><a class="fi" href="log2.jsp" >REGISTER</a></li>
            <li style="float:right"><a class="fi" href="home.jsp" >HOME</a></li>
                
        </nav>
        <div class="hi">
            GROCERY SHOP is an Indian online grocery delivery service. It was founded in JUNE 2020 . Customers of the company use a mobile application to order groceries online. Grofers employees then secure the items from their warehouse and deliver the items to the consumer. The delivery may be scheduled for any time of the day.  
            It currently operates in 29 cities namely Delhi, Mumbai, Bangalore, Pune, Jaipur, Chennai, Hyderabad, Kolkata, Lucknow, Aligarh, Agra, Ahmedabad, Gurugram, Noida, Ghaziabad, Kanpur, Faridabad, Meerut, Rohtak, Bhiwadi, Moradabad, Mathura, Sonipat, Guwahati, Panipat, Durgapur, Vadodara, Allahabad, Modinagar
            
            .During the coronavirus pandemic in 2020, Grocery Shop along with Amazon India and Big Basket were among the few online grocery platforms that continued to operate in India.
        </div>
    </body>
</html>
