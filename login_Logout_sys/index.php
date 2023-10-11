<?php
session_start();
$conn = new mysqli('localhost','root','','cybuss');

$msg ="";

if(isset($_POST['submit'])=='Login' && isset($_SERVER['REQUEST_METHOD'])=='POST' ){
    
    $user_name = $_POST['email'];
    $password = $_POST['password'];
    $sql = "SELECT * FROM `user` WHERE `email`= '$user_name' and `password`='$password' ";

    if(mysqli_num_rows(mysqli_query($conn,$sql))>0){
        $_SESSION['USER'] =$user_name;
        $_SESSION['msg']= "Login Sucessfully";
        header('location:dashboard.php');
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
  <title>Login </title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
</head>
<body>
  <main>
    <div class="container-fluid">
      <div class="row"> 
        <div class="col-sm-6 login-section-wrapper">
          <div class="brand-wrapper my-5 mx-auto">
            <img src="assets/images/logo.svg" alt="logo" class="logo">
          </div>
           <a href="admin_login.php" class="btn btn-primary my-5 py-3 ">Admin  </a>
          <a href="user_login.php" class="btn btn-primary my-3 py-3 ">user  </a>

         </div>
        <div class="col-sm-6 px-0 d-none d-sm-block">
          <img src="assets/images/login.jpg" alt="login image" class="login-img">
        </div>
      </div>
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
