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
    $check = mysqli_query($link,"SELECT * FROM scholars");

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

    <h1 class="h1"> ADMIN-scholars Table</h1>
  </div>
  <div class="otherpages">

    <a href="admin.php">Publications Table</a>
    <a href="journaladmin.php">Journal Table</a>
    <a href="titleadmin.php">Title Table</a>
    <a href="schooladmin.php">School Table</a>
  </div>

  <div class="removebutton">

    <form class="removeall" action="scholarsadmin.php" method="get">
        <button type="submit" id="removeallbtn" name="removeall">Remove All</button>

      </form>
    </div>

      <?php
      if(isset($_GET['removeall']))
{
  $conn =mysqli_connect("localhost","root","","Project");

   $sql = "DELETE from scholars";
 $result = mysqli_query($conn,$sql);
 header('location: scholarsadmin.php');


} ?>

    <form class="" action="scholarsadmin.php" method="get">
      <div class="add">
        <h3>Add new record</h3>
          <input type="text" id="task" placeholder="Name" name="title1" autocomplete="off"  >
        <input type="text" id="task" placeholder="sid" name="pid1" autocomplete="off"  >
        <button type="submit" name="add1">Add</button>

      </div>

      <div class="remove">
        <h3>Remove a record</h3>
        <input type="text" id="task" placeholder="sid" name="pidremove1" autocomplete="off"  >

        <button type="submit" name="remove1">Remove</button>

      </div>

      <div class="singleitem">
        <h3>Search for a single item</h3>
        <input type="text" id="task" placeholder="sid" name="pidsingle1" autocomplete="off"  >

        <button type="submit" name="search1">Search</button>

      </div>

      <div class="edit">
        <h3>Edit Record</h3>
        <h5>if you dont want to change a spesific column please type it again.</h5>

          <input type="text" id="task" placeholder="sid that you want to edit" name="pid2" autocomplete="off"  >

        <input type="text" id="task" placeholder="Name" name="title2" autocomplete="off"  >

        <input type="text" id="task" placeholder="New sid" name="sid3" autocomplete="off"  >

        <button type="submit" name="edit1">Edit</button>

      </div>


<?php

if(isset($_GET['add1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "INSERT INTO scholars (name,sid)
  VALUES ('".$_GET["title1"]."','".$_GET["pid1"]."')";

  $result = mysqli_query($conn,$sql);

  header('location: scholarsadmin.php');


}
if(isset($_GET['edit1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
    $id = $_GET['pid2'];



  $sql = "UPDATE scholars SET name ='".$_GET["title2"]."',sid='".$_GET["sid3"]."' WHERE sid=".$id;


  $result = mysqli_query($conn,$sql);

  header('location: scholarsadmin.php');


}


if(isset($_GET['remove1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "DELETE From scholars
  WHERE sid =".$_GET["pidremove1"];

  $result = mysqli_query($conn,$sql);

  header('location: scholarsadmin.php');


}

if(isset($_GET['search1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "SELECT * From scholars
  WHERE sid =".$_GET["pidsingle1"];


  $result = mysqli_query($conn,$sql);


  header('location: scholarsadmin.php');


}

 ?>
</form>
    <body >
    <table class="table">
                <thead>
                    <tr class="success">
                        <th>Name</th>
                          <th>sid</th>

                    </tr>
                </thead>
                <tbody>

    				<?php
    				$row_number=count($myarr);

    				for($i=0;$i<$row_number;$i++)
    				{
    					$title=$myarr[$i]['name'];
              	$pid=$myarr[$i]['sid'];
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
