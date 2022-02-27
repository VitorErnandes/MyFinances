create table usuario(
    UsuarioID int AUTO_INCREMENT not null,
    NomeUsuario varchar(200),
    LoginUsuario varchar(200),
    senhaUsuario varchar(200) not null,
    CONSTRAINT PK_Usuario PRIMARY KEY (UsuarioID)
);

create table grupo_movimentacao(
    GrupoMovimentacaoID int AUTO_INCREMENT not null,
    Nome varchar(100) not null,
    Descricao varchar(200) not null,
    UsuarioID int not null,
    CONSTRAINT PK_Grupo_Movimentacao PRIMARY KEY (grupoMovimentacaoID),
    CONSTRAINT FK_Usuario FOREIGN KEY (UsuarioID) references usuario (UsuarioID)
);

create table movimentacao(
    MovimentacaoID int AUTO_INCREMENT not null,
    Tipo int not null,
    Descricao varchar(200) not null,
    GrupoMovimentacaoID int,
    UsuarioID int not null,
	CONSTRAINT PK_Movimentacao PRIMARY key (MovimentacaoID),
    CONSTRAINT FK_Grupo_Movimentacao FOREIGN KEY (GrupoMovimentacaoID) references grupo_movimentacao (GrupoMovimentacaoID),
    CONSTRAINT FK_Usuario_Movimentacao FOREIGN KEY (UsuarioID) references usuario (UsuarioID)
);