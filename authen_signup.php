<?php  
session_start();
require('db_connect.php');

// Assigning POST values to variables.
$username = $_POST['username'];
$password = $_POST['password'];
$phone = $_POST['phone'];
$card = $_POST['card'];
$gender = $_POST['gender'];
$name = $_POST['name'];
$email = $_POST['email'];
$birthday = $_POST['birthday'];

// CHECK FOR THE RECORD FROM TABLE
$query = "INSERT INTO client (Uname,contactn,cardn,password,gender,name,email,birthday) VALUES('$username','$phone','$card','$password','$gender','$name','$email',$birthday)";
 
$result = mysqli_query($connection, $query);

if ($result){
    echo "<script type='text/javascript'>alert('Your account has been created')</script>";
    echo "<script>setTimeout(\"location.href = 'login.php';\",0);</script>";

}else{
    echo "<script type='text/javascript'>alert('Error')</script>";
    echo "<script>setTimeout(\"location.href = 'signup.php';\",0);</script>";
    
}
?>