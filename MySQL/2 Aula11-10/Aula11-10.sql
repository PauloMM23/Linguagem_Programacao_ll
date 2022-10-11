#Criar um banco chamado Aula02
#Criar uma tabela chamada Computador, com os seguintes dados:
#id, modelo, fabricante, tipo (notebook, netbook, desktop...), preço e data de fabricação

CREATE database aula02;

USE aula02;

CREATE table Computador (
	ID int not null auto_increment primary key,
	Modelo varchar(20),
	Fabricante varchar(20),
	Tipo varchar(15),
	Preço Real,
	DataFabricacao date);
    
#Apagar/deletar a tabela
drop table Computador;

#Mostrar informações da tabela
desc Computador;

INSERT INTO Computador (Modelo, Fabricante, Tipo, Preço, DataFabricacao)
VALUES ('Inspirion 14','Dell','Notebook','2499.99','2017-7-18');

INSERT INTO Computador (Modelo, Fabricante, Tipo, Preço, DataFabricacao)
VALUES ('MacBook Air','Apple','Notebook','9999.99','2019-9-19');

INSERT INTO Computador (Modelo, Fabricante, Tipo, Preço, DataFabricacao)
VALUES ('Inspirion 12','Dell','Desktop','1899.99','2015-5-10');

INSERT INTO Computador (Modelo, Fabricante, Tipo, Preço, DataFabricacao)
VALUES ('Galaxy Book','Samsung','Notebook','3999.99','2018-2-23');

INSERT INTO Computador (Modelo, Fabricante, Tipo, Preço, DataFabricacao)
VALUES ('Aspire','Acer','Netbook','1799.99','2016-6-26');

#Verificando registros inseridos
select * from Computador;
select Modelo, Fabricante, Preço from Computador;

#Recuperando informações do banco onde o nome do fabricante é Dell
select * from Computador where Fabricante = 'Dell';

#Recuperando informações do banco onde o nome do fabricante começa com 'A'
select * from Computador where Fabricante like 'Ap';

#Atualizar o fabricante e o preço de um registro e verificar se foi realizado com sucesso
update Computador set Fabricante = 'Positivo', Preço = 2999.99 where ID = 5;

#Deletar uma informação da tabela
delete from Computador where ID = 5;
delete from Computador where Tipo = 'Notebook';