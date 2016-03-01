<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(
	'*' => array(
        'omitScriptNameInUrls' => true,
    ),

    'dev.craftblog' => array(
        'server' => 'localhost',
        'user' => 'root',
        'password' => '',
        'database' => 'craftblog',

         'environmentVariables' => array(
            'basePath' => 'C:/wamp/www/craftblog/public/',
            'baseUrl'  => 'http://dev.craftblog.com/',
        )
    ),
);
