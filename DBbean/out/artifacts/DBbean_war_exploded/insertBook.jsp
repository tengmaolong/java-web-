
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>图书管理系统</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container"><h2>插入信息</h2>
    <div id="top">小标题</div>
    <div id="center">


        <script type="text/javascript">
            function checkIP(){
                var bkid_text=document.getElementById("url").value;
                var bkname_text=document.getElementById("ur2").value;
                var bkpublisher_text=document.getElementById("ur3").value;
                var bkprice_text=document.getElementById("ur4").value;
                if(bkid_text==""){
                    alert("ID号不能为空哦！");
                    return false;
                }
                else if(bkname_text==""){
                    alert("书名不能为空哦！");
                    return false;
                }
                else if(bkpublisher_text==""){
                    alert("出版社不能为空哦！");
                    return false;
                }
                else if(bkprice_text==""){
                    alert("价格不能为空哦！");
                    return false;
                }
                return true;
            }
        </script>


        <br><h1 >请填写图书信息</h1>
        <form action="insertSucceed.jsp" method="post" onsubmit="return checkIP();">
            <table align="center" cellspacing="15">
                <tr>
                    <td>I D  号:</td>
                    <td><input type=text id="url" name="bkid"  value=""></td>
                </tr>
                <tr>
                    <td>书   名:</td>
                    <td><input type=text id="ur2" name="bkname" value=""></td>
                </tr>
                <tr>
                    <td>出版社:</td>
                    <td><input type=text id="ur3" name="bkpublisher" value=""></td><br>
                </tr>
                <tr>
                    <td>价   格:</td>
                    <td><input type=text id="ur4" name="bkprice" value=""></td>
                </tr>

            </table>

            <input type=submit value="添加" onclick="return">
        </form>


    </div>
    <div id="bottom">
        <input type="button" value="返回" onclick="javascript:window.location='selectBookAll.jsp';">
    </div>
</div>
</body>
</html>
