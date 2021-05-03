<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'NfR4/5EjnDIi8avB/BiNyHDF5TKSvdqa5jo9cBH7p3iEFVLiwp2XtNPySfwVIMzxMHniyGKhZNgOSR+9Z5Ewmw==');
define('SECURE_AUTH_KEY',  'DWpwDQm+Gef6gXd4z2GQlfgapZ3uNjUeArZMIdC+R7sakvw8b0O5nlLU9gA3F94knCPYQ0cUk1oBOUFiGpJxpA==');
define('LOGGED_IN_KEY',    'IBN/Zo3KSBRwHAesyoiOKdgGMc48wqszM1HqtthkHxsop0e3VCE/CpjsHkEjDzi7nLiF/qJrgL8wgOEAM1vvNw==');
define('NONCE_KEY',        'UthbsVqRjQlRMNjyFMOamCjz6Vv3B7Ks/pGB1FQqky43moZNVpL7rxmnAkjTNToMzU+nWIFQpHFUAcW9MPfYIw==');
define('AUTH_SALT',        'zmpI9rPCIwdHSHydBQ5ERp8fhq82HCwKs2SYpYlnSONmEdsb2jQ8xkl+ID3vXhFfK9b2tNNnnABVHldTCWlbhg==');
define('SECURE_AUTH_SALT', 'C6uhpj3t8laLRx9zRjxj3YHUEOla26xBZpgjRqG7aRrXQekJnYG3VAyrQyKYTm8pk8yTYXQ7J+eyL6Tt7V/VOw==');
define('LOGGED_IN_SALT',   'wXmOLIE0xsYsfG1qObnn9jY4zr2hj5SNxeqyuuHJbDn29M0vw+flVMpRkl4gwdx85vx+BvH2XVJgU/bVzfeQHw==');
define('NONCE_SALT',       'K5adUYaLnSKacfQQJ3hf7H+jXNBbRqPHku0MQIhmd9wMa5swk24oDWN9iw7MU4bFf0RWCpcJLb925lgtMOpiWQ==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
