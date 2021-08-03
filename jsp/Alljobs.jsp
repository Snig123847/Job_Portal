<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
  <link rel= "stylesheet" type= "text/css" href= "styles/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
	float:left;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition:0.2s;
    width: 400px;
    margin:20px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 #009eff;
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
          <li><a href="#" style="background-color:#525252;">Job Portal | Jobs Available </a></li>
		<li><a href="SearchJobs.jsp">Search Jobs </a></li>	
      </ul>
  </nav>

</div>
							<%
								Class.forName("com.mysql.jdbc.Driver");  
								java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JobPrDB","root","root"); 
								Statement st= con.createStatement(); 
								ResultSet MyResult=st.executeQuery("select * from jobs");              
								int ex=0;
								while(MyResult.next())
								{
									ex=1;
									%>
<a href="JobDetails.jsp?jobid=<%=MyResult.getString(1)%>" style="    color: black;">									
<div class="card">
  
  <div class="container">
    <h2><b><%=MyResult.getString("jobtitle")%></b></h2> 
    <p><b>Job Provider : </b><%=MyResult.getString("jobcompany")%></p>
    
    <p><b>Work : </b><%=MyResult.getString("jobwork")%></p> 
    <p><b>Salary Provided: </b><%=MyResult.getString("jobminsal")%>-<%=MyResult.getString("jobmaxsal")%> Per Annum.</p>
    <p><b>Experience Required: </b><%=MyResult.getString("jobexp")%></p>
    <p><b>Skills / Qualifications : </b><%=MyResult.getString("jobskills")%></p>
    <p><b>Job Location: </b><%=MyResult.getString("joblocation")%></p>
  </div>
</div>
</a>
<%}
if(ex==0)
{%>
	<div class="card">
  
  <div class="container">
    <h2><b>Sorry, no job(s) found.</b></h2> 
  </div>
</div>
<%}
								
								%>
</body>
</html> 

