<?php
session_start();
if (!isset($_SESSION['ADMIN'])) {
    header('Location: index.php'); // Redirect to the login page if not authenticated
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/login.css">
</head>

<body>
    <div class="alert alert-success" role="alert"><?php echo $_SESSION['msg'] ?></div>
    <h1>hello, <?php echo 'Master '.  $_SESSION['ADMIN']; ?></h1>
   
    <a href="logout.php">logout</a>

</body>

</html>