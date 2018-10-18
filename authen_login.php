<?php  
session_start();
require('db_connect.php');

if (isset($_POST['user_id']) and isset($_POST['user_pass'])){
	
// Assigning POST values to variables.
$username = $_POST['user_id'];
$password = $_POST['user_pass'];

// CHECK FOR THE RECORD FROM TABLE
$query = "SELECT * FROM `client` WHERE Uname='$username' and password='$password'";
 
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
$count = mysqli_num_rows($result);

if ($count == 1){
    $_SESSION['id'] = $username;
    header( 'Location: player.php' );

}else{
    echo "<script type='text/javascript'>alert('Invalid Login Credentials')</script>";
    echo "<script>setTimeout(\"location.href = 'login.php';\",0);</script>";
    
}
}
?>