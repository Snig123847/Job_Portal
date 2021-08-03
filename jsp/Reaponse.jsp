<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<%
if(session.getAttribute("companyemail")==null)
{
	response.sendRedirect("RecruiterLogin.jsp");
}
%>
  <link rel= "stylesheet" type= "text/css" href= "styles/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
	float:left;
    box-shadow: 0 2px 4px 0 black;
        transition:0.2s;
    width: 400px;
    margin:20px;
}
.card:hover {
    box-shadow: 0 8px 16px 0 black;
}
.container {
    padding: 2px 16px;
}
</style>
</head>
<body>

<div id="container">
  <nav >
      <ul  style="margin: -30px -5px -30px -5px;">
          <li><a href="#" style="background-color:#525252;">Job Portal | Responses on the Jobs  </a></li>
		 <li><a href="ShowJobsComp.jsp">Jobs Added By You </a></li>
			<li><a href="Scrs/RecruiterLoginJS.jsp?logout=yes" style="margin-left:450px;">Logout (<%=session.getAttribute("companyname") %>) </a></li>
      </ul>
  </nav>

</div>
							<%
								Class.forName("com.mysql.jdbc.Driver");  
								java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPrDB","root","root"); 
								Statement st= con.createStatement();
								Statement st0= con.createStatement(); 
								ResultSet MyResult=st.executeQuery("select * from usersinfo where jobid="+request.getParameter("jobid"));
								
								while(MyResult.next())
								{	
								
									ResultSet MyResult0=st0.executeQuery("SELECT count(jobid) FROM usersinfo where jobid="+MyResult.getString("jobid"));
									MyResult0.next();
								%>
<div class="card">
  
  <div class="container">
  
    <h2><b><%=MyResult.getString(2)%></b></h2> 
    <p><b>Date Registered : </b><%=MyResult.getString(10)%></p>
    <p><b>Gender : </b><%=MyResult.getString(3)%></p>
    <p><b>Age: </b><%=MyResult.getString(7)%></p>
    <p><b>Email Address : </b><%=MyResult.getString(11)%></p>
    <p><b>Phone Number : </b><%=MyResult.getString(12)%></p>
    <p><b>Address : </b><%=MyResult.getString(4)%></p>
    <p><b>Job Field : </b><%=MyResult.getString(5)%></p> 
    <p><b>Previous Experiences : <%=MyResult.getString(6)%></p>
    
    <p><b>Skills / Qualifications : </b><%=MyResult.getString(8)%></p>
   
  </div>
</div>
<%} %>
</body>
</html> 