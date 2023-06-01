<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'data' );

/** Database username */
define( 'DB_USER', 'www-data' );

/** Database password */
define( 'DB_PASSWORD', 'test' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '1y/P1u/nD&{$_J~8bw{umb-vN}gu_&d+XonJ1QV8H#HB#N7!w{PzrbzVcXAdFs9z' );
define( 'SECURE_AUTH_KEY',   '.BK3rvm|6 rfDm0uhI`os&y,$Q,jy%>i*Rjgjo84QcA,dW(cRB<+dGq&u|IDqER3' );
define( 'LOGGED_IN_KEY',     'SSbad=&SL yK@L}7Q.f<|~!UsFA Kizra)C^~B!9#<Z3d8^Po K0?a:~~;6nanBh' );
define( 'NONCE_KEY',         '-_s (lj3cOhr?{Gi2v-7G%in1nMc#bR*pFIeCjtJlSrGD#HS/*)+ZB]^LblTt6[d' );
define( 'AUTH_SALT',         '+1}(4tv8J1&*)IUy]KMx{u> lTrW.Ln2#jO+z^rqk;1RCS*5u+;Q>k`S1Sz=7A7J' );
define( 'SECURE_AUTH_SALT',  'yD2JTNI:q#HIr2Q jzAO|OAqYUN6DX%<T c,TnVhuWHdB8Nx}}MGRS{-uHFS}^RC' );
define( 'LOGGED_IN_SALT',    'a)}NA& pbPwbFN<LlD0tK]hn%9ha}TvnzSo;Q(a#PhY?sgHu:[gg3kru*uf=IjS[' );
define( 'NONCE_SALT',        'TdZ:gGhnleOeoO<xh?NS9u^D0oPEMj_O%:}v@o#!i!nk4DO/]VT0]]6_dn5^O5R]' );
define( 'WP_CACHE_KEY_SALT', 'k7[4|/AY~$oP)sBDtF`~F8ynyMAc)%xBcMLr_)|0G)WMpP9J(u@rF*BMmqu}6Wvu' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
