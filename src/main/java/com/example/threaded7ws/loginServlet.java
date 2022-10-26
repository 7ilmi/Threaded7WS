package com.example.threaded7ws;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "loginServlet", value = "/loginServlet",
        initParams = {@WebInitParam(name = "dburl", value = "jdbc:mariadb://localhost:3306/travelexperts" ),
                @WebInitParam(name = "dbuser", value = "harv" ),
                @WebInitParam(name = "dbpassword", value = "password" )
        })
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);

        String userid = request.getParameter("userid");
        String dbuserid = getInitParameter("dbuser");
        String dbpassword = getInitParameter("dbpassword");
        String password = request.getParameter("password");
        String dburl = getServletContext().getInitParameter("dburl");



        if (userid == null || password == null || userid.equals("") || password.equals(""))
        {
            session.setAttribute("message", "User Name and Password cannot be blank");
            response.sendRedirect("login.jsp");
        }
        else
        {
            try {
                Connection conn = DriverManager.getConnection(
                        "jdbc:mariadb://localhost:3306/travelexperts", "root","password");
                String sql = "select agtpassword from agents where agtuserid=?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, userid);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()){
                    if (password.equals(rs.getString(1)))
                    {
                        session.setAttribute("logged_in", true);
                        response.sendRedirect("secret.jsp");
                    }
                    else
                    {
                        session.setAttribute("message", "User Name or Password are not valid.");
                        response.sendRedirect("login");
                    }
                }
                else
                {
                    session.setAttribute("message", "User Name or Password are not valid.");
                    response.sendRedirect("login");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
