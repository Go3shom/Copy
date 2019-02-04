
<?php include_once 'connectionStrings.php'; ?>

<!DOCTYPE html>
<html>
    <head>
        <title>Data Copy</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <div class="container">
            <?php
                include_once 'original.php';
                
                echo '<div class"vl">';
                    include_once 'copied.php';
                echo '</div>';
            ?>
        </div>

    </body>
</html>
