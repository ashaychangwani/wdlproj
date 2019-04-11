<!DOCTYPE html>
<html>
    <?php
        session_start();
        if (isset($_GET['action']) && ('logout' == $_GET['action'])) {
            unset($_SESSION['id']);
            header('Location: login.php');
        }
        if (isset($_SESSION['id'])) {
            echo"
            <br>
            <br>
            <br>
            <br>
            <p>Welcome ".$_SESSION['id']."! <a href='?action=logout'>Logout</a></p>";
        } else { //redirect to login page
            echo "<script type='text/javascript'>alert('Please login first')</script>";
            echo "<script>setTimeout(\"location.href = 'login.php';\",0);</script>";
        }
        function insert2($P3name, $S3name){
            session_start();
            require('db_connect.php');

            $query = "INSERT INTO has2 (S3name,P3name) VALUES($P3name,$S3name))";

            echo "<script type='text/javascript'>alert('TEST')</script>";

            $result = mysqli_query($connection, $query);

            if ($result){
                echo "<script type='text/javascript'>alert('Your song has been created')</script>";
                echo "<script>setTimeout(\"location.href = 'login.php';\",0);</script>";

            }else{
                echo "<script type='text/javascript'>alert('You already have an account')</script>";
                echo "<script>setTimeout(\"location.href = 'signup.php';\",0);</script>";

            }
        }
    ?>
    <head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="shortcut icon" href="img/fav.png">
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Musix</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/main2.css">
		</head>
		<body>
			<!-- Start Banner Area -->
			<section class="banner-area relative" id="home">
				<div class="container">
                    <!-- Start Header Area -->
                    <header class="default-header">
                        <div class="container">
                            <div class="header-wrap">
                                <div class="header-top d-flex justify-content-between align-items-center">
                                    <div class="logo">
                                        <a href="player.php"><img src="img/logo.png" alt=""></a>
                                    </div>
                                    <div class="main-menubar d-flex align-items-center">
                                        <nav class="hide">
                                            <a href="#home">Home</a>
                                            <a href="#feature">Features</a>
                                            <a href="#about">About</a>
                                            <a href="#contact">Contact</a>
                                        </nav>
                                        <div class="menu-bar"><span class="lnr lnr-menu"></span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                </div>
            </section>
            <div class="player" id="player">
                <div id="info" class="info">
                    <span class="artist" id="playingArtist">Flume</span>
                    <span class="name" id="playingSong">Say it</span>
                    <div class="progress-bar">
                        <div class="bar"></div>
                    </div>
                </div>
                <div id="control-panel" class="control-panel">
                    <div class="album-art"></div>
                    <div class="controls">
                        <div id="prev"  class="prev"></div>
                        <div id="play" class="play"></div>
                        <div id="next"  class="next"></div>
                    </div>
                </div>
            </div>
            <form id="choice" style="display:block">
                <input type="button" id="playlist" value="Playlists">
                <input type="button" id="artist" value="Custom Query">
                <input type="button" id="song" value="Songs">
            </form>
            <section id="pview" style="display:none">
                <form action="addnew.php" method=post>
                    <label>Name:</label>
                    <input type=text id="Aname" name="Aname" placeholder="Enter playlist name">
                    <label>Genre:</label>
                    <input type=text id="Agenre" name="Agenre" placeholder="Enter playlist genre">
                    <input type=submit value="Submit">
                </form>
                <table style="width: 80%">
                    <tr>
                        <th> Playlist name </th>
                        <th> Genre </th>
                        <th> Modification Date </th>
                        <th> Creation Date </th>
                        <th> View </th>
                        <th> Delete </th>
                    </tr>
                <form action="test2.php" method="POST">
                        <input type="text" value="pretext" name="query2" id="dummyquery2" hidden>
            <?php
                require('db_connect.php');
                $query = "SELECT * FROM `playlist` WHERE Pname IN (SELECT P1name FROM has1 WHERE U1name='$_SESSION[id]')";
                $result = mysqli_query($connection, $query);
                $count = mysqli_num_rows($result);
                
                if($result->num_rows>0){
                    while($row=$result->fetch_assoc()){
                        echo "<tr><td>".$row["Pname"]."</td><td>" . $row["genre"] . "</td><td>". $row["modification"] ."</td><td>". $row["creation"] ."</td><td><button id='x".$row["Pname"]."' onSubmit>View</button></td><td><button id='y".$row["Pname"]."' onSubmit>Delete</button></td></tr>";
                    }
                }
                else{
                    echo "0 results";
                }
                ?><input type="submit" style="display:none" id="dummy2">
                    </form>
                </table>
            </section>
            <section id="aview" style="display:none">
                <form action="randomq.php" method="POST">
                    <label for="rquery">Enter custom query</label>
                    <input type="text" id="rquery" name="rquery" placeholder="Enter your query to be executed here" style="width: 50%;">
                    <input type="submit" value="Submit">                    
                </form>
            </section>
            <section id="plist" style="display: none">
                <table id="ptable" style="width: 100%" >
                    <tr>
                        <td>Playlist Name</td>
                        <td>Genre</td>
                        <td>Creation Date</td>
                        <td>Modification Date</td>
                        <td>Add</td>
                    </tr>
                    <form action="test.php" method="POST">
                        <input type="text" value="pretext" name="query" id="dummyquery" hidden>
                    <?php
                        require('db_connect.php');
                        $query = "SELECT * FROM `playlist` WHERE Pname IN (SELECT P1name FROM has1 WHERE U1name='$_SESSION[id]')";
                        $result = mysqli_query($connection, $query);
                        $count = mysqli_num_rows($result);
                        if($result->num_rows>0){
                            while($row=$result->fetch_assoc()){
                                echo "<tr><td>".$row["Pname"]."</td>
                                <td>" . $row["genre"] . " </td>
                                <td>" . $row["modification"] . " </td>
                                <td>" . $row["creation"] . " </td>
                                <td><button id='z".$row["Pname"]."' onSubmit>Add</button></td>
                                </tr>
                                ";}}
                    ?>
                        <input type="submit" style="display:none" id="dummy">
                        </form>
                </table>
            </section>
            
            <section id="sview" style="display:none">
                <table id="stable" style="width:  100%">
                    <tr>
                    <th>Song Name</th>                   
                    <th>Artist</th>
                    <th>Album</th>
                    <th>Mood</th>
                    <th>Duration</th>
                    <th>Release Date</th>
                    <th>Actions</th>
                    </tr>
            <?php
                require('db_connect.php');
                $query = "SELECT * FROM `songs`";
                $result = mysqli_query($connection, $query);
                $count = mysqli_num_rows($result);
                if($result->num_rows>0){
                    while($row=$result->fetch_assoc()){
                        echo "<tr><td>".$row["Sname"]."</td>
                        <td>" . $row["Sartist"] . " </td>
                        <td>" . $row["alname"] . " </td>
                        <td>" . $row["mood"] . " </td>
                        <td>" . $row["duration"] . " minutes </td>
                        <td>" . $row["releasedate2"] . " </td>
                        <td><button id='a".$row["Sname"]."' style='display:inline' class='".$row["Sartist"]."'>Add to playlist</button>
                            <button id='p".$row["Sname"]."'style='display:inline' class='".$row["Sartist"]."'>Play</button>
                            </td>
                            </tr>";
                    }
                }
                else{
                    echo "0 results";
                }
                ?>
                    </table>
            </section>
            
            
            <input type="button" id="back" value="Back">
            
            
        </body>
            <audio id="BodakYellow">
                <source src="Bodak%20Yellow.mp3" type="audio/mpeg">
            </audio>
            <audio id="Castle">
                        <source src="Castle.mp3" type="audio/mpeg">
                    </audio>
            <audio id="CocoChanel">
                        <source src="Coco%20Chanel.mp3" type="audio/mpeg">
                    </audio>
            <audio id="Elevate">
                        <source src="Elevate.mp3" type="audio/mpeg">
                    </audio>
            <audio id="FeelSoClose">
                        <source src="Feel%20So%20Close.mp3" type="audio/mpeg">
                    </audio>
            <audio id="FeelsLikeSummer">
                        <source src="Feels%20Like%20Summer.mp3" type="audio/mpeg">
                    </audio>
            <audio id="GirlsLikeYou">
                        <source src="Girls%20Like%20You.mp3" type="audio/mpeg">
                    </audio>

            <script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
			<script src="js/jquery.sticky.js"></script>
			<script src="js/main2.js"></script>
            <script src="js/primary.js"></script>
</html>