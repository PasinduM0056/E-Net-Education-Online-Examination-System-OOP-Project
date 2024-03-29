<%@page import="com.oop.model.staff" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Details</title>
<link rel="icon" type="images/x-icon" href="images/logo.png">
<link rel ="stylesheet" type="text/css" href="css/staffdetail.css">
<link rel ="stylesheet" type="text/css" href="css/bootstrap.min.css">

</head>

<body style="background: rgb(183,191,196);
background: linear-gradient(90deg, rgba(183,191,196,1) 2%, rgba(179,182,178,1) 91%);">
<jsp:include page="/ShowStaffservlet"></jsp:include>

<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">E-Net Education</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style = "flex-grow : 0.05" >
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a  class="nav-link active" aria-current="page" href="AdminPortal.jsp">Admin Home</a>
        </li>
        <li class="nav-item">
        <a href="" class="nav-link" href="#">About Us</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Courses
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">SE</a></li>
            <li><a class="dropdown-item" href="#">CSNE</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">CS</a></li>
            <li><a class="dropdown-item" href="#">DS</a></li>
            
          </ul>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Terms & Condition
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="termsandconditions.jsp">About Exams</a></li>
            <li><a class="dropdown-item" href="termsandconditions.jsp">About Us</a></li>
           
          </ul>
        </li>
         <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i>  Profile </a>
                
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li>
                        <a class="dropdown-item" href="AdminPortal.jsp">My account</a>
                    </li>

                    <li>
                        <a class="dropdown-item" href="index.jsp">Log out</a>
                    </li>
                </ul>
            </li>
            
            <li class="nav-item">
          <a href="Registation.jsp" class="nav-link" href="#"><i class="fa fa-address-book" aria-hidden="true"></i> Registration</a>
        </li>
      
      </ul>
      
    </div>
  </div>
</nav>
<br>
<div class="container">
<div class="text-right">
<a href="staffInsert.jsp">


<button  class="button3">Add Staff Details</button></a>
</div>


<br>


<div class="table-responsive" style="overflow-x:auto;">

<table class="table" border="1" style="border-collapse:collapse" >
   <tr>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Contact Number</th>
      <th>Position </th>
      <th>Email</th>
      <th>User Name</th>
      <th>Password</th>
      <th>Edit</th>
      <th>Delete</th>
   </tr>
   <% ArrayList<staff> stfDetails = new ArrayList<staff>();
   stfDetails = (ArrayList<staff>)request.getAttribute("StaffList"); %>
   
  <%for(int i=0 ; i<stfDetails.size();i++){
	  staff Staff = stfDetails.get(i); %> 
   <tr>
      <td><%=Staff.getF_name() %></td>
      <td><%=Staff.getL_name() %></td>
      <td><%=Staff.getPhone() %></td>
      <td><%=Staff.getPosition() %></td>
      <td><%=Staff.getEmail() %></td>
      <td><%=Staff.getUsername() %></td>
      <td><%=Staff.getPassword() %></td>
     
      <td><a href="EditstaffProfile?id=<%=Staff.getUsername() %>"><button class="button1 button1">EDIT</button></a></td>
      <td><a><button class="button2  button2" onclick="DeleteAccount('<%=Staff.getUsername()%>')">REMOVE</button></a></td>
     </tr>
     <% }%>
    
   </table>
   </div>
   </div>
   
<script src="js/bootstrap.bundle.min.js"></script>

<script>
function DeleteAccount(id){
	if(confirm("Are you sure you want to Remove That Staff Mamber")){
		window.location.href ="DeleteStaffInfoServlet?id=" + id;
	}
}

</script>

  </body>
   </html>
   