package myPackage;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        HttpSession session = request.getSession();
	    	response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	       
	       
	        
	       
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        System.out.println("Driver yuklendi");
	        String name = request.getParameter("txtName");
	        String surname = request.getParameter("txtSurname");
	        String username = request.getParameter("txtusername");
	        String password = request.getParameter("txtpassword");
	        String email = request.getParameter("txtemail");
	      
	     
	        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/classicmodels", "root", "1234");
	        System.out.println("Veritabanina baglanildi");
	        
	        String sql = "INSERT INTO login(name,surname,username,password,email,balance) VALUES (?,?,?,?,?,?)";
	        PreparedStatement statement = connection.prepareStatement(sql);
	        statement.setString(1, name);
	        statement.setString(2, surname);
	        statement.setString(3, username);
	        statement.setString(4, password);
	        statement.setString(5,	email);
	        statement.setInt(6, 0);
	        
	   
	   
	        
	        int rowsAffected = statement.executeUpdate();
	        System.out.println(rowsAffected + " satir etkilendi");
	        response.sendRedirect("loginPage.jsp");  //login işlemi bittikten sonra ana sayfaya yollasın diye yazılan kod
	      
	        
	        
	    } catch (ClassNotFoundException | SQLException e) {
	       
	    	
	        e.printStackTrace();
	    }
			
		
	}


}
