<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
	<link rel="stylesheet" type = "text/css" href = "css/bootstrap.min.css"/>
    <title>Admin</title>
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
    $check = mysqli_query($link,"SELECT * FROM school");

    if (!$check) { // add this check.
        die('Invalid query: ' . mysql_error());
    }

    $myarr=array();

    while($row = mysqli_fetch_array($check))
    {
    array_push($myarr, $row);
    }

    	?>
      <div class="title">

    <h1 class="h1"> ADMIN-School Table</h1>
  </div>
  <div class="otherpages">

    <a href="admin.php">Publications Table</a>
    <a href="journaladmin.php">Journal Table</a>
    <a href="titleadmin.php">Title Table</a>
    <a href="scholarsadmin.php">Scholars Table</a>
  </div>

  <div class="removebutton">

    <form class="removeall" action="schooladmin.php" method="get">
        <button type="submit" id="removeallbtn" name="removeall">Remove All</button>

      </form>
    </div>

      <?php
      if(isset($_GET['removeall']))
{
  $conn =mysqli_connect("localhost","root","","Project");

   $sql = "DELETE from school";
 $result = mysqli_query($conn,$sql);
 header('location: schooladmin.php');


} ?>

    <form class="" action="schooladmin.php" method="get">
      <div class="add">
        <h3>Add new record</h3>
          <input type="text" id="task" placeholder="Name" name="title1" autocomplete="off"  >
        <input type="text" id="task" placeholder="Scid" name="pid1" autocomplete="off"  >
        <button type="submit" name="add1">Add</button>

      </div>

      <div class="remove">
        <h3>Remove a record</h3>
        <input type="text" id="task" placeholder="Scid" name="pidremove1" autocomplete="off"  >

        <button type="submit" name="remove1">Remove</button>

      </div>

      <div class="singleitem">
        <h3>Search for a single item</h3>
        <input type="text" id="task" placeholder="Scid" name="pidsingle1" autocomplete="off"  >

        <button type="submit" name="search1">Search</button>

      </div>

      <div class="edit">
        <h3>Edit Record</h3>
        <h5>if you dont want to change a spesific column please type it again.</h5>

          <input type="text" id="task" placeholder="Scid that you want to edit" name="pid2" autocomplete="off"  >

        <input type="text" id="task" placeholder="Name" name="title2" autocomplete="off"  >

        <input type="text" id="task" placeholder="New scid" name="scid3" autocomplete="off"  >

        <button type="submit" name="edit1">Edit</button>

      </div>


<?php

if(isset($_GET['add1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "INSERT INTO school (name,scid)
  VALUES ('".$_GET["title1"]."','".$_GET["pid1"]."')";

  $result = mysqli_query($conn,$sql);

  header('location: schooladmin.php');


}
if(isset($_GET['edit1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
    $id = $_GET['pid2'];



  $sql = "UPDATE school SET name ='".$_GET["title2"]."',scid='".$_GET["pid3"]."' WHERE scid=".$id;


  $result = mysqli_query($conn,$sql);

  header('location: schooladmin.php');


}


if(isset($_GET['remove1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "DELETE From school
  WHERE scid =".$_GET["pidremove1"];

  $result = mysqli_query($conn,$sql);

  header('location: schooladmin.php');


}

if(isset($_GET['search1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "SELECT * From school
  WHERE scid =".$_GET["pidsingle1"];


  $result = mysqli_query($conn,$sql);


  header('location: schooladmin.php');


}

 ?>
</form>
    <body>
    <table class="table">
                <thead>
                    <tr class="success">
                        <th>Name</th>
                          <th>Scid</th>

                    </tr>
                </thead>
                <tbody>

    				<?php
    				$row_number=count($myarr);

    				for($i=0;$i<$row_number;$i++)
    				{
    					$title=$myarr[$i]['name'];
              	$pid=$myarr[$i]['scid'];
    				echo "<tr>";
    					echo "<td>" .$title.  "</td>";
              echo "<td>" .$pid.  "</td>";

            echo "</tr>";
    				}

    				?>
    				</tbody>




    </table>

	<script src="js/bootstrap.min.js"><script/>
  </body>
</html>
