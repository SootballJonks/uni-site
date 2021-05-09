<?php

function uni_post_types() {
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
}

add_action('init', 'uni_post_types');