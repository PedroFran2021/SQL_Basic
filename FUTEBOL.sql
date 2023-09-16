create table jogador(
idJogador int primary key,
nome varchar(100) not null,
salario numeric (10,2),
dataNascimento date,
idPosicao int not null,
idTimes int null,
foreign key(idPosicao) references posicao(idPosicao),
foreign key(idTimes) references times (idTimes));
set dateformat dmy;

insert into jogador (idJogador, nome, salario, dataNascimento, idPosicao, idTimes)
values (1, 'Everson', 150000, '01/10/1995', 1, 1)
, (2, 'Incrível Hulk', 850000, '12/10/1990', 4, 1)
, (3, 'Fábio', 100000, '11/04/1982', 1, 2)
, (4, 'Edu', 150000, '10/09/1983', 4, 2)
, (5, 'Diego Tardeli', null, '03/05/1991', 4, null);
