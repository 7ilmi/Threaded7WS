<%--
  Created by IntelliJ IDEA.
  User: hilmi
  Date: 2022-10-24
  Time: 10:03 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
      <%
        if (session.isNew() || session.getAttribute("logged_in") == null
                || session.getAttribute("logged_in").equals(false))
        {
          response.sendRedirect("login.jsp");
        }//if
      %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="site.css" />

<img style="width: 100%; height: 40vh; position: absolute; top: 0px; left: 0px; z-index: -2; object-fit: cover;" src="css/Images/polynesia.jpg" />

<div style="margin-top: 15vh; margin-bottom: 15vh;" class="text-center">
    <h1 class="display-4 text-light" style="text-shadow: 2px 2px 4px #000000;">Welcome to Travel Experts!</h1>
</div>

</head>

<body>
<br/>
<h5>select an option </h5>

<br/>
    <jsp:include page="navigationAdmin.jsp" />
<br/>
<br/>
</body>
</html>


