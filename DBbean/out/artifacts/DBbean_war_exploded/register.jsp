
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>表单</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body style="text-align:center;">
<script type="text/javascript">
    function checkIP(){
        var id_text=document.getElementById("url").value;
        var pass1_text=document.getElementById("ur2").value;
        var pass2_text=document.getElementById("ur3").value;
        var email_text=document.getElementById("ur4").value;
        if(id_text==""){
            alert("手机号不能为空哦！");
            return false;
        }
        else if(pass1_text==""){
            alert("密码不能为空哦！");
            return false;
        }
        else if(pass2_text==""){
            alert("密码不能为空哦！");
            return false;
        }
        else if(email_text==""){
            alert("E-mail不能为空哦！");
            return false;
        }
        else if (id_text.length > 11){
            alert("请输入正确的11位手机号！！！")
            return  false;
        }
        else  if(pass1_text.length>16 || pass2_text.length>16){
            alert("密码不能超过16位哦！！！")
        }
        else if (pass2_text != pass1_text) {
            alert("两次密码不一致哦！！！")
            return false;
        }
        return true;
    }
</script>



<div id="container"><h2 >注册信息</h2>
    <div id="top">小标题</div>
    <div id="center">
        <br><br>
        <form action="Servlet1" method="post" onsubmit="return checkIP();">
            <table align="center" cellspacing="15">
                <tr>
                <td>手机号:</td>
                <td><input type=text id="url" name="id"  value=""></td>
                </tr>
                <tr>
                <td>密码:</td>
                <td><input type="password" id="ur2" name="pass1" value=""></td>
                </tr>
                <tr>
                <td>确认密码:</td>
                <td><input type="password" id="ur3" name="pass2" value=""></td><br>
                </tr>
                <tr>
                <td>E-mail:</td>
                <td><input type=text id="ur4" name="email" value=""></td>
                </tr>

            </table>
            <input type=submit value="注册">
        </form>
    </div>
    <div id="bottom">
        <input type="button" value="返回" onclick="window.location='index.jsp';">
    </div>
</div>

</body>
</html>