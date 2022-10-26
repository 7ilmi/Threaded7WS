<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="customer.js"></script>
    <title>Customers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="site.css" />

</head>
<%--<img style="width: 100%; height: 40vh; position: absolute; top: 0px; left: 0px; z-index: -2; object-fit: cover;" src="css/Images/polynesia.jpg" />--%>

<%--<div style="margin-top: 15vh; margin-bottom: 15vh;" class="text-center">--%>
<%--    <h1 class="display-4 text-light" style="text-shadow: 2px 2px 4px #000000;">Welcome to Travel Experts!</h1>--%>
<%--</div>--%>

<%--<div style="display: flex; justify-content: center">--%>
<body>
    <h4>Customer Details</h4>


<br/>

<br/>
    <select id="customerSelect" onchange="getCustomer(this.value)" multiple>
        <option value="">Select a customer</option>
    </select>
    <form action="editCustomerServlet" method="post">
        Customer Id: <input type="number" id="customerId" name="customerId" disabled="disabled"/><br/>
        First Name: <input type="text" id="custFirstName" name="custFirstName"/><br/>
        Last Name: <input type="text" id="custLastName" name="custLastName"/><br/>
        Address: <input type="text" id="custAddress" name="custAddress"/><br/>
        City: <input type="text" id="custCity" name="custCity"/><br/>
        Province: <input type="text" id="custProv" name="custProv"/><br/>
        Postal: <input type="text" id="custPostal" name="custPostal"/><br/>
        Country: <input type="text" id="custCountry" name="custCountry"/><br/>
        Home Phone: <input type="text" id="custHomePhone" name="custHomePhone"/><br/>
        Business Phone: <input type="text" id="custBusPhone" name="custBusPhone"/><br/>
        Email: <input type="text" id="custEmail" name="custEmail"/><br/>
        AgentId: <input type="number" id="agentId " name="agentId"/><br/>
        <br/>
        <button id="btnUpdate" type="submit" >update</button>
    </form>
<script>


    // $("#btnUpdate").click(function() {
    //     console.log("test")
    //     $.ajax({
    //         url: "http://localhost:8080/JSPFAll2022Day7REST-1.0-SNAPSHOT/api/customer/putcustomer/" ,
    //         method: "PUT",
    //     contentType:'application/json',
    //     putData:{"customerId":104,"custFirstName":"Laetia2","custLastName":"Enison","custAddress":"144-61 87th Ave, NE","custCity":"Edmonton","custProv":"AB","custPostal":"T2J 6B6","custCountry":"Canada","custHomePhone":"4032791223","custBusPhone":"4032557865","custEmail":" ","agentId":4},
    //         config: {
    //             header: {
    //                 "Access-Control-Allow-Origin": "*"
    //             }
    //         },
    //         cache: false,
    //         dataType: "json",
    //         success: function (resultdata) {
    //             console.log("success")
    //             $("#message").html(resultdata.message)
    //         }
    //     });
    //
    //
    // })


</script>
</body>

