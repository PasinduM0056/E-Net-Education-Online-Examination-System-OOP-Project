<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Password</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/UpdatePassword.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>



<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">E-Net Education</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent" style = "flex-grow : 0.05" >
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a  class="nav-link active" aria-current="page" href="StudentPortal.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link" href="#">About Us</a>
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
          <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Terms & Condition
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="termsandconditions.jsp">About Exams</a></li>
            <li><a class="dropdown-item" href="termsandconditions.jsp">About System</a></li>
           
          </ul>
        </li>
         <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i>  Profile </a>
                
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li>
                        <a class="dropdown-item" href="StudentProfile.jsp">My account</a>
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

 <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Forgot Password</h3>
                        <p>Verify in the data below.</p>
                        <form method="post" action="UpdatePassword" class="requires-validation" >

                            <div class="col-md-12">
                               <input class="form-control" type="text" name="email" placeholder="E-mail Address" required>
                               <div class="valid-feedback">Email field is valid!</div>
                               <div class="invalid-feedback">Email field cannot be blank!</div>
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="text" name="userid" placeholder="UserID" required>
                                 <div class="valid-feedback">UserID field is valid!</div>
                                 <div class="invalid-feedback">UserID field cannot be blank!</div>
                            </div>

                           <div class="col-md-12">
                                <input class="form-control" type="password" name="psw" placeholder="New Password" required>
                                <div class="valid-feedback">Password field is valid!</div>
                                <div class="invalid-feedback">Password field cannot be blank!</div>
                           </div>


                           <div class="col-md-12">
                              <input class="form-control" type="password" name="rpsw" placeholder="Re-Enter Password" required>
                               <div class="valid-feedback">Password field is valid!</div>
                               <div class="invalid-feedback">Password field cannot be blank!</div>
                           </div>


                          

                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                          <label class="form-check-label">I confirm that all data are correct</label>
                         <div class="invalid-feedback">Please confirm that the entered data are all correct!</div>
                        </div>
                  

                            <div class="form-button mt-3">
                                <button id="submit" type="submit" class="btn btn-primary" >Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>







<script src="js/bootstrap.bundle.min.js"></script>


<script>

(function () {
	'use strict'
	const forms = document.querySelectorAll('.requires-validation')
	Array.from(forms)
	  .forEach(function (form) {
	    form.addEventListener('submit', function (event) {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }

	      form.classList.add('was-validated')
	    }, false)
	  })
	})()

}

</script>

</body>
</html>