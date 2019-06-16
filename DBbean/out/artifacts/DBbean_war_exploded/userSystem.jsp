
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>图书管理系统</title>
    <link href="css/css2.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container"><h2 >龙晓图书系统欢迎您</h2>
    <div id="banner">
        尊敬的 <%=(String)session.getAttribute("username") %> 用户，欢迎使用！！！
    </div>
    <div id="content" style="text-align: left">
        <br><br>
        <input type="button" style="background-color: transparent;border: 0;" value="首页" onclick="window.location='userHome.jsp';"><br><br>
        <input type="button" style="background-color: transparent;border: 0;" value="借阅记录" onclick="window.location='userShopping.jsp';"><br><br>
        <input type="button" style="background-color: transparent;border: 0;" value="我的" onclick="window.location='userPerson.jsp';"><br><br>
        <input type="button" style="background-color: transparent;border: 0;" value="客服" onclick="window.location='userService.jsp';">
    </div>
    <div id="links">右边</div>
    <div id="footer" style="text-align: right">
        <form action="index.jsp" method="post">
            <input type="submit" value="退出">
        </form>
    </div>
</div>
</body>
</html>
