create database db_teste; /* criar o banco de dados */
use db_teste; /* entra no banco para criação e manipulação das tabelas e dados*/
drop database db_teste; /* excluir o banco */

create database empresa_teste;
use empresa_teste;


create table tb_funcionario(
	pk_IdFuncionario int,
    NomeFuncionario varchar(100),
    Cpf varchar(14),
    TelFuncionario varchar(14)
    );
    
    select * from tb_funcionario;
    
    insert into tb_funcionario values(1, 'Maria Antonia', '256.365.147-18', '(11)92525-6368');
    insert into tb_funcionario values(2, 'Marcos Paulo', '332.678.456-14', '(11)96565-2223');
    insert into tb_funcionario values(3, 'Amanda', '288.335.187-20', '(11)92175-9875');
    insert into tb_funcionario values(4, 'Sophia', '256.874.523-22', '(11)96352-5698');
    insert into tb_funcionario values(5, 'Maria Antonia', '256.365.147-18', '(11)92525-6368');
    insert into tb_funcionario values(6, 'Larissa', '332.678.456-14', '(11)98835-6524');
    insert into tb_funcionario values(7, 'Caio Lucca', '456.963.528-20', '(11)98454-4098');
    insert into tb_funcionario values(8, 'Matheus Felipe', '256.874.523-22', '(11)96352-5045');
    
    
    
    
    create database db_Livraria;
    use db_Livraria;
    
    create table tb_livro(
	pk_IdLivro int,
    Autor varchar(100),
    Titulo varchar(200),
    Preco decimal(4,2),
    Genero varchar(30),
    Classificacao varchar(30),
    Tipo varchar(20),
    Capa varchar(10),
    Editora varchar(50),
    Idioma varchar(20),
    fk_IdFornecedor int,
    Estoque int,
    Quantidade_vendida int,
    fk_IdCliente int
    );
    
    select * from tb_livro;
    
    create table tb_cliente(
	pk_IdCliente int,
    Nome varchar(100),
    Email varchar(100),
    Endereço varchar(200),
    Cpf varchar(14),
    cep varchar(10),
    Data_nascimento varchar(10),
    Cidade varchar(50),
    Estado varchar(30),
    Pais varchar(50),
    fk_IdLivro int
    );
    
    select * from tb_cliente;
    
    create table tb_Fornecedor(
	pk_IdFornecedor int,
    Nome varchar(100),
    CNPJ varchar(18),
    Produto varchar(100),
    Endereco varchar(200),
    Telefone varchar(16),
    email varchar(100),
    Cidade varchar(50),
    Estado varchar(30),
    Pais varchar(50),
    Cep varchar(10),
    fk_IdFornecedor int
    );
    
    select * from tb_Fornecedor;
    
    create table tb_Vendedor(
    Nome_vendedor varchar(100),
    Unidade varchar(30),
    Cpf varchar(14),
    Data_nascimento varchar(10),
    Id_vendedor int,
    Telefone varchar(16),
    Email varchar(100),
    Endereco varchar(50),
    Salario decimal(5,2),
    Data_Admissao varchar(10),
    Cargo varchar(20),
    Carga_horaria int
    );
    
	select * from tb_Vendedor;
    
    create table tb_Produto(
    Id_Produto varchar(100),
    Descricao varchar(30),
    Fornecedor varchar(14),
    Preco decimal(4,2),
    Tipo_Produto varchar(50),
    Telefone varchar(16),
    Imposto int
    );
    
    select * from tb_Produto;