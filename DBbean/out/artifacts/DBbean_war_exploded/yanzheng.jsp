<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.util.*" %>
<%@ page import="bean.dengluBean" %>
<html>
<head>
    <title>图书管理系统</title>
</head>
<body>
<% request.setCharacterEncoding("gb2312");
    String username=request.getParameter("username");
    String userpass=request.getParameter("userpass");
    String identity=request.getParameter("identity");
    out.println(identity);
    if(username == "" || userpass == "" || identity == null) {
        out.print("密码或账号不能为空！！");
        response.sendRedirect("index.jsp");
    }
    else
    {
        dengluBean db = new dengluBean ();
        boolean isValib = false;

        System.out.println(isValib);
        if(identity.equals("管理员")){
            out.println("验证管理员");
            isValib = db.valib(username,userpass);
            if(isValib){
                session.setAttribute("username",username);
                response.sendRedirect("selectBookAll.jsp");
            }
            else {
                out.println("管理员登陆失败");
                response.sendRedirect("index.jsp");
            }

        }else if (identity.equals("普通用户")){
            isValib = db.valib_1(username,userpass);
            if(isValib) {
                out.println("普通用户登陆成功");
                session.setAttribute("username",username);
                response.sendRedirect("userHome.jsp");
            }
            else{
                out.println("普通用户登陆失败");
                response.sendRedirect("index.jsp");
            }

        }

    }
%>

</body>
</html>