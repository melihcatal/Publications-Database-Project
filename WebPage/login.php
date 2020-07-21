<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
		<link rel="stylesheet" type = "text/css" href = "css/bootstrap.min.css"/>





    <title></title>
  </head>
  <link rel="stylesheet" href="login.css">
  <body>




	<script src="js/bootstrap.min.js"><script/>


    <?php

      //mysql connection
	    $link = mysqli_connect("localhost", "root", "", "project");








    if(isset($_GET['login']))
    {
      $userName =$_GET["usernaname"];
      $password = $_GET["passw"];

      echo "<script type='text/javascript'>alert('sad');</script>";


      $checkUser = mysqli_query($link,
        "SELECT *
         FROM users
         WHERE user_name = '".$_GET["usernaname"]."'
         AND user_password = '".$_GET["passw"]."'
         ");

         //check the result . if the user exist row > 0
         $num_rows = mysqli_num_rows($checkUser);


        if($num_rows > 0 and $userName == "admin"){
          header("Location: admin.php");

        }
        else if($num_rows > 0 and $userName == "user"){
       header("Location: user.php");

        }
        else{

 ?>
 <div class="error">

   <h3> Not a user nor admin! <br>
     You will be redirected in  <h3 id="count"></h3> seconds</h3>
     <script type="text/javascript">

     var counttime=5;

     var x = setInterval(function(){

       document.getElementById("count").innerHTML=counttime;
       counttime--;
       if(counttime===0){
         window.location.href="login.html"
       }
     },1000)


 </script>
   <?php

           //header( "refresh:5;url=login.html" );
          }

      }


  ?>

 </div>
 <div class="imageclass">
   <img src="img.png" alt="" id="image1">

 </div>
  </body>
</html>
