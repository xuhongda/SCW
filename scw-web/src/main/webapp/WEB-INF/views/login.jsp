﻿<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="UTF-8">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
      <%--静态包含，引入bootStrap--%>
      <%@ include file="/WEB-INF/include/commons-css.jsp"%>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css">
  </head>
  <body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div><a class="navbar-brand" href="index.html" style="font-size:32px;">尚筹网-创意产品众筹平台</a></div>
        </div>
      </div>
    </nav>

    <div class="container">
        <br/>
        <a href="http://localhost:8080/scw/front/talk.jsp"> <button type="button" class="btn btn-info">访问手机版</button></a>

        <form class="form-signin" role="form" action="${pageContext.request.contextPath}/UserLogin" method="post">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 用户登录</h2>
          <span style="color: #99CC66">${msg}</span>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="inputSuccess4" name="loginacct" placeholder="请输入登录账号" value="xuhongda" autofocus>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="password" class="form-control" id="inputSuccess4" name="userpswd" placeholder="请输入登录密码" value="w11213412" style="margin-top:10px;">
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<select class="form-control" >
                <option value="member">会员</option>
                <option value="user" selected>管理</option>
            </select>
		  </div>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住我
          </label>
          <br>
            <a href="http://localhost:8080/scw/front/emailPswd.html">
                <label>
                    <button id="pswd" type="button">
                        忘记密码
                    </button>
                </label>
            </a>
          <label style="float:right">
            <a href="${pageContext.request.contextPath}/reg.html">我要注册</a>
          </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick="dologin()" >登录</a>
      </form>
    </div>

    <%--静态引入，jQuery--%>
    <%@include file="/WEB-INF/include/commons-js.jsp"%>

    <script>
    function dologin() {
        var type = $(":selected").val();
        if ( type == "user" ) {
            //window.location.href = "main.jsp";
            $(".form-signin").submit();
        } else {
            window.location.href = "${pageContext.request.contextPath}/login.html";
        }
    }
    </script>
  </body>
</html>