package myPackage;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			HttpSession session = request.getSession();
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");	
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels","root","1234");

			String username = request.getParameter("UserName");
			String password = request.getParameter("PassWord");
			PreparedStatement statement =  connection.prepareStatement("Select username,password from login Where userName = ? and password = ?");
			statement.setString(1, username);
			statement.setString(2,password);
			ResultSet resultSet = statement.executeQuery();
			session.setAttribute("newUsername", username);
			
			 if(resultSet.next()) {
            
				RequestDispatcher rd = request.getRequestDispatcher("loginSucceed.jsp");
				rd.forward(request, response);
				
			}else {
				
				session.setAttribute("errorMessage","Invalid Username or Password. Please try again");
				response.sendRedirect("loginPage.jsp");
				
				
			}
			
			
				
				
				
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
