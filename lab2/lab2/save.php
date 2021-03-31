<html>

    <body>
        Hello, <?php echo $_POST["name"] ?><br>
        You are studying at <?php echo $_POST["class"] . ", "; echo $_POST["university"];?><br>
        My hometown: <?php echo $_POST["hometown"]; ?><br>
        My hobby: <br><?php
                    
                    if(!empty($_POST['hobby']))
                    foreach ($_POST['hobby'] as $value){
                        echo "+  " .$value ."<br> ";
                    }
                    ?>
    </body>

</html>