package Servlet;

import bean.DBbean;
import bean.dengluBean;
import bean.register;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet1")
public class Servlet1 extends HttpServlet {

    public void init(ServletConfig config)throws ServletException{

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("111");
        register register_user = new register();
        dengluBean dl = new dengluBean();
        System.out.println("222");
        register_user.setRegister_id(request.getParameter("id"));
        register_user.setRegister_pass(request.getParameter("pass1"));
        register_user.setRegister_email(request.getParameter("email"));
        System.out.println("Servlet1 register_user = " + register_user );
        System.out.println(register_user.getRegister_id());
        System.out.println(register_user.getRegister_pass());
        System.out.println(register_user.getRegister_email());
        dl.savaUser(register_user);

        request.setAttribute("register_user",register_user);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("registerSucceed.jsp");
        requestDispatcher.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }

    public void destroy(){

    }
}
