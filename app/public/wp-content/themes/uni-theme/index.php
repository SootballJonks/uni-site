<?php
  //Some examples...
  $names = array("Celaena", "Rowan", "Chaol", "Dorian");
  
  $count = 0;

  while($count < count($names)) {
    echo "<li>Hi, my name is $names[$count].</li>";
    $count++;
  }
?>

<h1><?php bloginfo('name'); ?></h1>
<p><?php bloginfo('description'); ?></p>

