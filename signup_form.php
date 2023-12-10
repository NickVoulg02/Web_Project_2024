<?php
require_once 'config_session.php';
require_once 'view.php';
?>


<!DOCTYPE html> 
<html> 

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Sign Up Page </title>

<style> 
Body {
  font-family: Calibri, Helvetica, sans-serif;
  background-color: darkgreen;
}
button { 
       background-color: grey; 
       width: 100%;
        color: lightgreen; 
        padding: 15px; 
        margin: 10px 0px; 
        border: none; 
        cursor: pointer; 
         } 
 form { 
        border: 3px solid #f1f1f1; 
    } 
 input[type=text], input[type=password] { 
        width: 100%; 
        margin: 8px 0;
        padding: 12px 20px; 
        display: inline-block; 
        border: 2px solid green; 
        box-sizing: border-box; 
    }
 button:hover { 
        opacity: 0.7; 
    } 
  .cancelbtn { 
        width: auto; 
        padding: 10px 18px;
        margin: 10px 5px;
    } 
      
   
 .container { 
        padding: 25px; 
        background-color: lightblue;
    } 
</style> 
</head>  

<body>  
    <center> <h1> System Sign Up </h1> </center> 
    <form action="signup_handler.php" method="post">
        <div class="container"> 
            <label>Username : </label> 
            <input type="text" placeholder="Enter Username" name="username">
            <label>Password : </label> 
            <input type="password" placeholder="Enter Password" name="pwd">
            <button type="submit">Sign Up</button> 
        </div> 
    </form>   

    <?php
    check_signup_errors();
    ?>



</body>   
</html>


