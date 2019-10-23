package servlets;

import dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("txtEmail");
        String password = req.getParameter("txtPassword");

        RequestDispatcher dispatcher;

        if (UserDAO.INSTANCE.doLogin(email, password)){
            dispatcher = req.getRequestDispatcher("/redirect?page=dashboard");
        }else{
            dispatcher = req.getRequestDispatcher("/redirect?page=index&state=incorrect-login");
        }

        dispatcher.forward(req, resp);
    }
}
