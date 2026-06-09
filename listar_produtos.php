<?php
$op = filter_input(INPUT_GET,'op'); //cat ou sub
$id = filter_input(INPUT_GET,'id'); 

echo 'operação - ' .$op. ' | identificação - '.$id;

?>