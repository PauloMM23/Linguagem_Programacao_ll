#Criando o banco de dados
CREATE database ProjectMacro;

#Usando o banco de dados
USE projectMacro;

#Exibindo os bancos existentes
show databases;

#Criando a tabela Macro
CREATE table Macro (
	ID int not null auto_increment primary key,
	Tecla varchar(50),
    Acao varchar(50));
   
#Exibe informações da tabela criada
desc Macro;