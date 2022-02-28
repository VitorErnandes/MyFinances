<?php

class Conexao
{
    public function conectar(){
        $host = "localhost";
        $usuario = "root";
        $senha = "4[lzO!S4N4]6*(u3";
        $bd = "MyFinances";

        $mysqli = new mysqli($host, $usuario, $senha, $bd);

        /* check connection */
        if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        }
        return $mysqli;
    }
}
