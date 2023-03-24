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
        <h1>Armstrong numbers</h1>
        <hr>
        <form action ="" method="post">
            Enter number: <br>
            <input type="number" name="no"> <br>
            <input type="submit" name="submit" value="Check Armstrong"> <br>
        </form>
    </body>
</html>
<?php
    $sum=0;
    if(isset($_POST['submit'])){
        $no = $_POST['no'];
    }
    $x = $no;
    while($x != 0){
        $rem = $x % 10 ;
        $sum = $sum + ($rem * $rem * $rem);
        $x = $x / 10 ;
    }
    if($no == $sum){
        echo $sum." is Armstrong Number";
    }else{
        echo $sum." is not Armstrong Number";
    }
?>