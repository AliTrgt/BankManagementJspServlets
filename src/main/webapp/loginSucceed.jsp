<%@page import="myPackage.User"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="myPackage.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Panel</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .center-div {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        @media (min-width: 100px) {
            .center-div {
                height: auto;
            }
            .btn-md-full {
                width: 100%;
            }
              .btn-sm-full {
                width: 100%;
               
            }
            
        }
          
         
           
    </style>
    <script>
    // Hata mesajını belirli bir süre sonra gizle
    window.onload = function() {
        setTimeout(function() {
            var message = document.getElementById("message");
            message.style.display = "none";
        }, 3000); // 3 saniye
    }
</script>

</head>
<body>

	
   <%
   
int newBalance = session.getAttribute("newBalance") != null ? (int) session.getAttribute("newBalance") : 0;
  
// Uyarı mesajı null ise boş bir dize olarak ayarla
	String message = session.getAttribute("newUsername") != null ? (String) session.getAttribute("newUsername") : "";
	
	User user = new User();
   

%>		



  

   
    <div class="container mt-5">
        <h1 class="text-center"> <%=session.getAttribute("newUsername") %> User </h1>
        <form action = "UserServlet" method="post">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Account Balance
                    </div>
                     
                    <div class="card-body">
                        <p>Your Balance: <%= newBalance %></p>
                        
                    </div>
                </div>
                <div class="card mt-3">
                    <div class="card-header">
                        Transaction
                    </div>
                    <div class="card-body">
                      
                            <div class="form-group">
                                <label for="amount">Amount:</label>
                                <input type="number" class="form-control" id="amount" name="amount" required>
                                
                            </div>
                        <div class="container">
        <div class="row center-div">
            <div class="col-12 mb-3">
                <button type="submit" class="btn btn-success btn-sm-full" id="depositBtn" name="btnoperation" value="deposit">Deposit</button>
            </div>
        </div>
        <div class="row center-div">
            <div class="col-12 mb-3">
                <button type="submit" class="btn btn-danger btn-sm-full" id="withdrawBtn" name="btnoperation" value="withdraw">Withdraw</button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center custom-mt"> 
                <a href="loginPage.jsp" class="btn btn-info btn-block" role="button">Back to the Login Page</a>
            </div>
        </div>
    </div>

             
             
             

                    </div>
                    
                </div>
               <% if (session.getAttribute("message") != null) { %>
    <p id="message" style="font-size: 18px; color:Red; text-align:center"><%= session.getAttribute("message") %></p>
    <%
    session.removeAttribute("message");
    } %>


              
            </div>
            
        </div>
        </form>
    </div>
   
    <!-- Bootstrap JS ve jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    
   	
</body>
</html>
