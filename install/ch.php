<?php
ini_set('display_errors', 1);
$files = scandir('data/');
foreach($files as $f)
{
    if($f == '.' || $f == '..')
        continue;
    $cache = unserialize(file_get_contents('data/' . $f) );
    var_dump($cache);
}

?>
