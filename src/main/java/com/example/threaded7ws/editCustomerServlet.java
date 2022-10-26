package com.example.threaded7ws;

import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet(name = "editCustomerServlet", value = "/editCustomerServlet",
        initParams = {@WebInitParam(name = "dburl", value = "jdbc:mariadb://localhost:3306/travelexperts" ),
                @WebInitParam(name = "dbuser", value = "harv" ),
                @WebInitParam(name = "dbpassword", value = "password" )
        })
public class editCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String custId = request.getParameter("customerId");
        String custFirstName = request.getParameter("custFirstName");
        String custLastName = request.getParameter("custLastName");
        String custAddress = request.getParameter("custAddress");
        String custCity = request.getParameter("custCity");
        String custProv = request.getParameter("custProv");
        String custPostal = request.getParameter("custPostal");
        String custCountry = request.getParameter("custCountry");
        String custHomePhone = request.getParameter("custHomePhone");
        String custBusPhone = request.getParameter("custBusPhone");
        String custEmail = request.getParameter("custEmail");
        String agtId = request.getParameter("agentId");
        //if ids are valid
        if(custId != null && !custId.equals("") && custId.chars().allMatch( Character::isDigit) &&
                (agtId != null && (agtId.equals("") || agtId.chars().allMatch( Character::isDigit)))){

            Customer cust = new Customer(custId, custFirstName, custLastName, custAddress, custCity, custProv,
                    custPostal, custCountry, custHomePhone, custBusPhone, custEmail, agtId);

            URL url = new URL("http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/putcustomer");
            HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
            httpCon.setDoOutput(true);
            httpCon.setRequestMethod("PUT");
            httpCon.setRequestProperty("Content-Type", "application/json");
            OutputStreamWriter out = new OutputStreamWriter(httpCon.getOutputStream());

            Gson gson = new Gson();
            out.write(gson.toJson(cust));
            out.close();

            InputStreamReader in = new InputStreamReader(httpCon.getInputStream());
            System.out.println(in.read());
        }

        response.sendRedirect("customer.jsp");
    }
}
