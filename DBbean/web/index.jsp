
<%@ page contentType="text/html;charset=gb2312" %>
<%@ page language="java" import="java.util.*" %>
<html>
<head>
  <title>ͼ�����ϵͳ</title>
  <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body style="text-align: center">

<script type="text/javascript">
  function nnn(){
    var name_text=document.getElementById("url1").value;
    var pass_text=document.getElementById("url2").value;
    var fObj = document.denglu.identity;
    if(name_text.length>11){
      alert("�û������Ȳ��ܳ���11Ŷ������");
      return false;
    }
    else if (pass_text.length>16){
      alert("���볤�Ȳ��ܳ���16Ŷ������");
      return  false;
    }
    else if (name_text=="") {
      alert("�û�������Ϊ��Ŷ������")
      return  false;
    }
    else  if (pass_text==""){
      alert("���벻��Ϊ��Ŷ������")
      return  false
    }
    /*else if (!fObj[0].checked) {
      alert("��ѡ���½��ɫ������");
      return  false;
    }*/

    return true;
  }
</script>



  <div id="container"><h2>����ͼ��ϵͳ</h2>
    <div id="top">��ӭʹ��</div>
    <div id="center">
      <% String errorPass = "����������������룡";
      session.setAttribute("errorPass",errorPass);
      %>
      <form  name="denglu" action="yanzheng.jsp" method="post" onsubmit="return nnn();" >
        <br><br>
        �˺ţ�<input type="text" id="url1" name="username" value=""><br><br>
        ���룺<input type="password" id="url2" name="userpass" value=""><br><br>
        <input name="identity" type="radio" value="��ͨ�û�" >��ͨ�û�   <input name="identity" type="radio" value="����Ա" >����Ա<br><br>
        <input type=submit style="background-color:red;border: 0 ;" value="login">
        <br><br>
      </form>
    </div>
    <link id="bottom" style="text-align: left">
    û���˺ţ�����<a href="register.jsp">ע��</a>
    </div>
  </div>

</body>
</html>
