<%-- 
    Document   : student
    Created on : Mar 3, 2022, 6:02:49 AM
    Author     : Freeman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Lecture page</title>        
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="asserts/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="asserts/css/bootstrap-grid.css" />
        <script src="asserts/js/bootstrap.min.js" ></script>
    </head>
    <body>
        <div class="container-md col-8">
            <p class="h1 text-center">Jordan's E-learning System</p>
            <br>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Login</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Register</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Forgot Password</button>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <br>
                    <p class="h3 text-center">Login</p>
                    <br>
                    <hr>
                    <br>
                    <form action="lec_home.jsp" method="post">
                        <div class="row mb-3">
                            <label for="lec-id" class="col-sm-2 col-form-label">Employee ID</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="Your emp ID" id="lec-id">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" placeholder="freeman@mail.com" id="email">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="password" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="password" placeholder="Your Password">
                            </div>
                        </div>                        
                        <div class="row mb-3">
                            <div class="col-sm-10 offset-sm-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="remember-pass">
                                    <label class="form-check-label" for="remember-pass">
                                        Remember Password
                                    </label>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>

                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <br>
                    <p class="h3 text-center">Register</p>
                    <br>
                    <hr>
                    <br>
                    <form class="row g-3" action="register-lecturer-serv" method="post">
                         <div class="col-md-6">
                            <label for="emp_id" class="form-label">Employee ID</label>
                            <input type="text" name="lec_emp_id" class="form-control" id="emp_id" placeholder="Lecturer Emp_ID" required="true">
                        </div>
                        <div class="col-md-6">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" name="lec_name" class="form-control" id="name" placeholder="Lecture Name">
                        </div>
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Email</label>
                            <input type="email" name="lec_email" class="form-control" id="inputEmail4" required>
                        </div>
                        <div class="col-6">
                            <label for="phone" class="form-label">Phone</label>
                            <input type="text" name="lec_phone" class="form-control" id="phone" placeholder="76294516">
                        </div>
                        <div class="col-md-6">
                            <label for="inputPassword4" class="form-label">Password</label>
                            <input type="password" name="lec_pass" class="form-control" id="inputPassword4" required>
                        </div>
                         <div class="col-md-6">
                            <label for="faculty" class="form-label">Faculty</label>
                            <select id="inputState" name="lec_faculty" class="form-select">
                                <option selected>Choose...</option>
                                <option>Information Technology</option>
                                <option>Business Management</option>
                                <option>Cooking and Nutrition</option>
                                <option>Events Management</option>
                            </select>
                        </div>
                        <div class="col-12">
                            <label for="inputAddress" class="form-label">Address</label>
                            <input type="text" name="lec_address" class="form-control" id="inputAddress" placeholder="Your physical Address">
                        </div>                        

                        <div class="col-md-6">
                            <label for="inputCity" class="form-label">City</label>
                            <input type="text" name="lec_city" class="form-control" id="inputCity" placeholder="Nhlangano">
                        </div>
                        <div class="col-md-4">
                            <label for="lec_state" class="form-label">State</label>
                            <select id="inputState" name="lec_state" class="form-select">
                                <option selected>Choose...</option>
                                <option>HHOHHO</option>
                                <option>MANZINI</option>
                                <option>SHISELWENI</option>
                                <option>LUBOMBO</option>
                            </select>
                        </div>
                        <div class="col-md-2">
                            <label for="inputZip" class="form-label">Zip Code</label>
                            <input type="text" name="lec_zipcode" class="form-control" id="inputZip" placeholder="H100">
                        </div>
                        <div class="col-12">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck">
                                <label class="form-check-label" for="gridCheck">
                                    Save my Details
                                </label>
                            </div>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-primary">Register</button>
                        </div>
                    </form>

                </div>
                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

                    <br>
                    <p class="h3 text-center">Retrieve Password</p>
                    <br>
                    <hr>

                    <form>
                        <div class="row mb-3">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" placeholder="free@mail.com">
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Last Password You Remember</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword3">
                            </div>
                        </div>                       
                        
                        <button type="submit" class="btn btn-primary">Send Email</button>
                    </form>

                </div>
            </div>
            <hr>
            <p class="text-sm-center">All rights reserved @jordaninstitute</p>
        </div>
    </body>
</html>
