<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mk.com.itcenter.ff.util.OrderUtil"%>
<%@page import="java.util.List"%>
<%@page import="mk.com.itcenter.ff.bean.Order"%>
<%@page import="mk.com.itcenter.ff.constants.FastFoodStaticVariables"%>
<%@page import="mk.com.itcenter.ff.bean.User"%>
<%@page import="mk.com.itcenter.ff.util.UserUtil"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Report By User Name</title>
</head>
<body>
	<%@include file="Header.jsp" %> 
<center>
<form action="" method="post">
<table border="0">
  <tr>
  	<th>Корисничко Име</th>
    <th>Тип</th>
    <th>Салата</th>
    <th>Помфрит</th>
    <th>Зачин сол</th>
    <th>Зачин пипер</th>
    <th>Зачин оригано</th>
    <th>Пијалок</th>   
  </tr>
  <%
  
  List<Order> orders = new ArrayList<Order>();
  
	// if username is set in session show all order about that user, otherwise redirect to login
	if(request.getParameter("cmbUser") != null && (!request.getParameter("cmbUser").toString().equals(""))) {
		// orders= OrderUtil.getOrdersByUserName(FastFoodStaticVariables.PATH_TO_CSV_FILE_ORDERS, request.getParameter("cmbUser"));
		orders = OrderUtil.getAllOrdersFromDatabaseByUser(request.getParameter("cmbUser").toString());
	}
	else
	{
		orders = OrderUtil.getAllOrdersFromDatabase();
	}
  
 for(Order item  : orders)
 {  	
   %>
  <tr>
  	<td><%=item.getUserName() %></td>
    <td><%=item.getType() %></td>
    <td><%=item.isSalad() %></td>
    <td><%=item.isChips() %></td>
    <td><%=item.isSal() %></td>
    <td><%=item.isPepper() %></td>
    <td><%=item.isOregano() %></td>
    <td><%=item.getDrink() %></td>
  </tr>
   <% }%>
</table>
<select name="cmbUser">
<option value="">Select</option>
<%
//za generiranje izvestai od baza
//List<User> users = UserUtil.getAlUserFromDatabase();
List<User> users = UserUtil.getAllUsersFromDatabase();
 for(User item : users)
 {
 %>
<option value=
"<%=item.getUserName()%>">
<%= item.getFirstName()+" "
+item.getLastName()%>
</option>
<%} %>
</select>
<input type="submit" value="Search">
</form>
</center>
</body>
</html>