
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>��</title>
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
            alert("�ֻ��Ų���Ϊ��Ŷ��");
            return false;
        }
        else if(pass1_text==""){
            alert("���벻��Ϊ��Ŷ��");
            return false;
        }
        else if(pass2_text==""){
            alert("���벻��Ϊ��Ŷ��");
            return false;
        }
        else if(email_text==""){
            alert("E-mail����Ϊ��Ŷ��");
            return false;
        }
        else if (id_text.length > 11){
            alert("��������ȷ��11λ�ֻ��ţ�����")
            return  false;
        }
        else  if(pass1_text.length>16 || pass2_text.length>16){
            alert("���벻�ܳ���16λŶ������")
        }
        else if (pass2_text != pass1_text) {
            alert("�������벻һ��Ŷ������")
            return false;
        }
        return true;
    }
</script>



<div id="container"><h2 >ע����Ϣ</h2>
    <div id="top">С����</div>
    <div id="center">
        <br><br>
        <form action="Servlet1" method="post" onsubmit="return checkIP();">
            <table align="center" cellspacing="15">
                <tr>
                <td>�ֻ���:</td>
                <td><input type=text id="url" name="id"  value=""></td>
                </tr>
                <tr>
                <td>����:</td>
                <td><input type="password" id="ur2" name="pass1" value=""></td>
                </tr>
                <tr>
                <td>ȷ������:</td>
                <td><input type="password" id="ur3" name="pass2" value=""></td><br>
                </tr>
                <tr>
                <td>E-mail:</td>
                <td><input type=text id="ur4" name="email" value=""></td>
                </tr>

            </table>
            <input type=submit value="ע��">
        </form>
    </div>
    <div id="bottom">
        <input type="button" value="����" onclick="window.location='index.jsp';">
    </div>
</div>

</body>
</html>