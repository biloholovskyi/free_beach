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
define( 'DB_NAME', 'free' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'dev2' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '111' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'g.])P$ ),wpik^lwy001J~ZYi2t~yH5?+HLz0viI}bL0e}PCF}d4PvQGA66rbICd' );
define( 'SECURE_AUTH_KEY',  'dC  VTuv(1R#Y0ds*`e8qL;R^& OS!fEf`/{Jc$W4C3u@;,wRqN]}]A<`ij7<.~K' );
define( 'LOGGED_IN_KEY',    ':}C e?G0sagfj: 0~#ZdEIU_M6dL`tS-adS]Ulb}[b?r_;:!+,z??.lTHn{EU-&R' );
define( 'NONCE_KEY',        '.3Hgy&pM(L8.8PK2<Xs?ZdOLCzt#44&nR<stAxg,L^=@/bZ#$q0bEPhnG$2:HxH4' );
define( 'AUTH_SALT',        '#d?[`Ce$gHO_O.;N/jK66#giUfYu2@`|A+>Ys$ZL=i)Ifl|>07}T W|1oB}Sb|:l' );
define( 'SECURE_AUTH_SALT', '>WTe_R%C:~4kb9|S1!$s?*} 5%qKHQX/hk7EjMsj3WrHVI` CF@DArN0VxAa<%9<' );
define( 'LOGGED_IN_SALT',   'T!G$Y*R^825Wtqwgi{lqq ^U1}Zo:MEG)AF CYog]d8YGV8]W<eR+~;nH+$%z^(H' );
define( 'NONCE_SALT',       'm;j[)Qy4EVP%bMRK 4E>D_9&O9NL=Xo<3XQLU>I$L7J.tgH]S|Bf`]:y:O289R] ' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
