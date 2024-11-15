package Loginn;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlets extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Hardcoded username and password
        
        if ("ourgym".equals(username) && "arpitji".equals(password)) {
            // Redirect to home page
            response.sendRedirect("Home.jsp");
        } else {
            // Set error message and forward to the login page
            request.setAttribute("errorMessage", "Wrong username or password!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }
    }
}


