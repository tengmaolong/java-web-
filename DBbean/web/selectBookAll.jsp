
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="bean.dengluBean" %>
<%@ page language="java" import="bean.DBbean" %>
<%@page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>图书管理系统</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">

    <style>

        table{
            border: 2px #6395ff;
            background-color: #FFFFFF;
        }

        td,th{

        }

        tr:nth-child(even){
            background-color: #bfa;
        }



    </style>
</head>
<body>




<div id="container"><h2 >管理系统</h2>
    <div id="top" style="text-align: right">
        <table>
            <select name="kind" style="background-color: transparent;border: 0 ;">
                <option  value="kind1">KINd1</option>
                <option  value="kind2">KIND2</option>
            </select>
            <select name="kind" style="background-color: transparent;border: 0">
                <option  value="kind1">KINd1</option>
                <option  value="kind2">KIND2</option>
            </select>
            <select name="kind" style="background-color: transparent;border: 0">
                <option  value="kind1">KINd1</option>
                <option  value="kind2">KIND2</option>
            </select>
            欢迎 <%=(String)session.getAttribute("username")%> 管理员
        </table>


    </div>
    <div id="center">
        <br><br>
        <table  width="90%"  border align="center" >
            <td><b> <center>ID号
                <td><b><center> 书名 </center></b> </td>
                <td><b><center> 出版社 </center></b> </td>
                <td><b><center> 价格 </center></b> </td>
                <td><b><center> 编辑 </center></b> </td>
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
                ResultSet rst=stmt.executeQuery("select * from book;");
                System.out.println("执行SQL语句");
                while (rst.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rst.getString("bkid") + "</td>");
                    out.println("<td>" + rst.getString("bkname") + "</td>");
                    out.println("<td>" + rst.getString("bkpublisher") + "</td>");
                    out.println("<td>" + rst.getString("bkprice") + "元" + "</td>");

                    String edit = "<td><a href=\"editBook.jsp" + "?edit=" + rst.getString("bkid") + "\">" + "edit" + "</a>";
                    //String edit = "<td><a href=\"" + rst.getString("bkid") + "\">" + "edit" + "</a>";
                    //String edit ="<td><input type=\"button\" value=\"" + rst.getString("bkid") +"\" onclick=\"location.href='editBook.jsp'\"></td>";
                    //String edit ="<td><input type=\"button\"  value=\"edit\" onclick=\"tiaozhuan()\"></td>";

                    System.out.println(edit);
                    out.println(edit);
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
    <div id="bottom">
        <table>
            <tr><td>
        <form action="insertBook.jsp" method="post">
            <input type="submit" value="插入图书">
        </form>
            </td>
            <td>
                    <form action="deleteBook.jsp" method="post">
                        <input type="submit" value="删除图书">
                    </form>
            </td>
                <td>
                   <form action="jieyue.jsp" method="post">
                        <input type="submit" value="显示借阅记录">
                    </form>
                </td>
            <td>
                <form action="index.jsp" method="post">
                    <input type="submit" value="退出">
                </form>
            </td>
            </tr></table>
    </div>
</div>
</body>
</html>
