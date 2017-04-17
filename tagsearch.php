
<?php
//http://www.codexworld.com/autocomplete-textbox-using-jquery-php-mysql/

    include('config.php');
    
    //get search term
    $searchTerm = trim(mysqli_real_escape_string($db, $_GET['term']));
    
    //get matched data from skills table
    $query = $db->query("SELECT * FROM tags WHERE tag LIKE '".$searchTerm."%' ORDER BY tag ASC");
    while ($row = $query->fetch_assoc()) {
        $data[] = $row['tag'];
    }
    
    //return json data
    echo json_encode($data);
?>