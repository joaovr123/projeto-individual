create database projetoI;




use projetoI;

create table saga(
idSaga int primary key auto_increment,
descricao varchar (45)
);

insert into saga value 
(null,"Saga East Blue"),
(null,"Saga Alabasta"),
(null,"Saga Skypiea"),
(null,"Saga Water 7"),
(null,"Saga Thriller Bark"),
(null,"Saga Marineford"),
(null,"Saga Ilha dos Homens-Peixe"),
(null,"Saga Aliança Pirata"),
(null,"Saga Yonkou");

create table usuario ( 
idUsuaario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(45),
fkSaga int,
foreign key (fkSaga) references saga (idsaga)
);

create table votos(
idVotos int auto_increment,
fkSaga int,
foreign key (fksaga) references saga (idSaga),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
primary key(idVotos,fksaga,fkUsuario)
);
 
 select count(idVotos) from saga
 join votos on fkSaga = idSaga
 join usuario on idUsuario = fkUsuario where fkUsuario = idvotos;

