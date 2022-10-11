show databases;
#Criando um banco de dados
CREATE database aulaDB;
#Selecionar para o uso banco a ser utilizado
USE aulaDB;
#Exibir as tabelas existentes no banco
SHOW tables;
#Criar uma tabela no banco
CREATE table Pessoa (
	ID int not null auto_increment primary key,
    Nome varchar(40),
    Email varchar(60) unique,
    DataNascimento date,
    Matricula int unique);
#Ver descritivo da tabela
DESC Pessoa;
#Alterando minha tabela
ALTER table Pessoa drop Matricula;
#Inserir campo na minha tabela
ALTER table Pessoa add Cidade varchar(30) after Email;
#Inserir registros na minha tabela
INSERT INTO Pessoa VALUES (NULL,'Paulo André','paulo@gmail','Santa Maria','2001-4-23');

INSERT INTO Pessoa (Nome, Email, Cidade, DataNascimento) 
VALUES ('Marcos','marcos@gmail','Santa Maria','1998-2-3');

INSERT INTO Pessoa (Nome, Email, Cidade, DataNascimento) 
VALUES ('Lucas','lucas@gmail','Santa Maria','1993-3-25');

#Consultar / recuperar todos os dados da minha tabela
SELECT * FROM Pessoa;
#Consulta customizada
SELECT Nome, Cidade FROM Pessoa;
SELECT Nome FROM Pessoa WHERE id = 3;

/*Exercicios
	Crie um banco de dados chamado Aula01 que possua uma tabela chamada
    Veiculo. Essa tabela possui campos para : código de identificação (ID),
    marca, modelo, cor, ano de fabricação e valor (tipo de dado: REAL)
    
    Assim, utilize a linguagem SQL para:
    1- Inserir 5 veículos na base de dados;
    2- Consultar os veículos cujo código >3;
    3- Consultar a marca dos veículos cadastrados;
    4- Consultar o valor de todos os carros cadastrados;
    5- Consultar quais são os veículos da marca GM;
*/

);