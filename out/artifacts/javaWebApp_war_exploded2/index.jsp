<%--
  Created by IntelliJ IDEA.
  User: hilmi
  Date: 2022-10-24
  Time: 10:03 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Travel Experts JSP Prototype</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="site.css" />
</head>



<img style="width: 100%; height: 40vh; position: absolute; top: 0px; left: 0px; z-index: -2; object-fit: cover;" src="css/Images/polynesia.jpg" />

<div style="margin-top: 15vh; margin-bottom: 15vh;" class="text-center">
    <h1 class="display-4 text-light" style="text-shadow: 2px 2px 4px #000000;">Welcome to Travel Experts!</h1>
</div>

<div style="display: flex; justify-content: center">
    <a asp-controller="Login" href="login.jsp" class="btn btn-success m-4" role="button">Register</a>
    <a asp-controller="Login" href="login.jsp" class="btn btn-secondary m-4" role="button">Login</a>






</div>

<div class="row text-center">
    <div class="col-sm-4">
        <div class="thumbnail">
        <img src="css/Images/asia.jpg" alt="Asia" width="85%" height="300">
            <p><strong>Asian Expedition</strong></p>
            <p>Airfare, Hotel and Eco. Tour</p>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="thumbnail">
            <img src="css/Images/carribean.jpg" alt="Caribbean" width="85%" height="300" >
            <p><strong>Carribean New Year</strong></p>
            <p>Cruise the Carribean and celebrate the New Year!</p>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="thumbnail">
            <img src="css/Images/italy.jpg" alt="Europe" width="85%" height="300" >
            <p><strong>European Vacation</strong></p>
            <p>Euro tour with rail pass and travel insurance</p>
        </div>
    </div>
</div>

</html>
