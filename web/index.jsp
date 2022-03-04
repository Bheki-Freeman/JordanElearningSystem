<!DOCTYPE html>
<html>
    <head>
        <title>Jordans E-learning System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="asserts/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="asserts/css/bootstrap-grid.css" />
        <script src="asserts/js/bootstrap.min.js" ></script>

        <style>
            #bar_one{
                background-image: url("asserts/imgs/bar_one.jpg"); /* The image used */
                background-color: #cccccc; /* Used if the image is unavailable */
                height: auto; /* You must set a specified height */
                background-position: center; /* Center the image */
                background-repeat: repeat; /* Do not repeat the image */
                background-size: cover;
            }
            #bar_one .col {
                width: 25%;
                background-color: rgba(20, 10, 20, 0.6);                
                padding: 20px;
                text-align: center;
                color: white;
            }
            #bar_one a {
                color: white;
            }
            #bar_one .right_col {
                border-right: 2px solid white;
            }
            #bar_one .col:hover{
                background-color: rgba(20, 10, 20, 0.9);               
            }

            @media only screen and (max-width: 920px){
                #bar_one{
                    display: flex;
                    flex-direction: column;
                    flex-wrap: wrap;
                }
                #bar_one .col{
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Jordan's E-Leaning System</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll"  aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarScroll">
                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                            <li class="nav-item">
                                <a class="nav-link active"  href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="student.jsp">Students</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="lecture.jsp">Lecturer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="university.jsp">University</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="#">Weather</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
            <hr>
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="asserts/imgs/slid_1.jpg" class="d-block w-100" alt="Lib Image">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Up-Coming Events</h1>
                            <p >Check out Our  Famous <a href="university.jsp">Events Here</a></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="asserts/imgs/slide_2.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Our Curriculum</h1>
                            <p >Check out our Curriculum here!</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="asserts/imgs/slide_3.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Lookin for Intakes</h1>
                            <p >Please  <a href="student.jsp">Register Here</a>, To <a href="student.jsp">Join</a> our marvelous Institution</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            <hr>

            <div class="row" id="bar_one">
                <div class="col right_col order-first">
                    <a class="nav-link h3" href="lecture.jsp">Add New User</a>
                </div>
                <div class="col right_col">
                    <a class="nav-link h3" href="#">Delete User</a>
                </div>
                <div class="col right_col order-first">
                    <a class="nav-link h3" href="#">Verify User</a>
                </div>
                <div class="col order-last">
                    <a class="nav-link h3" href="#">Quit</a>
                </div>

            </div>
            <hr>

        </div>
        <div class="container-fluid btn-primary" style="height: 10px;"></div>
        <footer class="btn-dark container-fluid footer">

            <center> <i>All rights reserved @jordaninstitute</i></center>
        </footer>
    </body>
</html>
