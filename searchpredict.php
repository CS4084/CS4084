
<?php
//http://www.codexworld.com/autocomplete-textbox-using-jquery-php-mysql/

    include('config.php');
    
    //get search term
    $searchTerm = trim(mysqli_real_escape_string($db, $_GET['term']));
    
    //get matched data from skills table
    $query = $db->query("SELECT * FROM task WHERE taskTitle LIKE '%".$searchTerm."%' AND taskId NOT IN (SELECT taskId FROM unpublished_tasks) AND taskId NOT IN (SELECT taskId FROM task_claimed)  AND taskId NOT IN (SELECT taskId FROM task_completed) ORDER BY taskTitle ASC");
    while ($row = $query->fetch_assoc()) {
        
		 $data[] = array(
		'label' => $row['taskTitle'],
        'url' => "task.php?taskId=" . $row['taskId']
        
		);
    }
    
    //return json data
    echo json_encode($data);
?>