<?php

    session_start();
    require('db_connect.php');

    $query=$_POST["query"];

    echo "<script type='text/javascript'>alert('$query')</script>";

    $result = mysqli_query($connection, $query);

    if ($result){
        echo "<script type='text/javascript'>alert('The song has been added to your playlist')</script>";
        echo "<script>setTimeout(\"location.href = 'player.php';\",0);</script>";
    }
    else{
        echo "<script type='text/javascript'>alert('The song already exists in this playlist')</script>";
        echo "<script>setTimeout(\"location.href = 'player.php';\",0);</script>";
    }
?>