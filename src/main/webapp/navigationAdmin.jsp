
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">

  <title>Travel Experts</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="site.css" />
  <header>
   <nav class="navbar navbar-expand-lg bg-primary navbar-light box-shadow mb-3">
<%--      <div class="container-fluid">--%>



        <div class="navbar-collapse collapse d-md-inline-flex justify-content-center">
          <ul class="navbar-nav flex-grow-1 justify-content-center">

            <li class="nav-item offset-1">
              <a asp-controller="Login" href="customer.jsp" class="btn btn-primary m-4" role="button">View Customer</a>
                <a asp-controller="Login" href="customer.jsp" class="btn btn-primary m-4" role="button">Edit Customer</a>
                <a asp-controller="Login" href="addCustomer.jsp" class="btn btn-primary m-4" role="button">Add Customer</a>
              <a asp-controller="Login" href="deleteCustomer.jsp" class="btn btn-primary m-4" role="button">Delete Customer</a>




        </div>
      </div>
    </nav>

  </header>
</head>
