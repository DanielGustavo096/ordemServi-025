CREATE DATABASE Daniel2ºINFO;
USE Daniel2ºINFO;

CREATE TABLE tbusuarios(
	id_user int primary key,
    usuario varchar (15) not null,
    fone varchar (15),
    login varchar (15) not null unique,
    senha varchar (250) not null,
    perfil varchar (20) not null
);

DESCRIBE tbusuarios;

SELECT * FROM tbususarios;

INSERT INTO tbusuarios(id_user, usuario, fone, login, senha, perfil)
	values(1, "Daniel Gustavo", "66999914260", "Daniel Gustavo", "123456789", "Admin");
    
CREATE TABLE tbclientes(
	idcli int primary key auto_increment,
    nomecli varchar (50) not null,
    endcli varchar (100),
    fonecli varchar (15) not null,
    emailcli varchar (50) unique
);

INSERT INTO tbclientes(nomecli, endcli, fonecli, emailcli)
	values ("João da Silva", "Rua XV", "66996375233", "joaosilva@gmail.com");
    
SELECT * FROM tbclientes;
    
CREATE TABLE tbos(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    tipo varchar (15)not null,
    situacao varchar (20) not null,
    equipamento varchar (15) not null,
    defeito varchar (50),
    servico varchar (150),
    tecnico varchar (30),
    valor decimal (10,2),
    idcli int not null,
    foreign key (idcli) references tbclientes(idcli)
);