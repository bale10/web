<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=UTF-8">
		<title>FAST FOOD ORDER</title>
	</head>
	<body bgcolor="33CC99">

           	<%@include file="Header.jsp" %>  	

		<div width="100%" align="center">
			<form action="FastFoodOrder" method="post">
				<table background="blue">
					<tr>
						<img
							src="data:image/jpeg;base64,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" />
					</tr>
					<tr>
						<td>
							???????????????? ?????? ???? ??????????:
						</td>
						<td>
							<select name="vidHrana">
								<option value="hamburger">
									Hamburger
								</option>
								<option value="chickenburger">
									Chickenburger
								</option>
								<option value="cheeseburger">
									Cheeseburger
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							????????????:
						</td>
						<td>
							????
							<input type="radio" name="salata" value="yes" checked="checked" />
							????
							<input type="radio" name="salata" value="no" />
						</td>
					</tr>
					<tr>
						<td>
							??????????????:
						</td>
						<td>
							????
							<input type="radio" name="pomfrit" value="yes" checked="checked" />
							????
							<input type="radio" name="pomfrit" value="no" />
						</td>
					</tr>
					<tr>
						<td>
							????????????
						</td>
						<td>
							??????
							<input type="checkbox" name="zaciniSol" value="sol" />
							??????????
							<input type="checkbox" name="zaciniPiper" value="piper" />
							??????????????
							<input type="checkbox" name="zaciniOrigano" value="cili" />
						</td>
					</tr>
					<tr>
						<td>
							??????????????
						</td>
						<td>
							<select name="toppings"  size="3">
								<option value="CocaCola">
									CocaCola
								</option>
								<option value="Fanta">
									Fanta
								</option>
								<option value="7Up">
									7Up
								</option>
								<option value="Ceden Limon">
									?????????? ??????????
								</option>
								<option value="Bitolsko">
								????????????????
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<input type="submit" value="??????????????" />
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>