<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.util.*" %>
<%@ page import="bean.dengluBean" %>
<html>
<head>
    <title>ͼ�����ϵͳ</title>
</head>
<body>
<% request.setCharacterEncoding("gb2312");
    String username=request.getParameter("username");
    String userpass=request.getParameter("userpass");
    String identity=request.getParameter("identity");
    out.println(identity);
    if(username == "" || userpass == "" || identity == null) {
        out.print("������˺Ų���Ϊ�գ���");
        response.sendRedirect("index.jsp");
    }
    else
    {
        dengluBean db = new dengluBean ();
        boolean isValib = false;

        System.out.println(isValib);
        if(identity.equals("����Ա")){
            out.println("��֤����Ա");
            isValib = db.valib(username,userpass);
            if(isValib){
                session.setAttribute("username",username);
                response.sendRedirect("selectBookAll.jsp");
            }
            else {
                out.println("����Ա��½ʧ��");
                response.sendRedirect("index.jsp");
            }

        }else if (identity.equals("��ͨ�û�")){
            isValib = db.valib_1(username,userpass);
            if(isValib) {
                out.println("��ͨ�û���½�ɹ�");
                session.setAttribute("username",username);
                response.sendRedirect("userHome.jsp");
            }
            else{
                out.println("��ͨ�û���½ʧ��");
                response.sendRedirect("index.jsp");
            }

        }

    }
%>

</body>
</html>