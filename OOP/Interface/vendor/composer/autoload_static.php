<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit5a5cf429206fc5231d85946b5cb9e486
{
    public static $prefixLengthsPsr4 = array (
        'I' => 
        array (
            'InterfaceCourse\\' => 16,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'InterfaceCourse\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Classes',
        ),
    );

    public static $classMap = array (
        'AccessModifier\\ChildClass' => __DIR__ . '/../..' . '/Classes/ChildClass.php',
        'AccessModifier\\Visibility' => __DIR__ . '/../..' . '/Classes/Visibility.php',
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
        'Interface\\SampleInterface' => __DIR__ . '/../..' . '/Classes/SampleInterface.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit5a5cf429206fc5231d85946b5cb9e486::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit5a5cf429206fc5231d85946b5cb9e486::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit5a5cf429206fc5231d85946b5cb9e486::$classMap;

        }, null, ClassLoader::class);
    }
}
