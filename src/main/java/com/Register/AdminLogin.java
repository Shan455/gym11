package com.Register;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogin {

	@WebServlet("/Login")
	public class login extends HttpServlet {
		private static final long serialVersionUID=1L;
			
		private static final String FIXED_USERNAME = "admin";
	    private static final String FIXED_PASSWORD = "password";
				protected void dopost(HttpServletRequest request , HttpServletResponse response) throws ServletException , IOException
				{
			String username= request.getParameter("username");
			String Password = request.getParameter("password");
			HttpSession session= request.getSession();
			 RequestDispatcher dispatcher = null;
			
			 if (FIXED_USERNAME.equals(username) && FIXED_PASSWORD.equals(Password)) {
		            // Successful login, open the HTML file
		            String htmlFilePath = Paths.get("src/main/webapp/NewFile.html").toUri().toString();
		            try {
		                java.awt.Desktop.getDesktop().browse(new URI(htmlFilePath));
		            } catch (URISyntaxException e) {
		                e.printStackTrace();
		            }
		            response.getWriter().println("Login successful! Opening HTML file...");
		        } else {
		            // Unsuccessful login
		            response.getWriter().println("Unsuccessful login");
		        }
		    }
	}
	}

