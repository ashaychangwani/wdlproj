<?php

    session_start();
    require('db_connect.php');

    $query=$_POST["query"];

    echo $query;
    $first=strrpos($query,"'",-4)+1;
    $last=strrpos($query,"'",-1)-$first;
    $small= substr($query,$first,$last);
    $current=date("Y/m/d");
    echo $small;

    $query2="UPDATE `playlist` SET `modification`='$current' WHERE Pname='$small'";
    echo $query2;
    $result = mysqli_query($connection, $query);

    if ($result){
        echo "<script type='text/javascript'>alert('The song has been added to your playlist')</script>";
        mysqli_query($connection, $query2);
        echo "<script>setTimeout(\"location.href = 'player.php';\",0);</script>";
    }
    else{
        echo "<script type='text/javascript'>alert('The song already exists in this playlist')</script>";
        echo "<script>setTimeout(\"location.href = 'player.php';\",0);</script>";
    }
?>