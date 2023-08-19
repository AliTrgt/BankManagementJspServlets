
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

 #errorMessage {
            color: red;
            font-weight: bold;
        }
    </style>
    <script>
        // Sayfa yüklendiğinde hata mesajını belirli bir süre sonra kaldır
        window.onload = function() {
            setTimeout(function() {
                var errorMessageElement = document.getElementById("errorMessage");
                errorMessageElement.style.display = "none";
            }, 3000); // 4 saniye sonra kaybolacak
        }
    </script>
</head>
<body>
     
    <div class="login-container">
        <h1 class="welcome-text">Login Page</h1>
        <div class="login-form">
           <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text"  name="UserName" placeholder="Text Your Username" required>
            
            <label for="password">Password:</label>
            <input type="password"  name="PassWord" placeholder="Text Your Password" required>
            <% 
        String errorMessage = (String) session.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
        <p id="errorMessage"><%= errorMessage %></p>
    <%
            session.removeAttribute("errorMessage"); // Mesajı bir kez gösterdikten sonra session'dan kaldırın
        }
    %>
    
           
            
            <button type="submit">Login</button>
             </form>
            
            <form action="registerPage.jsp">
            <button type="submit">Register</button>
            </form>
            
           
           
            
       		
        </div>
        
    </div>
    
     	
     	
     
</body>
</html>
