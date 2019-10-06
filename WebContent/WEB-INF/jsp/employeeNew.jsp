<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="pageUtils"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>社員追加画面</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>



<table align="center" border="1" width="600" height="50" cellspacing="0">
<head>
<meta charset="utf-8"> 
<h1 align="center">wit社員管理システム</h1>
</head>



	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			.title{
				text-align: center;
				position: relative;
				margin: 10px 0;
			}
			.title span{
				display: inline-block;
				width: 300px;
				font-size: 16px;
				line-height: 24px;
				border: 1px solid #000000;
			}
			.title button{
				position: absolute;
				right: 30px;
				top: 5px;
				background: #dedede;
				border: 1px solid #000000;
				
			}
			table{
				width: 100%;
			}
			table tr {
				height: 34px;
			}
			table tr td{
				text-align: right;
			}
			table tr td input[type=text]{
				width: 200px;
			}
			table tr td input.large{
				width: 605px;
			}
			table tr td input.small{
				width: 100px;
			}
			table tr td label{
				display: inline-block;
				width: 70px;
				text-align: left;
				padding-left: 10px;
			}
			.submit_btn{
				float: right;
				margin-right: 80px;
				width: 160px;
				height: 40px;
				font-size: 16px;
				margin-top: -15px;
			}
			
		</style>
	</head>
	<body>
		<div style="width: 1200px;">
			<div class="title">
			<span>社員情報</span>
			<form action="${pageContext.request.contextPath}/login/login.action" method="post">
			<button>もどる</button>
			</form>
		</div>
		<form style="padding: 0 30px;">
			<table>
			<tr>
				<td>※氏名：<input type="text" /></td>
				<td>※社員ID：<input type="text" disabled="true" /></td>
				<td>※管理者ID：<input type="text" /></td>
			</tr>
			<tr>
				<td>※フリガナ：<input type="text" /></td>
				<td class="large" colspan="2">※住所：<input type="text" class="large"/></td>
			</tr>
			<tr>
				<td>※生年月：<input type="text" /></td>
				<td class="large" colspan="2">※電話番号：<input type="text" class="large"/></td>
			</tr>
			<tr>
				<td>※性別：<input type="text" /></td>
				<td class="large" colspan="2">※雇用保険番号：<input type="text" class="large"/></td>
			</tr>
			<tr>
				<td>※年齢：<input type="text" /></td>
				<td colspan="2">※現場情報：<input type="text" class="large"/></td>
			</tr>
			<tr>
				<td>※入社年月：<input type="text" /></td>
				<td class="multi" colspan="2" rowspan="2">
					扶養人：<input type="text" class="samll"/>&nbsp;名
					<span style="margin-left:87px;">資料確認：</span>
					<input type="radio" name="demo" id="a" checked/><label for="a">済み</label>
					<input type="radio" name="demo" id="b" /><label for="b">未済</label>
				</td>
			</tr>
			<tr>
				<td>※退社年月：<input type="text" /></td>
			</tr>
			
		</table>
			<input class="submit_btn"  type="button" value="情報登録" />
		</form>
		
			
		</div>
		
		
	</body>


	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/sb-admin-2.js"></script>

	<script type="text/javascript">
		//点击修改按钮的事件
		function editEmployee(id) {
			//采用ajax从后台获取数据
			$.ajax({
				type:"get",
				url:"<%=basePath%>employee/edit.action",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.cust_id);
					$("#edit_customerName").val(data.cust_name);
					$("#edit_customerFrom").val(data.cust_source)
					$("#edit_custIndustry").val(data.cust_industry)
					$("#edit_custLevel").val(data.cust_level)
					$("#edit_linkMan").val(data.cust_linkman);
					$("#edit_phone").val(data.cust_phone);
					$("#edit_mobile").val(data.cust_mobile);
					$("#edit_zipcode").val(data.cust_zipcode);
					$("#edit_address").val(data.cust_address);

				}
			});
		}
		function updateEmployee() {
			$.post("<%=basePath%>employee/update.action",$("#edit_employee_form").serialize(),function(data){
				alert("客户信息更新成功！");
				window.location.reload();
			});
		}

		function deleteEmployee(id) {
			if(confirm('确实要删除该客户吗?')) {
				$.post("<%=basePath%>employee/delete.action",{"id":id},function(data){
					alert("客户删除更新成功！");
					window.location.reload();
				});
			}
		}
	</script>

</body>

</html>
