//to retrieve the JSON file and assign the individual customer values to the associated fields///
//used on the customer.jsp//
//param is the customer id, passed from the select box//
function getCustomer(custId)
{
    $.get(
        "http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/getcustomer/"+custId,
        function (data)
        {
            $("#customerId").val(data.customerId);
            $("#custFirstName").val(data.custFirstName);
            $("#custLastName").val(data.custLastName);
            $("#custAddress").val(data.custAddress);
            $("#custCity").val(data.custCity);
            $("#custProv").val(data.custProv);
            $("#custPostal").val(data.custPostal);
            $("#custCountry").val(data.custCountry);
            $("#custHomePhone").val(data.custHomePhone);
            $("#custBusPhone").val(data.custBusPhone);
            $("#custEmail").val(data.custEmail);
            $("#agentId").val(data.agentId);
            console.log(data.agentId);
        }
    )
}
//to retrieve the JSON file and assign all customer values to the multi select box///
//used on the customer.jsp//
//passes the param value to the getCustomer selection//
$(function(){
    $.get(
        "http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/getallcustomers",
        function(data)
        {
            for(i=0; i <data.length; i++)
            {
                $("#customerSelect").append("<option value='"+data[i].customerId + "'>"
                    + data[i].customerId +" "
                    + data[i].custFirstName +" "
                    + data[i].custLastName +
                    "</option>");
            }
        },
        "json"
    );
});
//to retrieve the JSON file and assign all customer values to a table///
//used on the customer.jsp//
//does not pass any param//
$(function(){
    $.get(
        "http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/getallcustomers",
        function(data)
        {
            for(i=0; i <data.length; i++)
            {
                $("#customerstable").append("<li value='"+ data[i].customerId + "'>"
                    + data[i].customerId + " "
                    + data[i].custFirstName + " "
                    + data[i].custLastName + " "
                    + data[i].custAddress + " "
                    + data[i].custCity + " "
                    + data[i].custProv + " "
                    + data[i].custPostal + " "
                    + data[i].custCountry + " "
                    + data[i].custHomePhone + " "
                    + data[i].custBusPhone + " "
                    + data[i].custEmal + " "
                    + data[i].agentId + " "
                    +"</li>");
            }
        },
        "json"
    );
});

//to permanently delete the customer///
//used on the customer.jsp - <button id="btnDelete" type="button">Delete Customer</button>//
//does not pass any param//
$("#btnDelete").click(function(){
    $.ajax({
        url:"http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/deletecustomer/"
            + $("#customerId").val(),
        method:"DELETE",
        config: {
            header: {
                "Access-Control-Allow-Origin": "*"
            }
        },
        cache:false,
        dataType:"json",
        success: function(resultdata){$("#message").html(resultdata.message)}
    });
});

//retrieves customer count - sends to <p id="customerCount"></p> //
$(function(){
    $.get(
        "http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/getallcustomers",
        function(data)
        {
            $("#customerCount").text("Total Customers: " + data.length);

        },
        "json"
    );
});