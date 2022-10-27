<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="customer.js"></script>
    <title>Customers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="site.css" />

</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary navbar-light box-shadow mb-3">
    <div class="container-fluid">
        <img style="width: 100%; height: 40vh; position: absolute; top: 0px; left: 0px; z-index: -2; object-fit: cover;" src="css/Images/polynesia.jpg" />
    </div></nav>

<div style="margin-top: 15vh; margin-bottom: 15vh;" class="text-center">
    <h1 class="display-4 text-light" style="text-shadow: 2px 2px 4px #000000;">Welcome to Travel Experts!</h1>
</div>

<br/><br/>

<div class="container">
    <div class="my-text">
        <h2>Delete Customer</h2>
        <hr>
        <p class="lead">Select a customer to Delete</p>
        <select id="customerSelect" onchange="getCustomer(this.value);">
            <option value="default">Select a customer</option>
        </select>

    </div>
    <br>
    <form style="margin-bottom:20px;" action="deleteCustomerServlet" method="post">
        <div class="row">
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Customer ID</label>
                <input id="customerId" name="customerId" type="number" readonly="readonly"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">First Name</label>
                <input id="custFirstName" class="form-control" type="text" readonly="readonly"/>
            </div>
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Last Name</label>
                <input id="custLastName" class="form-control" type="text" readonly="readonly"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label class="control-label font-weight-bold">Address</label>
                <input id="custAddress" class="form-control" type="text" readonly="readonly"/>
            </div>
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">City</label>
                <input id="custCity" class="form-control" type="text" readonly="readonly"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Province</label>
                <input id="custProv" class="form-control" type="text" readonly="readonly"/>
            </div>
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Postal Code</label>
                <input id="custPostal" class="form-control" type="text" readonly="readonly"/>
            </div>
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Country</label>
                <input id="custCountry" class="form-control" type="text" readonly="readonly"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Home Phone</label>
                <input id="custHomePhone" class="form-control" type="text" readonly="readonly"/>
            </div>
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Business Phone</label>
                <input id="custBusPhone" class="form-control" type="text" readonly="readonly"/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Email</label>
                <input id="custEmail" class="form-control" type="text" readonly="readonly"/>
            </div>
            <div class="col-md-3 mb-3">
                <label class="control-label font-weight-bold">Agent ID</label>
                <input id="agentId" class="form-control" type="number" readonly="readonly"/>


            </div>
            <button type="submit">Delete</button>
        </div>
    </form>
</div>
</body>
</html>

