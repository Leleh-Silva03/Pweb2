<?php
require './controle/conexao.php';
$pdo = conexao::conectar();
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$sqlpro="";