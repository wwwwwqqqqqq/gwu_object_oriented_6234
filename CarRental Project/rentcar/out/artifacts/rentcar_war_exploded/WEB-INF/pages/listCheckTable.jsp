<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" 
			+ request.getServerPort() + path + "/";
	String carImgPath = request.getSession().getServletContext().getRealPath("/") + "WEB-INF/static/images/cars/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">

    <base href="<%=basePath %>"  />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <style>
    	table{
    		width:99%;
    		margin: 10px auto;
    		border:1px solid #CCCCCC;
    	}
    	td,th{
    		vertical-align: middle; 
    		text-align: center;
    		margin:20px;
    		padding:5px;
    		border:1px solid #CCCCCC;
    	}
    	.priceStyle{
    		width:50px;
    	}
    	#cdes{
    		width:200px;
    	}
    </style>
<script type="text/javascript">
	
</script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Inspection List</strong></div>
  <div class="body-content">
    <table>
		<tr>
			<th>Inspection Number</th>
			<th>Problem</th>
			<th>Compensation</th>
			<th>Note</th>
			<th>Time</th>
			<th>Agent</th>
			<th>Operation</th>
		</tr>
		<c:forEach items="${checktables}" var="table" >
			<tr >
				<td>${table.checkno}</td>
				<td>${table.problem}</td>
				<td>${table.paying}</td>
				<td>${table.type}</td>
				<td>${table.checktime}</td>
				<td>${table.username}</td>
				<td>
					<a href="preUpdateCheckTable?checkid=${table.checkid}" >Modify</a>
				</td>
			</tr>
		</c:forEach>
	</table>
  </div>
</div>
</body></html>