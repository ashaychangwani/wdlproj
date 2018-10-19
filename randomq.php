
<html>
<body>
    <a href="player.php">Click here to go back</a><br><br><br>
    </body>
</html>

<?php  
session_start();
require('db_connect.php');

// Assigning POST values to variables.
$query = $_POST['rquery'];

// CHECK FOR THE RECORD FROM TABLE 
$result = mysqli_query($connection, $query);

if (!$result) {
    $message  = 'Invalid query: ' . mysql_error() . "\n";
    $message .= 'Whole query: ' . $query;
    die($message);
}
else{
while ($row = $result->fetch_assoc()) {
    foreach($row as $cname => $cvalue){
        print "$cname: $cvalue";
        ?>
        <br>
        <?php
    }
    ?>
<br>
<br>
    <?php
}}
?>
