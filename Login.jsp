<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="mk.com.itcenter.ff.bean.User"%>
<%@page import="mk.com.itcenter.ff.util.UserUtil"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>Login</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body bgcolor="#d7dbdc">
		<form action="Login" method="post" name="login">
		<div style="position:absolute; left:535px; " ><h1>Добредојдовте </h1></div>
		
		<div style="position:absolute; left:585px;top:50px; " ><h1>Welcome </h1></div>
		
		<div style="position:absolute; left:485px; top:110px; " > Ве молиме пред да направите нарачка логирајте се </div>
		
		<div style="position:absolute; left:535px; top:130px; " > Please before you make a orders Log in </div>
	
			<div style="border: 2px solid; width: 285px; position:absolute; left:512px; top:150px;" >
				<table>
					<%
					
					if (request.getParameter("user") == null || request.getParameter("pass") == null) {
					
						User user = UserUtil.getRegisteredUser(request.getParameter("user"), request.getParameter("pass"));

							if (user != null) {
								request.getSession().setAttribute("username",
										user.getUserName());
								request.getSession().setAttribute("firstName",
										user.getFirstName());
								request.getSession().setAttribute("lastName",
										user.getLastName());
								request.getSession().setAttribute("invalidLogin", false);
								response.sendRedirect("Order.jsp");
								return;
							} else {

								if (request.getParameter("isLoginUser") != null) {
					%>
					<tr>
						<td colspan="2" bordercolor="red" background="#FFEBF8">
							<div style="background: #FFEBE8; border: 1px solid #DD3C10">
								<span>Incorrect Username/Password Combination</span>
							</div>
						</td>
					</tr>
					<%
								}
							}
					}
					%>
					<tr>
						<td>
						Корисничко име:
							(Username):
						</td>
						<td>
							<input type="text" name="user" />
						</td>
					</tr>
					<tr>
						<td>
						Пасворд: &nbsp; &nbsp; &nbsp; &nbsp;             
							(Password):
						</td>
						<td>
							<input type="password" name="pass" />
						</td>
					</tr>
					<tr>
						<td colspan="2">							
							<button type="submit" >Најавете се-Login</button>
							<a href="SignUp.jsp">Sign Up</a>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>