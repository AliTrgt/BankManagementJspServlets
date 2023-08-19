package myPackage;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private Operations operations;
    

    @Override
    public void init() throws ServletException {
        
       
        operations = new Operations();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int amount = Integer.parseInt(request.getParameter("amount"));
        String btnoperation = request.getParameter("btnoperation");

        if ("deposit".equals(btnoperation)) {
            operations.depositMoney(amount);
        }

        if ("withdraw".equals(btnoperation)) {
            if (operations.getBalance() >= amount) {
                int withdrawResult = operations.withdrawMoney(amount);
                if (withdrawResult >= 0) {
                    // Çekme işlemi başarılı
                } else {
                    session.setAttribute("message", "Çekme İşlemi Başarısız");
                }
            } else {
                session.setAttribute("message", "You don't have enough money");
            }
        }

      

        session.setAttribute("newBalance", operations.balance);
        response.sendRedirect("loginSucceed.jsp");
    }
}
