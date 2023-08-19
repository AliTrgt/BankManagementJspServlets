<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
    body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

.login-container {
    width: 400px;
    margin: 100px auto;
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.welcome-text {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

.login-form label {
    display: block;
    margin-bottom: 8px;
    color: #555;
}

.login-form input[type="text"],
.login-form input[type="password"] {
    width: 95%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.login-form button {
    margin-bottom: 20px;
    width: 100%;
    padding: 10px;
    background: #007BFF;
    border: none;
    color: #fff;
    cursor: pointer;
    border-radius: 3px;
    
}

.signup-link {
    text-align: center;
    margin-top: 10px;
    color: #555;
    cursor: pointer;
}
    
    
    
    
    
    </style>
</head>
<body>
     
    <div class="login-container">
        <h1 class="welcome-text">Register Page</h1>
        <div class="login-form">
           <form action="RegisterServlet" method="post">
            <label for="name">Name:</label>
            <input type="text"  name="txtName" placeholder="Text Your Name" required>
             
             <label for="surname">Surname:</label>
            <input type="text"  name="txtSurname" placeholder="Text Your Surname" required>
            
            
            <label for="username">Username:</label>
            <input type="text"  name="txtusername" placeholder="Text Your Username" required>
            
            <label for="password">Password:</label>
            <input type="password"  name="txtpassword" placeholder="Text Your Password" required>
            
             <label for="email">Email:</label>
            <input type="text"  name="txtemail" placeholder="Text Your Email" required>
            
            
              
           	    <button type="submit">Register</button>
            </form>
      		
			
        </div>
        
    	</div>
 
   
     
</body>
</html>
