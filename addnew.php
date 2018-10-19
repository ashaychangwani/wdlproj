<?php  
session_start();
require('db_connect.php');
 
// Assigning POST values to variables.
$name = $_POST['Aname'];
$genre = $_POST['Agenre'];
$modification=date("Y/m/d");
$creation=date("Y/m/d");

$query = "INSERT INTO playlist (Pname,genre,modification,creation) VALUES('$name','$genre',$modification,$creation)";
echo $query;
$query2="INSERT INTO has1(P1name,U1name) values('$name','$_SESSION[id]')";
$result = mysqli_query($connection, $query) or die(mysqli_connect_error());
mysqli_query($connection,$query2) or die(mysqli_connect_error());
if ($result){
    echo "<script type='text/javascript'>alert('Your playlist has been created')</script>";
    echo "<script>setTimeout(\"location.href = 'player.php';\",0);</script>";

}else{
    echo "<script type='text/javascript'>alert('This playlist already exists')</script>";
echo "<script>setTimeout(\"location.href = 'player.php';\",0);</script>";
    
}
?>