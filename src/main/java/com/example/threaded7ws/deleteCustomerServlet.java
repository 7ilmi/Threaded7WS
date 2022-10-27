package com.example.threaded7ws;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@WebServlet(name = "deleteCustomerServlet", value = "/deleteCustomerServlet")
public class deleteCustomerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String custId = request.getParameter("customerId");

        if(custId != null && !custId.equals("") && custId.chars().allMatch( Character::isDigit)){

            URL url = new URL("http://localhost:8080/JSPDay7ResteasyJPACORS-1.0-SNAPSHOT/api/customer/deletecustomer/" + custId);
            HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
            //httpCon.setDoOutput(true);
            httpCon.setRequestMethod("DELETE");
            httpCon.connect();

            InputStreamReader in = new InputStreamReader(httpCon.getInputStream());
        }

        response.sendRedirect("secret.jsp");
    }
}
