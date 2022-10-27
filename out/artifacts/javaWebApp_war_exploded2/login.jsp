<head>
    <title>Travel Experts Prototype Login</title>
</head>
<body>
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
</html>
<form method="get" action="loginServlet">

<%--    User Name: <input type="text" name="userid"  /> <br/>--%>
    <div class="row">
        <div class="col-md-3 mb-3">
            <label class="control-label font-weight-bold">User Name:</label>
            <input type="text" name="userid"    /> <br/>

     <input type="password" name="password" /><br/>
    <button type="submit">LOGIN</button>
</form>
<%

    if (session.getAttribute("message") != null && !session.getAttribute("message").equals(""))
    {
        response.getWriter().println("<h5 style='color:white'>" + session.getAttribute("message") +"</h5>");
        session.setAttribute("message", "");
    }
%>
</body>
