
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page language="java" import="bean.bookSystemBean" %>
<html>
<head>
    <title>ͼ�����ϵͳ</title>
</head>
<body>
    <%request.setCharacterEncoding("gb2312");%>
    <% String bkid = request.getParameter("bkid");
     String bkname = request.getParameter("bkname");
     String bkpublisher = request.getParameter("bkpublisher");
     String bkprice = request.getParameter("bkprice");

     bookSystemBean bkbean = new bookSystemBean();

     if(bkbean.insertBook(bkid,bkname,bkpublisher,bkprice)){
         out.println("����ɹ�");
         response.sendRedirect("selectBookAll.jsp");
     }
     else {
         out.println("����ʧ��");
         response.sendRedirect("insertBook.jsp");
     }

    %>


</body>
</html>
