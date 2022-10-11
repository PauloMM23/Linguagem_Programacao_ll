#Exercício
/*
A adoção de animais de estimação é um gesto humano, solidário e franciscano. Assim, também
pensa uma ONG fictícia chamada cetCenter. Essa ONG precisa de um banco de dados para...
Dessa forma, você foi designado para criar essa base de dados e fornecer (via consultas SQL)
tosas as informações que o diretor e os funcionários dessa ONG lhe solicitarem

1.1- Crie o banco vetCenter
1.2- Crie uma tabela Mascotes contendo (id, nome, tipo (cão, gato, capivara), sexo, raça,
idade, data que foi encontrado, data que foi inserido na base de dados,
estado de saúde (ótimo, razoável, necessita cuidados)
1.3- Cadastre 10 bichinhos
Após o cadastro, responda as seguintes perguntas:
2.1- Qual o nome de todos os bichinhos cadastrados na base de dados?
2.2- Quais mascotes possuem mais do que 5 anos de idade?
2.3- Quais são as raças que necessitam cuidados?
2.4- Qual o sexo dos mascotes que estão ótimos de saúde?
2.5- Tem algum gato que necessita de cuidados?
2.6- Quais cães que estão razoáveis de saúde?
2.7- Quais os dias que foram encontrados os bichos do sexo feminino?
2.8- Qauis os dias que foram cadastrados no sistema os bichos da raça vira-lata?
2.9-Qual tipo de mascote cujo nome é Rex?
2.10- Qual a raça e a idade da cachorrinha Cindy?

3- Alterações 
3.1-Altere a raça de todos os cães para SRD (sem raça definida)
3.2-Altere para ótimo o estado de todos os gatos;

4-Exclusões
4.1 Exclua do banco de daos todos os bichinhos de estimação menores de 2 anos.
4.2 Exclua do banco de dados todos os gatos do sexo masculino.
 */

CREATE database vetCenter;

USE vetCenter;

CREATE table Mascotes (
	ID int not null auto_increment primary key,
	Nome varchar(20),
    Tipo varchar(10),
    Sexo varchar(15),
    Raça varchar(20),
    Idade int,
    DataEncontrado date,
    DataInserido date,
    Saude varchar(30));
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Rex','Cão','Masculino','Vira-lata',5,'2020-4-27','2020-4-30','Razoável');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Bills','Gato','Masculino','Sphynx',7,'2021-5-20','2021-5-27','Ótimo');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Vilma','Cão','Feminino','Vira-lata',3,'2020-5-29','2020-6-3','Cuidados');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Bacon','Porco','Feminino','Micro-Pig',5,'2019-3-14','2019-3-19','Razoável');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Pablo','Gato','Masculino','Vira-lata',2,'2018-7-7','2018-7-8','Cuidados');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Patolino','Pato','Masculino','Pato',5,'2022-4-23','2022-4-29','Ótimo');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Paula','Cão','Feminino','Poodle',9,'2015-1-13','2015-1-14','Razoável');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Jorge','Lagarto','Masculino','Teiú',3,'2021-2-4','2021-2-7','Ótimo');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Rafael','Tartaruga','Masculino','Pintada',5,'2020-9-5','2020-9-15','Cuidados');
    
    INSERT INTO Mascotes (Nome, Tipo, Sexo, Raça, Idade, DataEncontrado, DataInserido, Saude)
    VALUES ('Mel','Gato','Feminino','Vira-lata',10,'2010-8-20','2010-8-30','Cuidados');
    
select * from Mascotes;
    
#2.1- Qual o nome de todos os bichinhos cadastrados na base de dados?
select Nome from Mascotes;
    
#2.2- Quais mascotes possuem mais do que 5 anos de idade?
select * from Mascotes where Idade >=5;
    
#2.3- Quais são as raças que necessitam cuidados?
select * from Mascotes where Saude = 'Cuidados';
    
#2.4- Qual o sexo dos mascotes que estão ótimos de saúde?
select Sexo from Mascotes where Saude = 'Ótimo';

#2.5- Tem algum gato que necessita de cuidados?

    
#2.6- Quais cães que estão razoáveis de saúde?
    
    
#2.7- Quais os dias que foram encontrados os bichos do sexo feminino?


#2.8- Qauis os dias que foram cadastrados no sistema os bichos da raça vira-lata?

#2.9-Qual tipo de mascote cujo nome é Rex?
#2.10- Qual a raça e a idade da cachorrinha Cindy?
#3.1-Altere a raça de todos os cães para SRD (sem raça definida)
#3.2-Altere para ótimo o estado de todos os gatos;
#4.1 Exclua do banco de daos todos os bichinhos de estimação menores de 2 anos.
#4.2 Exclua do banco de dados todos os gatos do sexo masculino.