
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<%@ page language="java" import="bean.bookSystemBean" %>
<html>
<head>
    <title>图书管理系统</title>
</head>
<body>
    <%request.setCharacterEncoding("gb2312");%>
    <% String bkid = request.getParameter("bkid");
     String bkname = request.getParameter("bkname");
     String bkpublisher = request.getParameter("bkpublisher");
     String bkprice = request.getParameter("bkprice");

     bookSystemBean bkbean = new bookSystemBean();

     if(bkbean.insertBook(bkid,bkname,bkpublisher,bkprice)){
         out.println("插入成功");
         response.sendRedirect("selectBookAll.jsp");
     }
     else {
         out.println("插入失败");
         response.sendRedirect("insertBook.jsp");
     }

    %>


</body>
</html>
