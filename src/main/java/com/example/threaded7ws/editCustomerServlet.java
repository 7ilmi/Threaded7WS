package com.example.threaded7ws;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
@WebServlet(name = "editCustomerServlet", value = "/editCustomerServlet",
        initParams = {@WebInitParam(name = "dburl", value = "jdbc:mariadb://localhost:3306/travelexperts" ),
                @WebInitParam(name = "dbuser", value = "harv" ),
                @WebInitParam(name = "dbpassword", value = "password" )
        })
public class editCustomerServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerId = request.getParameter("customerId");
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
        String agentId = request.getParameter("agentId");
        response.sendRedirect(request.getContextPath() + custFirstName);
    }
}
