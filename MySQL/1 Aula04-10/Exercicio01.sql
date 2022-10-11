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
CREATE database Aula01;
USE Aula01;
CREATE table Veiculo (
	ID int not null auto_increment primary key,
    Marca varchar(15),
    Modelo varchar(15),
    Cor varchar(15),
    AnoFabricacao int,
    Valor REAL);
    
    INSERT INTO Veiculo (Marca, Modelo, Cor, AnoFabricacao, Valor) 
	VALUES ('Toyota','Corolla','Branco','2022','80000');
    
    INSERT INTO Veiculo (Marca, Modelo, Cor, AnoFabricacao, Valor) 
	VALUES ('Mercedes','GLC 300','Vermelho','2022','400000');
    
    INSERT INTO Veiculo (Marca, Modelo, Cor, AnoFabricacao, Valor) 
	VALUES ('BMW','320i GP','Azul','2018','200000');
    
    INSERT INTO Veiculo (Marca, Modelo, Cor, AnoFabricacao, Valor) 
	VALUES ('GM','TRACKER','Prata','2019','350000');
    
    INSERT INTO Veiculo (Marca, Modelo, Cor, AnoFabricacao, Valor) 
	VALUES ('Ford','Mustang','Verde','2015','275000');
    
    SELECT * FROM Veiculo;
    
    SELECT * FROM Veiculo WHERE id >=3;
    
    SELECT Marca FROM Veiculo;
    
    SELECT Valor FROM Veiculo;
    
    SELECT * FROM Veiculo WHERE Marca = "GM";
