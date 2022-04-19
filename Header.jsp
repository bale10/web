<div align="right" style="width: 100%">
	Hi, <%=session.getAttribute("firstName")%> <%=session.getAttribute("lastName")%>
	<a href="Logout.jsp">Logout</a>
	<%if (session.getAttribute("username") == null || "".equals(session.getAttribute("username")))
	{
		response.sendRedirect("Login.jsp");
	} %>
</div>
<div>
<a href="Report.jsp">Report</a>
&nbsp;
<a href="ReportByUser.jsp">Report By User</a>
&nbsp;
<a href="Order.jsp">Order</a>
</div>