<?php
   $url = (!empty(filter_input(INPUT_GET, 'url', FILTER_DEFAULT)) ? filter_input(INPUT_GET, 'url', FILTER_DEFAULT) : 'home');
   //var_dump($url);
   //echo "<br>";

   $url = array_filter(explode('/', $url));
   //var_dump($url);
   //echo "<br>";

   $arquivo = 'paginas/' . $url[0] . '.php';
   //var_dump($arquivo);
?>

