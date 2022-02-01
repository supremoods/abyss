<?php
    include('dbConnect.php');

    $artId = $_REQUEST['id'];
    $query = "UPDATE art_abyssals SET featured_gallery = 'NULL' WHERE art_id = $artId";
    $cmd = mysqli_query($conn,$query); 

    include('loadFeat.php');

?>