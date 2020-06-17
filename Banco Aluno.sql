create database escola;
use escola;
create table aluno
(
id_a int auto_increment,
nome_a varchar(200) not null,
sexo_a char(1) not null,
ra_a varchar(50) not null,
dataNasc_a datetime not null,
curso_a varchar(12) not null,
anoIn_a varchar(12) not null,
email_a varchar(200) not null,
UF_a char(2) not null,
cid_a varchar(200) not null,
bair_a varchar(200) not null,
log_a varchar(200) not null,
num_a int not null,
comp_a varchar(3000),
primary key (id_a)
);


