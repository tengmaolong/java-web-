
<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.util.*" %>
<html>
<head>
  <title>图书管理系统</title>
  <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body style="text-align: center">

<script type="text/javascript">
  function nnn(){
    var name_text=document.getElementById("url1").value;
    var pass_text=document.getElementById("url2").value;
    var fObj = document.denglu.identity;
    if(name_text.length>11){
      alert("用户名长度不能超过11哦！！！");
      return false;
    }
    else if (pass_text.length>16){
      alert("密码长度不能超过16哦！！！");
      return  false;
    }
    else if (name_text=="") {
      alert("用户名不能为空哦！！！")
      return  false;
    }
    else  if (pass_text==""){
      alert("密码不能为空哦！！！")
      return  false
    }
    /*else if (!fObj[0].checked) {
      alert("请选择登陆角色！！！");
      return  false;
    }*/

    return true;
  }
</script>



  <div id="container"><h2>龙晓图书系统</h2>
    <div id="top">欢迎使用</div>
    <div id="center">
      <% String errorPass = "密码错误，请重新输入！";
      session.setAttribute("errorPass",errorPass);
      %>
      <form  name="denglu" action="yanzheng.jsp" method="post" onsubmit="return nnn();" >
        <br><br>
        账号：<input type="text" id="url1" name="username" value=""><br><br>
        密码：<input type="password" id="url2" name="userpass" value=""><br><br>
        <input name="identity" type="radio" value="普通用户" >普通用户   <input name="identity" type="radio" value="管理员" >管理员<br><br>
        <input type=submit style="background-color:red;border: 0 ;" value="login">
        <br><br>
      </form>
    </div>
    <link id="bottom" style="text-align: left">
    没有账号？点我<a href="register.jsp">注册</a>
    </div>
  </div>

</body>
</html>
