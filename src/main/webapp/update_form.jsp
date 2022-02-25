
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>

<% 

 	String eid=request.getParameter("exp_id");
	int expenseId=Integer.parseInt(eid);

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
	
	PreparedStatement s= con.prepareStatement("update expense_id=? from expense");
	s.setInt(1, expenseId);
	int i=s.executeUpdate();
	con.close();
	
	response.sendRedirect("home.jsp");
%>