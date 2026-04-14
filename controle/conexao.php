<?php
//DataModulo do Delphi ou do Lazarus
class Conexao
{
    //FDConnection do Delphi ou ZeosConnection Lazarus
    private static $dbname = "olojinha";
    private static $host = "127.0.0.1"; //localhost
    private static $user = "root";
    private static $pass = "";
    private static $con = null;


public function __construct()
{
    throw new \Exception('Not implemented');
}

//Cria a função que conecta no banco de dados
public static function conectar () {
    if(null===self::$con) {
        //1 igual é recebe (:=recebe no delphi ou lazarus)
        //php 2 iguais é igual sem fazer diferença de caracteres (= igual no delphi ou lazarus)
        //php 3 iguais é igual fazendo diferenças de caracteres - obs. tem que ser exatamente igual (no delphi ou lazarus)

        try{
            self::$con = new PDO ("mysql:host=" .self::$host.";dbname=" .self::$dbname, self::$user, self::$pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
        } 

        catch (exception $erro){
            die ($erro->getMessage()); //possível erro de banco, tabela, atributo retorna a mensagem direta do banco
        }
    }
    return self::$con;
}

public static function desconectar ()
    {
        self::$con = null;
    }
}

?>