<?php

include("../model/GrupoMovimentacao.php");

class GrupoMovimentacaoController extends GrupoMovimentacao{

    public function listarGrupoMovimentacaoCTRL(){
        $GrupoMovimentacao = new GrupoMovimentacao();
        $arrayGrupos = $GrupoMovimentacao->listarGrupoMovimentacao();
        
        return $arrayGrupos;
    }

}