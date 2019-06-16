
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.bookSystemBean" %>
<html>
<head>
    <title>图书管理系统</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container"><h2>删除图书</h2>
    <div id="top">小标题</div>
    <div id="center">

        <br><br><br><br>
        <form action="deleteSucceed.jsp" method="post">
            <input type="text" name="bkid"> <br><br>
            <input type="submit" value="删除">
        </form>

    </div>
    <div id="bottom" style="text-align: left">
        <form action="selectBookAll.jsp" method="post">
            <input type="submit" value="返回">
        </form>
    </div>
</div>
</body>
</html>
