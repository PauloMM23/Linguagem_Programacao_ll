/*
Uma empressa necessitava criar um sistema para agendamento de reuniôes/compromissos entre os 
colaboradores, em que estes podem reservar algumas salas da empresa, em determinado
dia e horário, para a realização de reuniôes internas do grupo.

Nome das tabelas: Funcionario e Agendamento.
Funcionario (ID, Nome, Email e Cargo)
Agendamento (ID, ID_funcionario, Data, Hora, Local e Tipo(Reunião, comemoração, etc)
*/

#Criando o banco de dados
CREATE database Aula03agenda;

#Usando o banco de dados
USE Aula03agenda;

#Exibindo os bancos existentes
show databases;

#Criando a tabela Funcionario
CREATE table Funcionario (
	ID int not null auto_increment primary key,
	Nome varchar(50),
    Email varchar(50),
    Cargo varchar(30));
   
#Exibe informações da tabela criada
desc Funcionario;

#Corrigindo informação de uma coluna da minha tabela
ALTER table Funcionario modify column Email varchar(50);
ALTER table Funcionario modify column Nome varchar(50);
ALTER table Funcionario modify column Cargo varchar(30);

#Criando tabela já referenciada
/*
CREATE table Agendamento (
	ID int not null auto_increment primary key,
    ID_funcionario int,
    Data date,
    Hora time,
    Local varchar(30),
    Tipo varchar(30),
    foreign key (ID_funcionario) references Funcionario(ID));
    */

#Criando a tabela de Agendamento
CREATE table Agendamento (
	ID int not null auto_increment primary key,
    ID_funcionario int,
    Data date,
    Hora time,
    Local varchar(30),
    Tipo varchar(30));

#Inserindo chave estrangeira na tabela criada
ALTER table Agendamento
add foreign key (ID_funcionario) references Funcionario (ID);

#Cadastrando 5 funcionários no banco
INSERT INTO Funcionario (Nome, Email, Cargo)
VALUES ('Paulo André M.M','paulo@gmail.com','Programador');

INSERT INTO Funcionario (Nome, Email, Cargo)
VALUES ('Pedro Amaral','pedro@gmail.com','Secretário');

INSERT INTO Funcionario (Nome, Email, Cargo)
VALUES ('Jorge Silveira','jorge@gmail.com','Vendedor');

INSERT INTO Funcionario (Nome, Email, Cargo)
VALUES ('Rodrigo Patati Patata','rodrigo@gmail.com','Vendedor');

INSERT INTO Funcionario (Nome, Email, Cargo)
VALUES ('Bianca Castilho','bianca@gmail.com','Diretora');

#Modificando dados da tabela Funcionario
update Funcionario set Cargo = 'Diretora' where ID = 5;
update Funcionario set Cargo = 'Secretário' where ID = 2;
update Funcionario set Nome = 'Pedro Amaral' where ID = 2;

#Recuperando cadastros da tabela Funcionario
select * from Funcionario;
select Nome, Email from Funcionario where id = 4;

#Agendar 5 compromissos data (aaaa-mm-dd), hora (hh:mm)
INSERT INTO Agendamento (ID_funcionario, Data, Hora, Local, Tipo)
VALUES ('1','2022-10-20','16:00','Sala 203','Aula');

INSERT INTO Agendamento (ID_funcionario, Data, Hora, Local, Tipo)
VALUES ('2','2022-11-15','14:00','Sala 199','Reunião');

INSERT INTO Agendamento (ID_funcionario, Data, Hora, Local, Tipo)
VALUES ('1','2022-10-23','14:30','Sala 210','Palestra');

INSERT INTO Agendamento (ID_funcionario, Data, Hora, Local, Tipo)
VALUES ('3','2022-9-10','18:30','Sala 200','Aniversário');

INSERT INTO Agendamento (ID_funcionario, Data, Hora, Local, Tipo)
VALUES ('5','2022-10-27','17:45','Sala 203','Reunião');

#Modificando dados da tabela Agendamento
update Agendamento set Local = 'Sala 203' where ID = 5;
update Agendamento set ID_funcionario = '1' where ID = 3;
update Agendamento set ID_funcionario = '3' where ID = 4;

#Verificando agendamentos realizados
select * from Agendamento;

#Recuperar informações de funcionários que possuam agendamento
select Nome, Cargo from Funcionario, Agendamento where Funcionario.ID = Agendamento.ID_funcionario;

#Quais são os funcionários que reservaram a sala 203
select Funcionario.Nome, Agendamento.Local from Funcionario, Agendamento where Funcionario.ID = Agendamento.ID_funcionario and Agendamento.Local = 'Sala 203';

#Quais são os funcionários que possuem alguma reserva, em algum dia, no horário das 16:00?
select Funcionario.Nome, Agendamento.Data from Funcionario, Agendamento where Funcionario.ID = Agendamento.ID_funcionario and Agendamento.Hora = '16:00';

#Quais as salas e o nome dos funcionários que possuem reserva na data 2022-10-23?
select Agendamento.Local, Funcionario.Nome from Funcionario, Agendamento where Agendamento.Data = '2022-10-23'and Agendamento.ID_funcionario = Funcionario.ID;