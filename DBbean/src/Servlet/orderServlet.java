package Servlet;

import bean.OrderDAO;
import bean.OrderDAOImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/orderServlet")
public class orderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("这是orderServlet");
        String bkid = request.getParameter("bkid");
        String userid = request.getParameter("userid");
        System.out.println(bkid+userid);
        OrderDAO orderDAO = new OrderDAOImpl();
        orderDAO.savaOrder(bkid,userid);
        request.getRequestDispatcher("userShopping.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
