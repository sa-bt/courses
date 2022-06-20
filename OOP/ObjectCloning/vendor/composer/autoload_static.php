<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitf7ac45a2aec114da5e63120130c0ec23
{
    public static $prefixLengthsPsr4 = array (
        'O' => 
        array (
            'ObjectCloning\\' => 14,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'ObjectCloning\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Classes',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
        'ObjectCloning\\User' => __DIR__ . '/../..' . '/Classes/User.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitf7ac45a2aec114da5e63120130c0ec23::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitf7ac45a2aec114da5e63120130c0ec23::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitf7ac45a2aec114da5e63120130c0ec23::$classMap;

        }, null, ClassLoader::class);
    }
}
