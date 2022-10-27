package com.example.threaded7ws;

import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet(name = "addCustomerServlet", value = "/addCustomerServlet")
public class addCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        if((agtId != null && (agtId.equals("") || agtId.chars().allMatch( Character::isDigit)))){

            Customer cust = new Customer(null, custFirstName, custLastName, custAddress, custCity, custProv,
                    custPostal, custCountry, custHomePhone, custBusPhone, custEmail, agtId);

            URL url = new URL("http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/postcustomer");
            HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
            httpCon.setDoOutput(true);
            httpCon.setRequestMethod("POST");
            httpCon.setRequestProperty("Content-Type", "application/json");
            OutputStreamWriter out = new OutputStreamWriter(httpCon.getOutputStream());

            Gson gson = new Gson();
            out.write(gson.toJson(cust));
            out.close();

            InputStreamReader in = new InputStreamReader(httpCon.getInputStream());
        }

        response.sendRedirect("secret.jsp");
    }
}
