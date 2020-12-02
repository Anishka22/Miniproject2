<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>GROCERS</title>
        <link rel="stylesheet" href="style.css"/>

        <style>
            h1{text-align: center
    ;}

 
  figure{
    display: inline-block;
  }
            
            </style>
    </head>
    <body>
    
	<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>
        <h1 style="font-size:30px">GROCERS</h1>
       
        
        <nav class="navigation-bar">
            <img class="logo" src="img/fruits-and-vegetable.png">
            
            <li style="float:right"><a href="Anishka?page=showcart">CART(<c:out value="${x}"/>)</a></li></li>
            <li style="float:right"><a class="fi" href="about.html">ABOUT</a></li>
            <li style="float:right"><a class="fi" href="index.jsp" >LOGIN</a></li>
            <li style="float:right"><a class="fi" href="log2.html" >REGISTER</a></li>
            <li style="float:right"><a class="fi" href="home.jsp" >HOME</a></li>
            
                
        </nav>
        
            
                
        
        <figure>
           
            <img src='img/fruits.jpg'   alt='missing'  width="300" height="300" />
            <figcaption ><a href="Anishka?page=mobiles">FRUITS</a></figcaption>
        </figure>
        <figure>
            
            <img src='vegetables.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=vegie">VEGETABLES</a></figcaption>
        </figure>
        <figure>
           
            <img src='grains.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=gr">GRAINS</a></figcaption>
        </figure>
        <figure>
    
            <img src='voils.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=oil">OILS</a></figcaption>
        </figure>
        <figure>
           
            <img src='masa.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=masala">MASALS</a></figcaption>
        </figure>
        <figure>
           
            <img src='dairy.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=diary">DIARY</a></figcaption>
        </figure>
        <figure>
           
            <img src='bev.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=bev">BEVERAGES</a></figcaption>
        </figure>
        <figure>
            
            <img src='clean.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=cl">CLEANING & HOUSEHOLD</a></figcaption>
        </figure>
        <figure>
            
            <img src='egg.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=eg">EGG,MEAT & FISH</a></figcaption>
        </figure>
        <figure>
            
            <img src='snack.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=choc">SNACKS & BRANDED FOOD</a></figcaption>
        </figure>
        
        <figure>
            
            <img src='baby.jpg' alt='missing' width="300" height="300" />
            <figcaption><a href="Anishka?page=baby">BABY CARE</a></figcaption>
        </figure>
       
        
       

    </body>

    

  
    
</html>
