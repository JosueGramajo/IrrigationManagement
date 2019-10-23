package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RedirectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String page = req.getParameter("page");

        RequestDispatcher dispatcher;

        switch (page){
            case "index":
                req.setAttribute("state", req.getParameter("state"));
                dispatcher = req.getRequestDispatcher("index.jsp");
                break;
            case "dashboard":
                dispatcher = req.getRequestDispatcher("dashboard.jsp");
                break;
            case "register":
                dispatcher = req.getRequestDispatcher("pages/register.jsp");
                break;
            default:
                dispatcher = req.getRequestDispatcher("index.jsp");
                break;
        }

        dispatcher.forward(req, resp);
    }
}
