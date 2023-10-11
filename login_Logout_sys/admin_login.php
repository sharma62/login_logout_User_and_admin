<?php
session_start();
$conn = new mysqli('localhost','root','','cybuss');

$msg ="";

if(isset($_POST['submit'])=='Login' && isset($_SERVER['REQUEST_METHOD'])=='POST' ){
    
    $user_name = $_POST['email'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM `admin` WHERE `email`= '$user_name' and `password`='$password' ";

    if(mysqli_num_rows(mysqli_query($conn,$sql))>0){
        $_SESSION['ADMIN'] =$user_name;
        $_SESSION['msg']= "Login Sucessfully";
        header('location:admin_dashboard.php');
    }
      $msg = 'Invalid Details please try again . . . . ! ';


    // echo "<pre>";
    // print_r($_GET);
    
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Admin panel</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
  <main>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-6 login-section-wrapper offset-3 offset-sm-none">
          
          <div class="login-wrapper m-auto">
            <h1 class="login-title text-center">Admin</h1>
            <form action="" method="post">
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="email@example.com">
              </div>
              <div class="form-group mb-4">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="enter your passsword">
              </div>
              <input name="submit" id="login" class="btn btn-block login-btn" type="submit" value="Login">
            </form>
            <div class="text-danger bold mb-3"><?php echo $msg ?></div>
            <a href="#!" class="forgot-password-link">Forgot password?</a>
            <p class="login-wrapper-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
          </div>

        </div>
        
      </div>
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
