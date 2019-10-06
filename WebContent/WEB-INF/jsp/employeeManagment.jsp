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

<title>社員管理一覧画面</title>

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



			<table border="1" align="center" width="800" height="50">
				<tr>
					<td colspan="1">
						<h1 align="center">wit社員管理システム</h1>
					</td>
				</tr>
			</table>

			<div>

				<table border="1" align="center" width="1400">
					<hr width="100%"></hr>
					
						<table align="center" height="100">
							<tr>
							<form
						action="${pageContext.request.contextPath}/login/close.action"
						method="post">
								<td align="right">社員ID:</td>
								<td align="center" border="1" width="0"><input type="text"></td>
								<td align="right">管理者ID:</td>
								<td align="center" border="1" width="0"><input
									margin-right=10px type="text"></td>
								<td margin-left=10px><input style="margin-left: 100px"
									type="submit" value="閉じる"></input></td>
							</form>
							</tr>
							</div>

							<div>
								<tr align="right">
								<form
						action="${pageContext.request.contextPath}/employee/employee.update"
						method="post">
									<td align="right">在勤期間:</td>
									<td align="center" border="1" width="0"><input type="text">～</td>
									<td align="center" border="1" width="0"><input type="text"></td>
									<td><input type="submit" value="検索"></input>
								</form></td>
								</tr>
							</div>

							<tr align="center">
								<td>
									<form
										action="${pageContext.request.contextPath}/employee/employee.new"
										method="post">
										<input type="submit" value="登録"></input>
									</form>
								</td>

								<td>
									<form
										action="${pageContext.request.contextPath}/employee/employee.update"
										method="post">
										<input type="submit" value="更新"></input>
										</form>
									
								</td>
								<td>
								<form
										action="${pageContext.request.contextPath}/employee/employee.update"
										method="post">
									<button type="button" onclick="alert('削除しました。')">削除</button>
									</form>
								</td>
								<td>
								<form
										action="${pageContext.request.contextPath}/employee/employee.update"
										method="post">
									<button type="button" onclick="alert('一覧出力しました。')">一覧出力</button>
									</form>
								</td>
							</tr>



							<table border="1" align="center" width="1000" height="300">
								<tr align="center">
									<td><input type="checkbox" name="record"></td>
									<td>氏名</td>
									<td>社員ID</td>
									<td>管理者ID</td>
									<td>入社日</td>
									<td>退社日</td>
								</tr>
								<tr align="center">
									<td><input type="checkbox" name="record"></td>
									<td>金</td>
									<td>11111</td>
									<td>11111</td>
									<td>2019/01/01</td>
									<td>2019/01/01</td>
								</tr>
								<tr align="center">
									<td><input type="checkbox" name="record"></td>
									<td>木</td>
									<td>22222</td>
									<td>22222</td>
									<td>2019/02/02</td>
									<td>2019/02/02</td>
								</tr>
								<tr align="center">
									<td><input type="checkbox" name="record"></td>
									<td>水</td>
									<td>33333</td>
									<td>33333</td>
									<td>2019/03/03</td>
									<td>2019/03/03</td>
								</tr>
								<tr align="center">
									<td><input type="checkbox" name="record"></td>
									<td>火</td>
									<td>44444</td>
									<td>44444</td>
									<td>2019/04/04</td>
									<td>2019/04/04</td>
								</tr>
								</div>


							</table>
							</form>

						</table>



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
		function editCustomer(id) {
			//采用ajax从后台获取数据
			$.ajax({
				type:"get",
				url:"<%=basePath%>
							customer/edit.action",
											data : {
												"id" : id
											},
											success : function(data) {
												$("#edit_cust_id").val(
														data.cust_id);
												$("#edit_customerName").val(
														data.cust_name);
												$("#edit_customerFrom").val(
														data.cust_source)
												$("#edit_custIndustry").val(
														data.cust_industry)
												$("#edit_custLevel").val(
														data.cust_level)
												$("#edit_linkMan").val(
														data.cust_linkman);
												$("#edit_phone").val(
														data.cust_phone);
												$("#edit_mobile").val(
														data.cust_mobile);
												$("#edit_zipcode").val(
														data.cust_zipcode);
												$("#edit_address").val(
														data.cust_address);

											}
										});

							}}
						</script>
</body>

</html>
