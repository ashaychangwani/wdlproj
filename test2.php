<?php

    session_start();
    require('db_connect.php');

    $query=$_POST["query2"];
    $first=strrpos($query,"D"); 
    $first2=strrpos($query,"'",-4)+1;
    $last=strrpos($query,"'",-1)-$first2;
    $small= substr($query,$first2,$last);

if($first==1)
{
    $first=strrpos($query,"'",-4)+1;
    $last=strrpos($query,"'",-1)-$first;
    $small= substr($query,$first,$last);
    $query2="DELETE FROM `has1` WHERE P1name='$small'";
    $query3="DELETE FROM `playlist` WHERE Pname='$small'";
    $result = mysqli_query($connection, $query) or die(mysqli_error($connection));
    $result = mysqli_query($connection, $query2) or die(mysqli_error($connection));
    $result = mysqli_query($connection, $query3) or die(mysqli_error($connection));
    echo "<script type='text/javascript'>alert('The playlist has been deleted')</script>";
        echo "<script>setTimeout(\"location.href = 'player.php';\",0);</script>";
}

    $query="SELECT * FROM songs WHERE Sname IN (SELECT S3name FROM has2 WHERE P3name='$small')";
       $result = mysqli_query($connection, $query) or die(mysqli_error($connection));
?>
    <html><body><table style="width:  100%">
                    <tr>
                    <th>Song Name</th>                   
                    <th>Artist</th>
                    <th>Album</th>
                    <th>Mood</th>
                    <th>Duration</th>
                    <th>Release Date</th>
                    </tr>
<?php
        
        if($result->num_rows>0){
                    while($row=$result->fetch_assoc()){
                        echo "<tr><td>".$row["Sname"]."</td>
                        <td>" . $row["Sartist"] . " </td>
                        <td>" . $row["alname"] . " </td>
                        <td>" . $row["mood"] . " </td>
                        <td>" . $row["duration"] . " minutes </td>
                        <td>" . $row["releasedate2"] . " </td>
                        
                            </tr>";
                    }
                }
                else{
                    echo "0 results";
                }
?>
    
    </table>
        <a href="player.php">Click here to go back</a>
           </body></html>