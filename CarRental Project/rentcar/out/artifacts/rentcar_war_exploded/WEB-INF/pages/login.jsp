<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" 
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>Car Rental Management System</title>
    <base href="<%=basePath %>"  />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<div class="bg"></div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            <form action="userLogin" onsubmit="return false;" id="userForm" method="post">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>Management Center</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text"  class="input input-big" name="username" placeholder="Login" data-validate="required:Please Enter Username" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password"  class="input input-big" name="userpwd" placeholder="Password" data-validate="required:Please Enter Password" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>
                </div>
                <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" onclick="userLogin()" value="Login"></div>
            </div>
            </form>          
        </div>
    </div>
</div>
<script type="text/javascript">
	function userLogin(){
		$.ajax({
			type:"post",
			url:"userLogin",
			data:$("#userForm").serialize(),
			dataType:"json",
			success:function(data){
				if(data.flag=="ok"){
					location.href="index";
				}else{
					alert('Username or password is wrong!');
				}

			}
		})

	}
</script>
</body>
</html>