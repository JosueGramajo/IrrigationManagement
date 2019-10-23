package servlets.user;

import dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("txtEmail");
        String password = req.getParameter("password");
        String name = req.getParameter("txtName");
        String lastname = req.getParameter("txtLastName");

        UserDAO.INSTANCE.createUser(email, password, name, lastname);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/redirect?page=index&state=user-created");

        dispatcher.forward(req, resp);
    }
}
