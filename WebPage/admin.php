<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
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
      <div class="title">

    <h1 class="h1"> ADMIN-Publications Table</h1>
  </div>

  <div class="otherpages">

    <a href="titleadmin.php">Title Table</a>
    <a href="journaladmin.php">Journal Table</a>
    <a href="schooladmin.php">School Table</a>
    <a href="scholarsadmin.php">Scholars Table</a>
  </div>

  <div class="removebutton">

    <form class="removeall" action="admin.php" method="get">

        <button type="submit" id="removeallbtn" name="removeall">Remove All</button>
      </form>
    </div>

      <?php
      if(isset($_GET['removeall']))
{
  $conn =mysqli_connect("localhost","root","","Project");

   $sql = "DELETE from Publications";
 $result = mysqli_query($conn,$sql);
 header('location: admin.php');


}

?>

    <form class="" action="admin.php" method="get">
      <div class="add">
        <h3>Add new record</h3>
        <input type="text" id="task" placeholder="Title" name="title1" autocomplete="off"  >
        <input type="text" id="task" placeholder="Pid" name="pid1" autocomplete="off"  >
        <input type="text" id="task" placeholder="Subject" name="subject1" autocomplete="off"  >
        <input type="text" id="task" placeholder="Date" name="date1" autocomplete="off"  >
        <button type="submit" name="add1">Add</button>

      </div>

      <div class="remove">
        <h3>Remove a record</h3>
        <input type="text" id="task" placeholder="Pid" name="pidremove1" autocomplete="off"  >

        <button type="submit" name="remove1">Remove</button>

      </div>

      <div class="singleitem">
        <h3>Search for a single item</h3>
        <input type="text" id="task" placeholder="Pid" name="pidsingle1" autocomplete="off"  >

        <button type="submit" name="search1">Search</button>

      </div>

      <div class="edit">
        <h3>Edit Record</h3>
        <h5>if you dont want to change a spesific column please type it again.</h5>

          <input type="text" id="task" placeholder="Pid that you want to edit" name="pid2" autocomplete="off"  >

        <input type="text" id="task" placeholder="Title" name="title2" autocomplete="off"  >

        <input type="text" id="task" placeholder="Subject" name="subject2" autocomplete="off"  >
        <input type="text" id="task" placeholder="Date" name="date2" autocomplete="off"  >
        <input type="text" id="task" placeholder="New pid" name="pid3" autocomplete="off"  >

        <button type="submit" name="edit1">Edit</button>

      </div>


<?php

if(isset($_GET['add1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "INSERT INTO publications (title,pid,subject,date)
  VALUES ('".$_GET["title1"]."','".$_GET["pid1"]."','".$_GET["subject1"]."','".$_GET["date1"]."')";

  $result = mysqli_query($conn,$sql);

  header('location: admin.php');


}
if(isset($_GET['edit1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
    $id = $_GET['pid2'];



  $sql = "UPDATE publications SET title ='".$_GET["title2"]."',subject='".$_GET["subject2"]."',date='".$_GET["date2"]."',pid='".$_GET["pid3"]."' WHERE pid=".$id;


  $result = mysqli_query($conn,$sql);

  header('location: admin.php');


}


if(isset($_GET['remove1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "DELETE From Publications
  WHERE pid =".$_GET["pidremove1"];

  $result = mysqli_query($conn,$sql);

  header('location: admin.php');


}

if(isset($_GET['search1']))
{
    $conn =mysqli_connect("localhost","root","","Project");
  $sql = "SELECT * From Publications
  WHERE pid =".$_GET["pidsingle1"];


  $result = mysqli_query($conn,$sql);


  header('location: admin.php');


}

 ?>
</form>
    <body style=>
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
              	$pid=$myarr[$i]['pid'];
              $subject=$myarr[$i]['subject'];
              $date=$myarr[$i]['date'];
    				echo "<tr>";
    					echo "<td>" .$title.  "</td>";
              echo "<td>" .$pid.  "</td>";
              echo "<td>".$subject .  "</td>";
    					echo"<td> " .$date.  "</td>";

            echo "</tr>";
    				}

    				?>
    				</tbody>




    </table>


  </body>
</html>
