<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css\style_login.css">
    <link rel='stylesheet' href='css\bootstrap.min.css' type='text/css'>
    <link rel='stylesheet' href='css\font-awesome.min.css' type='text/css'>
    <link rel='stylesheet' href='css\elegant-icons.css' type='text/css'>
    <link rel='stylesheet' href='css\nice-select.css' type='text/css'>
    <link rel='stylesheet' href='css\jquery-ui.min.css' type='text/css'>
    <link rel='stylesheet' href='css\owl.carousel.min.css' type='text/css'>
    <link rel='stylesheet' href='css\slicknav.min.css' type='text/css'>
    <link rel='stylesheet' href='css\style.css' type='text/css'>
    <script src="https://kit.fontawesome.com/e053d76c71.js" crossorigin="anonymous"></script>
    <title>Register</title>
</head>
<body>
    <!-- Offcanvas Menu End -->
    <header class='header'>
        <div class='header__nav__option'>
            <div class='container'>
                <div class='row'>
                    <div class='col-lg-2'>
                        <div class='header__logo'>
                            <a href='../index.php'><img src='img\logo1.png' alt=''></a>
                        </div>
                    </div>
                    <div class='col-lg-10'>
                        <div class='header__nav'>
                            <nav class='header__menu'>
                                <ul class='menu__class'>
                                    <li><a href='../index.php'>Home</a></li>
                                    <li><a href='../pages/rooms.php'>Rooms</a></li>
                                    <li><a href='../pages/about.php'>About Us</a></li>
                                    <li><a href='#'>Pages</a>
                                        <ul class='dropdown'>
                                            <li><a href='../page/about.php'>About Us</a></li>
                                            <li><a href='../pages/room-details.php'>Room Details</a></li>
                                            <li><a href='../pages/blog-details.php'>Blog Details</a></li>
                                        </ul>
                                    </li>
                                    <li><a href='../pages/blog.php'>News</a></li>
                                    <li><a href='../pages/contact.php'>Contact</a></li>
                                </ul>
                            </nav>
                            <div class='header__nav__widget'>
                                <a href='#'>Book Now <i class="fa-solid fa-arrow-right" style="color: #E9AD28;"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='canvas__open'>
                    <span class='fa fa-bars'></span>
                </div>
            </div>
        </div>
    </header>
      <div class="container_box">
        <div class="box form-box">

        <?php 
         
         include("config.php");
         if(isset($_POST['submit'])){
            $username = $_POST['username'];
            $email = $_POST['email'];
            $age = $_POST['age'];
            $password = $_POST['password'];

         //verifying the unique email

         $verify_query = mysqli_query($con,"SELECT Email FROM users WHERE Email='$email'");

         if(mysqli_num_rows($verify_query) !=0 ){
            echo "<div class='message'>
                      <p>This email is used, Try another One Please!</p>
                  </div> <br>";
            echo "<a href='javascript:self.history.back()'><button class='btn1'>Go Back</button>";
         }
         else{

            mysqli_query($con,"INSERT INTO users(Username,Email,Password) VALUES('$username','$email','$password')") or die("Erroe Occured");

            echo "<div class='message'>
                      <p>Registration successfully!</p>
                  </div> <br>";
            echo "<a href='index.php'><button class='btn1'>Login Now</button>";
         

         }

         }else{
         
        ?>

            <div class="header_log">Sign Up </div>
            <form action="" method="post">
                <div class="field input">
                    <label for="username">Username</label>
                    <input type="text" name="username" id="username" autocomplete="off" required>
                </div>

                <div class="field input">
                    <label for="email">Email</label>
                    <input type="text" name="email" id="email" autocomplete="off" required>
                </div>

                <div class="field input">
                    <label for="birthdate">Birthdate</label>
                    <input type="date" name="birthdate" id="birthdate" autocomplete="off" required>
                </div>
                <div class="field input">
                    <label for="password">Password</label>
                    <input type="password" name="password" id="password" autocomplete="off" required>
                </div>
                <div class="field input">
                    <label for="confirm_password">Confirm Password</label>
                    <input type="password" name="confirm_password" id="confirm_password" autocomplete="off" required>
                </div>
                <div class="field">          
                    <input type="submit" class="btn1" name="submit" value="Register" required>
                </div>
                <div class="links">
                    Already a member? <a class="to_link" href="login.php">Sign In</a>
                </div>
            </form>
        </div>
        <?php } ?>
      </div>
</body>
</html>