<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
	java.util.Date dt = new java.util.Date();
	java.text.SimpleDateFormat sdf = 
	new java.text.SimpleDateFormat("yyyy-MM-dd");
	Class.forName("com.mysql.jdbc.Driver");  
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPrDB","root","root"); 
	Statement st1= con.createStatement();
	String currentTime = sdf.format(dt);
	ResultSet MyResultt=st1.executeQuery("select max(userid) from usersinfo"); 
	MyResultt.next();
	int a=MyResultt.getInt(1);
	a++;
	String username = request.getParameter("username");
	String usergender = request.getParameter("usergender");
	String useraddress = request.getParameter("useraddress");
	String userjobarea = request.getParameter("userjobarea");
	String userjobexp = request.getParameter("userjobexp");
	String userskills = request.getParameter("userskills");
	String useremailid = request.getParameter("useremailid");
	String userphone = request.getParameter("userphone");
	int userage = Integer.parseInt(request.getParameter("userage"));
	int jobid = Integer.parseInt(request.getParameter("jobid"));
	Class.forName("com.mysql.jdbc.Driver");  
	Statement st= con.createStatement(); 
	String query = "insert into usersinfo values(?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement preparedStmt = con.prepareStatement(query);
	preparedStmt.setInt(1, a);
	preparedStmt.setString(2, username);
	preparedStmt.setString(3, usergender);
	preparedStmt.setString(4, useraddress);
	preparedStmt.setString(5, userjobarea);
	preparedStmt.setString(6, userjobexp);
	preparedStmt.setInt(7, userage);
	preparedStmt.setString(8, userskills);
	preparedStmt.setInt(9, jobid);
	preparedStmt.setString(10, currentTime);
	preparedStmt.setString(11, useremailid);	
	preparedStmt.setString(12, userphone);	
	preparedStmt.executeUpdate(); 
	out.println("Your Response has been successfully Submitted!");
}
catch(Exception ee)
{
	ee.printStackTrace();
	response.sendRedirect("../NewItem.jsp");
}
%>
</body>
</html>
