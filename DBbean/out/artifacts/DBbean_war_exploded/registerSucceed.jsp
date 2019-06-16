
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.dengluBean" %>
<html>
<head>
    <title>图书管理系统</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container"><h2 >注册成功</h2>
    <div id="top">小标题</div>
    <div id="center">
        <br><br>

        尊敬的${register_user.register_id} 用户，您已注册成功！<br>
        <form action="index.jsp" method="post">
            <input type="submit" value="去登陆">
        </form>
    </div>
    <div id="bottom">底部</div>
</div>
</body>
</html>
