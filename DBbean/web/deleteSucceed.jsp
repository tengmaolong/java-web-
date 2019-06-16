<%--
  Created by IntelliJ IDEA.
  User: 14350
  Date: 2019/5/27
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.bookSystemBean" %>
<html>
<head>
    <title>图书管理系统</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body>

    <div id="container"><h2 >删除</h2>
        <div id="top">小标题</div>
        <div id="center">

            <% request.setCharacterEncoding("gb2312");
                String bkid = request.getParameter("bkid");

                bookSystemBean bkdb = new bookSystemBean();
                if(bkdb.selectBook(bkid)){
                    out.println("已删除ID号为 "+bkid+" 的图书");
                }
                else {
                    out.println("ID号为 " + bkid + " 的图书不存在，无法删除");
                }
            %>

            <form action="selectBookAll.jsp" method="post">
                <input type="submit" value="返回">
            </form>




        </div>
        <div id="bottom">底部</div>
    </div>
</body>
</html>
