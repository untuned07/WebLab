<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Practical 12</title>
        <style>
            input::-webkit-outer-spin-button, input::-webkit-inner-spin-button{
                display: none;
            }
        </style>
    </head>
    <body>
        <h1>Add two numbers</h1>
        <hr>
        <form action ="" method="post">
            First Value: <br>
            <input type="number" name="no1"> <br>
            Second Value: <br>
            <input type="number" name="no2"> <br>
            <input type="submit" name="submit" value="SUM"> <br>
        </form>
    </body>
</html>
<?php
    $sum="";
    if(isset($_POST['submit'])){
        $no1 = $_POST['no1'];
        $no2 = $_POST['no2'];
        $sum = $no1 + $no2;
    }
?>
Result: <?php echo $sum; ?>
