
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>ͼ�����ϵͳ</title>
    <link href="css/css1.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container"><h2>������Ϣ</h2>
    <div id="top">С����</div>
    <div id="center">


        <script type="text/javascript">
            function checkIP(){
                var bkid_text=document.getElementById("url").value;
                var bkname_text=document.getElementById("ur2").value;
                var bkpublisher_text=document.getElementById("ur3").value;
                var bkprice_text=document.getElementById("ur4").value;
                if(bkid_text==""){
                    alert("ID�Ų���Ϊ��Ŷ��");
                    return false;
                }
                else if(bkname_text==""){
                    alert("��������Ϊ��Ŷ��");
                    return false;
                }
                else if(bkpublisher_text==""){
                    alert("�����粻��Ϊ��Ŷ��");
                    return false;
                }
                else if(bkprice_text==""){
                    alert("�۸���Ϊ��Ŷ��");
                    return false;
                }
                return true;
            }
        </script>


        <br><h1 >����дͼ����Ϣ</h1>
        <form action="insertSucceed.jsp" method="post" onsubmit="return checkIP();">
            <table align="center" cellspacing="15">
                <tr>
                    <td>I D  ��:</td>
                    <td><input type=text id="url" name="bkid"  value=""></td>
                </tr>
                <tr>
                    <td>��   ��:</td>
                    <td><input type=text id="ur2" name="bkname" value=""></td>
                </tr>
                <tr>
                    <td>������:</td>
                    <td><input type=text id="ur3" name="bkpublisher" value=""></td><br>
                </tr>
                <tr>
                    <td>��   ��:</td>
                    <td><input type=text id="ur4" name="bkprice" value=""></td>
                </tr>

            </table>

            <input type=submit value="���" onclick="return">
        </form>


    </div>
    <div id="bottom">
        <input type="button" value="����" onclick="javascript:window.location='selectBookAll.jsp';">
    </div>
</div>
</body>
</html>
