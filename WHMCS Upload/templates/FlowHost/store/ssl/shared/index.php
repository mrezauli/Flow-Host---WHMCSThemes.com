<?php
$root = (!empty($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/';
echo '<META http-equiv="refresh" content="0;URL='.$root.'">';
?>