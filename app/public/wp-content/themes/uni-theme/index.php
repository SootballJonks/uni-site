<!-- <?php
  //Some examples...
  $names = array("Celaena", "Rowan", "Chaol", "Dorian"); //php array
  
  $count = 0; //php variable

  while($count < count($names)) {
    echo "<li>Hi, my name is $names[$count].</li>";
    $count++;
  }
?>

<h1><?php bloginfo('name'); ?></h1>
<p><?php bloginfo('description'); ?></p> -->

<?php 
  while(have_posts()) {
    the_post(); ?>
    <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
    <?php the_content(); ?>
    <hr>
  <?php }
?>