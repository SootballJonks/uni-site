<?php

function uni_post_types() {
  //Event post-type
  register_post_type('event', array(
    'public' => true,
    'labels' => array(
      'name' => 'Events',
      'add_new_item' => 'Add New Event',
      'edit_item' => 'Edit Event',
      'all_items' => 'All Events',
      'singular_name' => 'Event'
    ),
    'menu_icon' => 'dashicons-calendar',
    'has_archive' => true,
    'rewrite' => array('slug' => 'events'),
    'show_in_rest' => true,
    'supports' => array('title', 'editor', 'excerpt')
  ));

  //Program post-type
  register_post_type('program', array(
    'public' => true,
    'labels' => array(
      'name' => 'Programs',
      'add_new_item' => 'Add New Program',
      'edit_item' => 'Edit Program',
      'all_items' => 'All Programs',
      'singular_name' => 'Program'
    ),
    'menu_icon' => 'dashicons-awards',
    'has_archive' => true,
    'rewrite' => array('slug' => 'programs'),
    'show_in_rest' => true,
    'supports' => array('title', 'editor')
  ));
}

add_action('init', 'uni_post_types');