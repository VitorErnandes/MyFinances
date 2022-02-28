<?php
include("Conexao.php");

class GrupoMovimentacao extends Conexao{

    public function listarGrupoMovimentacao($idUsuario = 1){
        $pdo = $this->conectar();
        $sql = $pdo->prepare("select * from grupo_movimentacao");
        $sql->execute();

        $fetchGrupoMovimentacao = $sql->fetch();

        return $fetchGrupoMovimentacao;
    }

}