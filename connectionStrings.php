
<?php
    $serverName="localhost";
    $userName="root";
    $password="1234";
    $originalDbName="originalcopmany";
    $copiedDbName="copiedcopmany";

    $originalConnection = mysqli_connect($serverName, $userName, $password, $originalDbName);

    if (mysqli_connect_errno()) {
        die("<b>Original Connection Falid: </b>" . mysqli_connect_error());
    }
    
    $copiedConnection = mysqli_connect($serverName, $userName, $password, $copiedDbName);

    if (mysqli_connect_errno()) {
        die("<b>Copied Connection Falid: </b>" . mysqli_connect_error());
    }