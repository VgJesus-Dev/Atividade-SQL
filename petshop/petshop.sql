/*Crie um banco de dados utilizando a linguagem SQL*/
CREATE DATABASE sistemapetshop;
/*Crie as 4 tabelas de cliente, veterinário, consulta e animal, contendo em cada uma das tabelas o seu atributo com seu respectivo datatype. (Capture a tela do XAMPP)*/
CREATE TABLE cliente(
    cpf CHAR(15) primary key NOT NULL,
    nomecliente VARCHAR (180) NOT NULL, 
    telefonecliente INT(15) NOT NULL
);
CREATE TABLE veterinario(
    crmv CHAR(20) primary key NOT NULL,
    nomeveterinario VARCHAR(180) NOT NULL,
    salario INT(12) NOT NULL,
    dataadmissao DATE NOT NULL
);
CREATE TABLE consulta(
    dia DATE NOT NULL,
    horario TIME NOT NULL,
    motivo VARCHAR(200)
);
CREATE TABLE animal(
    codigoanimal CHAR(10) primary key NOT NULL,
    nomeanimal VARCHAR(180) NOT NULL,
    raca VARCHAR(30) NOT NULL,
    datanascimento DATE NOT NULL
);
/*Realize a alteração do atributo da tabela cliente de nomecliente para nomecompleto (Capture a tela do XAMPP)*/
ALTER TABLE cliente
CHANGE COLUMN nomecliente nomecompleto VARCHAR(200) NOT NULL;
/*Realize a alteração do datatype motivo de (200) caracteres para (500) caracteres (Captura a tela do XAMPP)*/
ALTER TABLE consulta
MODIFY COLUMN motivo VARCHAR(500) NOT NULL;
/*delete o atributo nomeanimal da tabela animal, depois adicionei novamente o atributo com o nome: nomeanimalzinho*/
/*excluindo*/
ALTER TABLE animal
DROP COLUMN nomeanimal;
/*adicionando*/
ALTER TABLE animal
ADD nomeanimalzinho VARCHAR(180) NOT NULL;
/*realize uma pesquisa na documentação de como insere dados em uma tabela existente, insira os dados "Ana Claudia Cunha" para nome da cliente, telefone 11999998888, e cpf 1144444411 na tabela do cliente. (Capture a tela do XAMPP)*/
INSERT INTO cliente (cpf, nomecompleto, telefonecliente) 
VALUES ('1144444411', 'Ana Claudia Cunha', '11999998888');
/*Por fim, realize a exclusão dos dados da tabela cliente*/
DELETE FROM cliente
WHERE cpf = '1144444411';
/*Realize a exclusão de cada uma das tabelas*/
DROP TABLE cliente;
DROP TABLE veterinario;
DROP TABLE consulta;
DROP TABLE animal;
/*Realize a exclusão do banco de dados (Capture a tela do XAMPP)*/
DROP DATABASE sistemapetshop;