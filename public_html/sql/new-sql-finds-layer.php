<?php 
  $host         = "127.0.0.1";
  $user         = "lanuser";
  $pass         = "wibble";

  $databaseName = "AllanK";
  $tableName    = "finds";

  $myCon = new mysqli($host,$user,$pass,$databaseName);

  //echo $myCon->host_info  ."<br>";

  $myquery = "SELECT * FROM $tableName";
  $result = $myCon->query($myquery);  
  
  $myData = array();

  //echo "Reverse order...<br>";

  //for ($row_no = $result->num_rows - 1; $row_no >= 0; $row_no--) {
  for ($row_no = 0; $row_no < $result->num_rows - 1; $row_no++) {
    $result->data_seek($row_no);
    $row = $result->fetch_assoc();
    $myData [] = $row;
    //echo " id = " . $row['Name'] . " id = " . $row['desc'] . "<br>";
  }
  echo json_encode($myData );
?>