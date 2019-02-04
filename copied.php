
<?php
    $sqlCopiedStatement = "INSERT [IGNORE] INTO `CopiedCopmany.Customers` WHERE 1 SELECT * FROM `OriginalCopmany.Customers`";
    // $sqlCopiedStatement = "SELECT * FROM `Customers`";

    $copiedResult = mysqli_query($copiedConnection, $sqlCopiedStatement);
    $checkCopiedResult = mysqli_num_rows($copiedResult);

    var_dump($copiedResult);

    echo'<table> <tr><th>ID</th> <th>Customer Name</th> <th>Customer Address</th></tr>';
    
    if ($copiedResult > 0) {
        while ($row = mysqli_fetch_assoc($copiedResult)) {
            echo "<tr><td>";
            echo $row['CustomerID'];
            echo "</td><td>";
            echo $row['CustomerName'];
            echo "</td><td>";
            echo $row['CustomerAddress'];
            echo "</td></tr>";
        }
        echo "</tr><td></td><td></td><td></td></tr>";
        echo '</table>';
    }
    mysqli_close($copiedConnection);
