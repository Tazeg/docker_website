<?php
$pdo = new PDO('mysql:host=localhost;dbname=mydb', 'myuser', 'mypasswd');
$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

$cursor = $pdo->prepare('SELECT * FROM mytable');
$cursor->execute();
$rows = $cursor->fetchAll();
$cursor->closeCursor();

echo count($rows).' records in mytable :<br>';
foreach($rows as $row) {
     echo 'id='.$row['id'].', ';
     echo 'name='.$row['name'];
     echo '<br>'.PHP_EOL;
     }
?>
