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

    <base href="<%=basePath %>"  />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <style>
    	table{
    		border:1px solid #cccccc;
    		border-left:none;
    		border-right:none;
    		width: 800px;
    		margin: 50px auto;
    	}
    	td{
    		padding:10px;
    	}
    	.priceStyle{
    		width:70px;
    	}
    </style>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Find Car</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="findCarHandler">
      <table>
			<tr>
				<td width="150px">License Plate NO.</td>
				<td> <input type="text" name="number" id="cnum" /> </td>
			</tr>
			<tr>
				<td>Model</td>
				<td> <input type="text" name="type" id="ctype" /> </td>
			</tr>
			<tr>
				<td>Value</td>
				<td>
					<input type="text" name="lowPrice" id="clowPrice" class="priceStyle" />
					&nbsp;~&nbsp;
					<input type="text" name="highPrice" id="chighPrice" class="priceStyle" />
				</td>
			</tr>
			<tr>
				<td>Rent Price</td>
				<td>
					<input type="text" name="lowRentPrice" id="clowRentPrice" class="priceStyle" />
					&nbsp;~&nbsp;
					<input type="text" name="highRentPrice" id="chighRentPrice" class="priceStyle" />
				</td>
			</tr>
			<tr>
				<td>Rental Status</td>
				<td> 
					<select name="isrenting" id="crenting">
						<option value="-1">Rental status</option>
						<option value="0">NO</option>
						<option value="1">Yes</option>
					</select>
				</td>
			</tr>
		</table>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> Submit</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>