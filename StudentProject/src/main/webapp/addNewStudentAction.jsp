<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String father=request.getParameter("father");
String mother=request.getParameter("mother");
String mobilenumber=request.getParameter("mobilenumber");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String course=request.getParameter("course");
String address=request.getParameter("address");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,father);
	ps.setString(4,mother);
	ps.setString(5,mobilenumber);
	ps.setString(6,gender);
	ps.setString(7,email);
	ps.setString(8,course);
	ps.setString(9,address);
	ps.executeUpdate();
	response.sendRedirect("addNewStudent.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("addNewStudent.jsp?msg=invalid");
	}
%>