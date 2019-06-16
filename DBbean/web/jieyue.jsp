<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>图书管理系统</title>
    <link href="css/css2.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container"><h2 >借阅记录显示表</h2>

    <div id="links">
        <br>
        <table width="80%" border align="center" >
            <tr>
                <td><b> <center>所有的用户名
                <td><b><center> ID号</center></b> </td>
                <td><b><center> 书名 </center></b> </td>
                <td><b><center> 出版社 </center></b> </td>
                <td><b><center> 价格 </center></b> </td>
                <td>借阅时间</td>
            </tr>

            <% try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("驱动加载成功");
                String url="jdbc:mysql://localhost:3306/longxiao?serverTimezone=GMT";
                String user= "root";
                String pass= "longxiao666";
                Connection con=java.sql.DriverManager.getConnection(url,user,pass);
                System.out.println("连接数据库成功");
                Statement stmt=con.createStatement();
                System.out.println("创建SQL语句");
                ResultSet rst=stmt.executeQuery("select *  from book,orderdata where book.bkid=orderdata.bkid  ;");
                System.out.println("执行SQL语句");
                // String path = request.getContextPath();

                // String basePath = request.getScheme() + "://"  +request.getServerName() + ":" + request.getServerPort() + path;
                // System.out.println(basePath);
                // System.out.println(path);
                while (rst.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rst.getString("userid") + "</td>");
                    out.println("<td>" + rst.getString("bkid") + "</td>");
                    out.println("<td>" + rst.getString("bkname") + "</td>");
                    out.println("<td>" + rst.getString("bkpublisher") + "</td>");
                    out.println("<td>" + rst.getString("bkprice") + "元" + "</td>");
                    out.println("<td>" + "30天" + "</td>");
                    // out.println("<td>" + "<a href=\"" + basePath +"/orderServlet?bkid=" + rst.getString("bkid") + "&userid="+session.getAttribute("username")+ "\">借阅</a>"  + "</td>");
                    out.println("</tr>");
                }
                rst.close();
                stmt.close();
                con.close();
            }catch(Exception e){
                e.printStackTrace();
            }

            %>


        </table>
    </div>
    <div id="footer" style="text-align: right">
        <form action="selectBookAll.jsp" method="post">
            <input type="submit" value="返回">
        </form>
        <form action="index.jsp" method="post">
            <input type="submit" value="退出">
        </form>
    </div>
</div>
</body>
</html>
