<?php

session_start();
$host = getenv('IP');
$username = getenv('C9_USER');
$password = '';
$dbname = 'HireMe';


//var_dump($_GET); // checking get array
//var_dump($_POST); // checking post array  -- always showing empty for some reason
//var_dump($_REQUEST); //checking the request array

$conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

$email = $_REQUEST["name"]; // retrieve the email
$pwrd = md5( $_REQUEST["pwrd"]); // retrieve password and has it immediately

$pwrd_patt ="/[a-zA-Z]+[0-9]+/";
$email_patt ="/[a-zA-Z]+@[a-zA-Z]+\.[a-zA-Z]{3}$/";

if (preg_match($pwrd_patt,$pwrd) && preg_match($email_patt,$email)) {
    
    $stmt = $conn->query("SELECT firstname FROM users WHERE e_mail='$email' AND password='$pwrd'");
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
    if(empty($results) ){    
        $res = 'false';
        echo $res;
     
    }else{
        $res = 'true';
        echo $res;
    }
}else{
    $res = 'false';
    echo $res;
}




?>