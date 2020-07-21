<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
	<link rel="stylesheet" type = "text/css" href = "css/bootstrap.min.css"/>

  <div class="title">
  <h1 class="h1"> USER-Publications Table</h1>
</div>
<div class="otherpages">

    <a href="titleuser.php">Title Table</a>
    <a href="journaluser.php">Journal Table</a>
    <a href="schooluser.php">School Table</a>
    <a href="scholaruser.php">Scholars Table</a>
  </div>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> <!--  using boost library    -->
    <link rel="stylesheet" href="journaladmincss.css">

  </head>
  <body>
    <?php
    $link = mysqli_connect("localhost", "root", "", "Project");


    // Check connection
    if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
    }
    $check = mysqli_query($link,"SELECT * FROM publications  ");

    if (!$check) { // add this check.
        die('Invalid query: ' . mysql_error());
    }

    $myarr=array();

    while($row = mysqli_fetch_array($check))
    {
    array_push($myarr, $row);
    }

    	?>
    <body >
    <table class="table">
                <thead>
                    <tr class="success">
                        <th>title</th>
                        <th>pid</th>

                        <th>subject</th>
                        <th>date</th>
                    </tr>
                </thead>
                <tbody>

    				<?php
    				$row_number=count($myarr);

    				for($i=0;$i<$row_number;$i++)
    				{
    					$title=$myarr[$i]['title'];
              $subject=$myarr[$i]['subject'];
              $date=$myarr[$i]['date'];
              $pid=$myarr[$i]['pid'];

    				echo "<tr>";
    					echo "<td>" .$title.  "</td>";
              echo"<td> " .$pid.  "</td>";

              echo "<td>".$subject .  "</td>";
    					echo"<td> " .$date.  "</td>";
            echo "</tr>";
    				}

    				?>
    				</tbody>




    </table>

	<script src="js/bootstrap.min.js"><script/>
  </body>
</html>
