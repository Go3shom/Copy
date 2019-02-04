
<?php
    $sqlOriginalStatement = "SELECT * FROM `customers` WHERE 1";
    $originalResult = mysqli_query($originalConnection, $sqlOriginalStatement);
    $checkOriginalResult = mysqli_num_rows($originalResult);
    
    echo'<div class="tbl-parent"><table> <tr><th>ID</th> <th>Customer Name</th> <th>Customer Name</th></tr>';
    
    if ($checkOriginalResult > 0) {
        while ($row = mysqli_fetch_assoc($originalResult)) {
            echo "<tr><td>";
            echo $row['CustomerID'];
            echo "</td><td>";
            echo $row['CustomerName'];
            echo "</td><td>";
            echo $row['CustomerAddress'];
            echo "</td></tr>";
        }
        echo "</tr><td></td><td></td><td></td></tr>";
        echo '</table></div>';  
    }
    mysqli_close($originalConnection);
