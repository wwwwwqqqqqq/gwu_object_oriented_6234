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
    <meta http-equiv="Content-Type" constent="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>网站信息</title>
    <base href="<%=basePath %>"  />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="My97DatePicker/WdatePicker.js"></script>
    <style>
    	table{
    		border:1px solid #cccccc;
    		width: 800px;
    		margin: 50px auto;
    	}
    	td{
    		padding:10px;
    	}
    </style>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Inspection Query</strong></div>
  <div class="body-content">
    <form  action="findChecktableList"  method="post">
		<table>
			<tr>
				<td>Inspection Number：</td>
				<td><input type="text" name="checkno"/></td>
				<td>Inspection Date：</td>
				<td><input type="text" name="checktime" id="realRentEndTime" class="Wdate" onfocus="WdatePicker({readOnly:true})" /></td>
			</tr>
			<tr>
				<td>Order Number：</td>
				<td>
					<input type="text" name="rentid"/>
				</td>
				<td>Note：</td>
				<td>
					<input type="text" name="type"/>
				</td>
			</tr>
			<tr>
				<td>Problem：</td>
				<td><input type="text" name="problem"  /></td>
				<td>Compensation：</td>
				<td><input type="text" name="paying"/></td>
			</tr>
			<tr>
				<td>Inspection Status</td>
				<td>
					<select name="flag">
						<option value="-1">Select</option>
						<option value="0">Damage</option>
						<option value="1">Pass</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center;"><input type="submit" value="YES" id="send" />&nbsp;&nbsp;<input type="reset" value="Reset" /></td>
				<td></td>
			</tr>
		</table>
	</form>
  </div>
</div>
</body></html>