<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel= "stylesheet" type= "text/css" href= "styles/style.css">
  <link rel= "stylesheet" type= "text/css" href= "styles/form.css">
<style>
.form-field
{
	    width: 680px;
	    margin-bottom: 10px;
	
}
.form-title
{
		    margin-bottom: 5px;
}
</style>
</head>
<body>
<div id="container">
  <nav >
      <ul  style="margin: -30px -5px -30px -5px;">
          <li><a href="#" style="background-color:#525252;">Job Portal | Search Job </a></li>
          <li><a href="AllJobs.jsp">See All Jobs </a></li>
      </ul>
      
  </nav>

</div>
<div style="background-image:url('styles/bg.jpg'); background-size:cover; background-attachment:fixed; height:620px;">
<div style="margin-left:300px;margin-top:-30px; padding-top:50px;">
<form class="form-container" style="margin-top:0px;         min-width: 700px;" action="ShowJobs.jsp" method=post>
<div class="form-title"><h2>Find a Job that suit's you!</h2></div>

<div class="form-title">Job Title</div>
<input class="form-field" type="text" name="jobtitle" required /><br />
<div class="form-title">Job Location</div>
<select  class="form-field" name="joblocation" required style="width:699px">
<option value="Delhi">Delhi</option>
<option value="Mumbai">Mumbai</option>
<option value="Kolkata">Kolkata</option>
<option value="Banglore">Banglore</option>
<option value="Other">Other</option>
</select>
<div class="form-title">Job Area</div>
<select  class="form-field" name="jobarea" required style="width:699px">
<option value="Any">Any</option>
<option value="Automotive">Automotive</option>
<option value="Banking">Banking</option>
<option value="Chemicals">Chemicals</option>
<option value="Entertainment">Entertainment</option>
<option value="Insurance">Insurance</option>
<option value="BPO">BPO</option>
<option value="Hardware">Hardware</option>
<option value="IT">IT</option>
<option value="Consumer Goods">Consumer Goods</option>
<option value="Education">Education</option>
<option value="Bio Technology">Bio Technology</option>
<option value="Other">Other</option>
</select>
<div class="form-title">Experience you've :</div>
<input class="form-field" type="number" name="jobexp" required /><br />

<div class="form-title">Your Age </div>
<input class="form-field" type="number" name=jobminage required  /><br />
<div class="form-title">Minimum Salary</div>
<input class="form-field" type="number" name=jobminsal required  /><br />

<div class="submit-container">
<input class="submit-button" type="submit" value="Search Jobs" />
</div>
</form>
</div>
</div>


</body>
</html>
