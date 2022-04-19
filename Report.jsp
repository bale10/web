<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mk.com.itcenter.ff.util.OrderUtil"%>
<%@page import="mk.com.itcenter.ff.constants.FastFoodStaticVariables"%>
<%@page import="java.util.List"%>
<%@page import="mk.com.itcenter.ff.bean.Order"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Report</title>
</head>
<body bgcolor="33CC99">
	<%@include file="Header.jsp" %> 
<center>
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
   List<Order> orders = OrderUtil.getAllOrdersFromDatabase();
  
   // ova podolu e za od .csv i ke go komentiram
   // orders = OrderUtil.getOrdersFromCSVFile(FastFoodStaticVariables.PATH_TO_CSV_FILE_ORDERS);
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
</center>
</body>
</html>