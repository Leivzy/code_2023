<%--
  Created by IntelliJ IDEA.
  User: Leivzy
  Date: 2023/10/18
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">

    function validate() {
        if (form1.account.value == "") {
            alert("账号不能为空");
            return;
        }
        if (form1.password.value == "") {
            alert("密码不能为空");
            return;
        }
        form1.submit();
    }

    // onload = function () {
    //     var ischeck = document.getElementsByName("vip");
    //     alert(ischeck[0].value);
    //     if(ischeck[0].checked){
    //         document.getElementById("div1").textContent = "100";
    //
    //     }
    // };
    function updateDivText() {
        var isVip = document.getElementsByName("vip")[0].checked;
        var div = document.getElementById("div1");

        if (isVip) {
            div.textContent = "欢迎注册为会员";
        } else {
            div.textContent = ""; // 清空div文本
        }
    }

    // window.onload = function () {
    //     updateDivText(); // 初始加载时根据复选框状态设置文本
    // };
</script>

<form name="form1" action="page1.jsp" method="post">
    请输入账号：<input name="account" type="text"><br>
    请输入密码：<input name="password" type="password"><br>
    是否注册为会员：<input type="checkbox" name="vip" onclick="updateDivText()"><br>
    <input type="button" value="登录" onclick="validate()"><br>
    <div id="div1"></div>
</form>
</body>
</html>