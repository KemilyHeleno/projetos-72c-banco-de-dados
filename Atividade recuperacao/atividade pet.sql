/* Tabela Proprietário*/

CREATE TABLE proprietario(
    id_prop integer NOT NULL,
    nome varchar (100),
    endereço varchar (100),
    telefone char (13),
    valor_gasto numeric (12,02),
    cidade varchar (100),
    estado char (02),
    CONSTRAINT pk_prop PRIMARY KEY id_prop
);

/* Inserindo dados a tabela proprietário */

INSERT INTO proprietario 
    VALUES (1, 'Agnaldo Cordeiro', 'Rua Araujo Leite 27-01', '14 3222-7898', 787, 'Bauru', 'SP');
    
INSERT INTO proprietario 
    VALUES (2, 'Amália Gabriel', 'Alameda Saturno 4-35', '14 82784-9878', 3332, 'Jaú', 'SP');
    
INSERT INTO proprietario 
    VALUES (3, 'Cláudio Lara Tagliari', 'Rua Alto Acre 13-61', '14 97974-3348', 937, 'Agudos', 'SP');
    
INSERT INTO proprietario 
    VALUES (4, 'Conceição Dudlara', 'Rua Bernardino de Campos 13-47', '14 3106-5667', 4000, 'Bauru', 'SP');
    
INSERT INTO proprietario 
    VALUES (5, 'Severino Pedrero', 'Rua General Marcondes Salgado 1-11', '14 3106-7791', 800, 'Bauru', 'SP');
    
INSERT INTO proprietario 
    VALUES (6, 'Teresina de Fátima', 'Avenida Nuno de Assis 8-51', '14 93434-9874', 5815, 'Pederneiras', 'SP');
    
    
INSERT INTO proprietario 
    VALUES (7, 'Kemily Rafaelly Heleno', 'Rua Cláudio Cesar Lourenço 2-09', '14 3222-7898', 84, 'Bauru', 'SP');
    
/* Tabela Veterinário*/

Create Table veterinario(
    id_vet integer NOT NULL,
    nome varchar (100),
    telefone char (13),
    ano_nasc smallint,
    CRMV varchar (10),
    CONSTRAINT pk_vet PRIMARY KEY (id_vet)
);

/* Inserindo dados a tabela veterinário */

INSERT INTO veterinario
    VALUES (1, 'Arthur Cordeiro Aguia', '14 3222-7898', 1966, 2989);
    
INSERT INTO veterinario
    VALUES (2, 'Gabriel Amalgama Titto', '14 82384-1111', 1975, 4112);
    
INSERT INTO veterinario
    VALUES (3, 'Lara Tagliari Claudiana', '14 97334-1143', 1958, 1198);
    
INSERT INTO veterinario
    VALUES (4, 'Renata Puragua', '14 3103-9174', 1983, 24907);
    
INSERT INTO veterinario
    VALUES (5, 'Severo Rincon Silva', '14 3101-9174', 1990, 41239);
    
INSERT INTO veterinario
    VALUES (6, 'Tereza Luzia Costa', '14 92431-7499', 1968, 3978);
    
INSERT INTO veterinario
    VALUES (7, 'Kyara Alessandra Heleno', '14 93782-3598', 2008, 9298);

/* Tabela Animal*/

CREATE TABLE animal (
 	id_pet integer Not NULL,
	nome varchar (100),
    data_nasc date Not NULL,
	raca varchar(50),
	id_prop integer Not NULL,
	pais varchar(50),
	valor_pago numeric (12,02),
    tipo char (8),
    CONSTRAINT pk_pet PRIMARY KEY (id_pet),
    CONSTRAINT pf_prop FOREIGN KEY (id_prop)
        REFERENCES proprietario (id_prop)
);

/* Inserindo dados a tabela animal */

INSERT INTO animal
    VALUES (1, 'Lola', '2008-03-12', 'Poodle', 3, 'Brasil', 0, 'Doado');
    
INSERT INTO animal
    VALUES (2, 'Pitico', '2014-01-23', 'Chihuahua', 1, 'Brasil', 300, 'Comprado');
    
INSERT INTO animal
    VALUES (3, 'ViraLata', '2002-10-11', 'Chow Chow', 6, 'Brasil', 5000, 'Comprado');
    
INSERT INTO animal
    VALUES (4, 'Estrela', '2005-08-14', 'Beagle', 2, 'Brasil', 2500, 'Comprado');
    
INSERT INTO animal
    VALUES (5, 'Evita', '2008-03-12', 'Poodle', 3, 'Brasil', 0, 'Doado');
    
INSERT INTO animal
    VALUES (6, 'Dog', '2010-07-13', 'Maltês', 4, 'Brasil', 1000, 'Comprado');
    
INSERT INTO animal
    VALUES (7, 'Thor', '2008-07-02', 'Shih Tzu', 5, 'Brasil', 800, 'Comprado');
    
INSERT INTO animal
    VALUES (8, 'Belinha', '2008-03-02', 'Boxer', 1, 'Brasil', 0, 'Doado');
    
INSERT INTO animal
    VALUES (9, 'Fofinha', '2005-05-12', 'Pug', 4, 'Brasil', 3000, 'Comprado');
    
INSERT INTO animal
    VALUES (10, 'Rosnado', '2009-09-28', 'Pit Bull', 6, 'Brasil', 0, 'Doado');
    
INSERT INTO animal
    VALUES (11, 'Seraphinna', '2011-12-12', 'Vira Lata', 7, 'Brasil', 0, 'Doado');
    
INSERT INTO animal
    VALUES (12, 'Hunter', '2018-09-09', 'Pit Bull com Bacet', 3, 'Brasil', 0, 'Doado');
    
INSERT INTO animal
    VALUES (13, 'Husky', '2019-01-05', 'Vira Lata com Foxhound Inglês', 3, 'Brasil', 0, 'Doado');

/* Tabela Atendimento*/

CREATE TABLE atendimento (
 	id_pet integer NOT NULL,
    id_vet integer NOT NULL,
    data_atend date NOT NULL,
    descricao varchar (200),
    preco numeric (12,02),
    CONSTRAINT pk_data_pet PRIMARY KEY (id_pet, data_atend),
    CONSTRAINT pf_pet FOREIGN KEY (id_pet)
        REFERENCES animal (id_pet),
    CONSTRAINT pf_vet FOREIGN KEY (id_vet)
        REFERENCES veterinario (id_vet)
);

/* Inserindo dados a tabela atendimento */

INSERT INTO atendimento
    VALUES (1, 6, '2008-04-12', 'Consulta/Exame/Vacina', 150);
    
INSERT INTO atendimento
    VALUES (2, 3, '2014-02-23', 'Consulta/Exame/Vacina', 200);
    
INSERT INTO atendimento
    VALUES (3, 1, '2002-11-11', 'Consulta/Exame/Vacina', 100);
    
INSERT INTO atendimento
    VALUES (4, 2, '2008-09-24', 'Consulta/Exame/Vacina', 150);
    
INSERT INTO atendimento
    VALUES (5,  4,'2010-04-12', 'Consulta/Exame/Vacina', 150);
    
INSERT INTO atendimento
    VALUES (6, 5, '2010-05-13', 'Consulta/Exame/Vacina', 200);
    
INSERT INTO atendimento
    VALUES (3, 1, '2006-04-12', 'Cirurgia', 1500);
    
INSERT INTO atendimento
    VALUES (4, 2, '2006-04-12', 'Vacina', 75);
    
INSERT INTO atendimento
    VALUES (5, 7, '2011-04-12', 'Vacina/Ração', 150);
    
INSERT INTO atendimento
    VALUES (6, 5, '2011-09-15', 'Vacina/Remédio', 350);
    
INSERT INTO atendimento
    VALUES (4, 2, '2009-03-24', 'Vacina', 150);
    
INSERT INTO atendimento
    VALUES (5, 4, '2013-12-21', 'Vacina', 150);
    
INSERT INTO atendimento
    VALUES (10, 5, '2009-10-28', 'Consulta/Exame/Vacina', 150);
    
INSERT INTO atendimento
    VALUES (3, 1, '2011-10-23', 'Vacina', 150);
    
INSERT INTO atendimento
    VALUES (10, 5, '2013-04-12', 'Vacina', 115);
    
INSERT INTO atendimento
    VALUES (2, 3, '2014-04-14', 'Vacina', 85);
    
INSERT INTO atendimento
    VALUES (2, 3, '2015-01-09', 'Vacina', 115);
    
INSERT INTO atendimento
    VALUES (1, 6, '2010-10-23', 'Consulta/Remádio', 187);
    
INSERT INTO atendimento
    VALUES (4, 2, '2010-11-08', 'Vacina/Remédio/Ração', 457);
    
INSERT INTO atendimento
    VALUES (1, 6, '2015-07-10', 'Vacina', 150);
    
INSERT INTO atendimento
    VALUES (11, 7, '2019-10-29', 'Exame/Vacina', 250);
    
INSERT INTO atendimento
    VALUES (13, 7, '2019-07-30', 'Remédio/Ração/Vacina', 350.55);
    
INSERT INTO atendimento
    VALUES (12, 7, '2020-12-01', 'Vacina/Consulta', 250);


    
/*
    CREATE TABLE = Cria uma tabela com o nome escolhido.
    NOT NULL = Faz com que este atributo da tabela não possa ser nulo, assim ele sempre terá um valor.
    varchar = Define um campo alfanumérico de até n caracteres, onde n deve ser menor ou igual a 254 caracteres.
    char = Define um campo alfanumérico de n caracteres, onde n deve ser menor ou igual a 254 caracteres.
    date = Define um campo onde serão armazenadas as datas.
    CONSTRAINT nome_da_chave PRIMARY KEY (nome-coluna-chave) = Define para o banco de dados a coluna que será a chave primária da tabela. Caso ela tenha mais de uma chave, elas dererão ser relacionadas entre os parênteses.
    CONSTRAINT nome FOREIGN KEY (nome-coluna-chave-estrangeira) REFERENCES nome-tabela-pai (nome-campo-pai) = Define para o banco de dados as colunas que são chaves estrangeiras, ou seja, os campos que são chaves primárias de outras tabelas. Na opção REFERENCES deve ser especificado a tabela na qual a coluna é a chave primária.
*/
    
/*
    INSERT INTO = Este comando permite adicionar um ou vários registros a uma tabela do Banco de Dados. A sintaxe para a execução é:
            
            INSERT INTO nome_tabela
                VALUES (relação dos valores a serem incluídos);
            
        Onde:
                nome_tabela = Representa o nome da tabela onde será incluído o registro.
                nome_coluna = Representa o nome da(s) coluna(s) terão conteúdo no momento da operação de inclusão.
                Relação dos valores = Representa os valores a serem incluídos na tabela.
                Obs.: Este comando pode ser executado de duas maneiras:
        Quando todos os campos da tabela terão conteúdo - Neste caso não é necessário especificar as colunas, entretanto a relação dos valores a serem incluídos deverão obedecer a mesma seqüência da definição da tabela. Por exemplo:
        
            INSERT INTO Alunos
                VALUES (2, "Andre", "303569871", "R. Jaboticaba 37", 27/03/1978, "14-5223778");
                
        Quando apenas parte dos campos da tabela terão conteúdo - Neste caso devem ser especificadas todas as colunas que terão conteúdo e os valores relacionados deverão obedecer esta seqüência. Para os campos que não tem conteúdo especificado será preenchido o valor NULL, como mostra o exemplo abaixo:
        
            INSERT INTO Alunos (ra, nome, rg, endereco)
                VALUES (1, "Anderson", "2722589-1", "R. Vendaval, 75");
*/


    SELECT * FROM proprietario;
    
    /*  Seleciona todos os dados da tabela Proprietário.    */
    
    *****************************************************************  ********
    
    SELECT id_prop, nome FROM proprietario;
   
    /*  Seleciona os id's e os nomes dos proprietários na tabela.   */
    *************************************************************************
    
    SELECT nome, id_prop FROM proprietario;
    
    /*  Seleciona os nomes e os id's dos proprietários na tabela.   */
    *************************************************************************
    
    SELECT nome, cidade, estado FROM proprietario;
    
    /*  Seleciona os nomes, cidades e estados dos proprietários na tabela.  */
    *************************************************************************
    
    SELECT nome, cidade, estado FROM proprietario WHERE estado = ‘SP’;
    
    /*  Pesquisa os nomes, cidades, e estados somente daqueles que moram no estado SP.  */
    *************************************************************************
    
    SELECT nome, telefone FROM proprietario ORDER BY nome;
    
    /*  Apareceram os nomes e telefones dos proprietários em ordem alfabética.  */
    *************************************************************************
    
    SELECT nome, telefone FROM proprietario ORDER BY nome DESC;
    
    /*  Apareceram os nomes e telefones dos proprietários em ordem alfabética decrescente.  */
    *************************************************************************
    
    SELECT estado, cidade, nome FROM proprietario ORDER BY estado, cidade;
    
    /*  Seleciona os estados, cidades e nomes dos proprietários com os estados e as cidades em ordem alfabética.    */
    *************************************************************************
    
    SELECT estado, cidade, nome FROM proprietario ORDER BY estado DESC, cidade;
    
    /*  Seleciona os estados, cidades e nomes dos proprietários com os estados e as cidades em ordem alfabética.    */ 
    *************************************************************************
    
    SELECT estado, cidade, nome FROM proprietario ORDER BY cidade, nome;
    
    /*  Seleciona os estados, cidades e nomes dos proprietários com os nomes e as cidades em ordem alfabética.  */
    *************************************************************************
    
    SELECT nome, telefone FROM proprietario WHERE nome LIKE '%a%';
    
    /*  Pesquisa todos os proprietários cujo os nomes possuam a letra “A”.  */
    *************************************************************************
    
    SELECT nome, telefone FROM proprietario WHERE nome LIKE '%G%';
    
    /*  Pesquisa todos os proprietários que possuem a letra “G” em seus nomes.  */
    *************************************************************************
    
    SELECT nome, telefone FROM proprietario WHERE nome LIKE '%O';
    
    /*  Pesquisa todos os proprietários que possuem a letra “O” em seus nomes.  */
    *************************************************************************
    
    SELECT nome, ano_nasc FROM veterinario where ano_nasc < 1985;
    
    /*  Os nomes e números de telefones dos veterinários que nasceram antes de 1985.    */
    *************************************************************************
    
    SELECT nome, ano_nasc FROM veterinario where ano_nasc BETWEEN 1980 AND 2010;
    
    /*  Os nomes e anos de nascimento dos veterinários nascidos entre 1980 e 2010.  */
    *************************************************************************
    
    SELECT nome, crmv FROM veterinario WHERE crmv LIKE '%123%';
    
    /*  Os nomes e números do cadastro regional de medicina veterinária (CRMV) dos veterinários que contenham no cadastro regional de medicina veterinária o número 123.    */
    *************************************************************************
    
    SELECT nome FROM animal WHERE (nome LIKE '%R%') AND tipo LIKE '%Doado%';
    
    /*  Os nomes dos animais que contenham a letra ‘R’ no nome e que tenham sido doados.    */
    *************************************************************************
    
    SELECT * FROM animal WHERE valor_pago BETWEEN 300.00 AND 600.00;
    
    /*  Os dados dos animais comprados com valores de R$300,00 a R$600,00 inclusive.    */
    *************************************************************************
    
    SELECT * FROM animal WHERE (raca LIKE '%Beagle%') AND valor_pago >= 1000.00;
    
    /*  Os dados dos animais que são da raça ‘BEAGLE’ e que tenham sido comprados com valores acima de R$ 1000,00.  */
    *************************************************************************
    
    SELECT count(*), estado FROM proprietario WHERE estado = 'SP' GROUP BY proprietario.estado;
    
    /*  Mostre a quantidade de proprietários por estado, mostrando o campo estado.  */
    *************************************************************************
    
    SELECT count(*) FROM animal WHERE id_prop = '1';
    
    /*  Mostre a quantidade de animais do proprietário de identificação igual a 1.  */
    *************************************************************************
    
    SELECT count(*) FROM animal WHERE tipo = 'Comprado';
    
    /*  Mostre a quantidade de animais comprados.   */
    *************************************************************************
    
    SELECT count(*) FROM animal WHERE tipo = 'Doado';
    
    /*  Mostre a quantidade de animais doados.  */
    *************************************************************************
    
    SELECT count(*) FROM animal;
    
    /*  Apresente a quantidade de animais.  */
    *************************************************************************
    
    SELECT count(*), id_prop FROM animal WHERE data_nasc <= '2004/12/31' AND tipo = 'Doado' GROUP BY animal.id_prop;
    
    /*  Apresente a quantidade de animais que nasceram antes de 2005, que foram doados, por proprietário.   */ 
    *************************************************************************
    
    SELECT SUM(valor_pago) AS Total FROM animal;
    
    /*  Apresente o total (valor monetário) de todos os animais comprados   */
    *************************************************************************
    
    SELECT SUM(valor_pago) AS Total, id_prop FROM animal WHERE valor_pago >= 500.00 GROUP BY animal.id_prop;
    
    /*  Some todos os valores pagos de cada animal com valor superior a R$ 500,00 e agrupe pela identificação do proprietário   */
    *************************************************************************
    
    SELECT SUM(valor_pago) AS Total FROM animal WHERE valor_pago >= 500.00;
    
    /*  Some todos os valores pagos de cada animal com valor superior a R$ 500,00 */
    *************************************************************************
    
    SELECT AVG(valor_pago) AS Média FROM animal;
    
    /*  Efetue a média do valor pago de todos os animais e nomeie como “média”  */
    *************************************************************************
    
    SELECT AVG(valor_pago) AS Média FROM animal WHERE valor_pago BETWEEN 150 AND 500;
    
    /*  Faça a média do valor pago dos animais somente se o valor estiver entre 150,00 e 500,00     */
    *************************************************************************
    
    SELECT MIN(valor_pago) AS Menor_Valor FROM animal;
    
    /*  Apresenta o valor mínimo pago por um animal */
    *************************************************************************
    
    SELECT MAX(valor_pago) AS Valor_máximo FROM animal;
    
    /*  Apresenta o valor máximo pago por um animal e nomeie como “valor_máximo”    */
    *************************************************************************
    
    SELECT animal.nome, proprietario.nome FROM animal INNER JOIN proprietario ON animal.id_prop = proprietario.id_prop;
    
    /*  Apresenta o nome de todos os animais e o nome de seus proprietários */
    *************************************************************************
    
    SELECT proprietario.cidade, proprietario.nome FROM animal 
    INNER JOIN proprietario ON animal.id_prop = proprietario.id_prop
    WHERE animal.tipo = 'Comprado';
    
    /*  Apresenta o nome e a cidade de todos os proprietários que compraram animais     */
    *************************************************************************
    
    SELECT animal.nome FROM animal 
    INNER JOIN proprietario ON animal.id_prop = proprietario.id_prop
    WHERE proprietario.estado = 'SP';
    
    /*   Apresenta os nomes dos animais cujos donos são do estado de São Paulo  */
    *************************************************************************
    
    SELECT proprietario.nome, proprietario.estado FROM animal
    INNER JOIN proprietario ON animal.id_prop = proprietario.id_prop
    WHERE animal.data_nasc > '2012/01/01';
    
    /*  Apresente os nomes e os estados de todos os proprietários que possuem animais doados e que estes nasceram após ‘01.01.2012’ */
    *************************************************************************
    
    SELECT proprietario.nome 
    FROM animal
    INNER JOIN proprietario ON animal.id_prop = proprietario.id_prop
    WHERE animal.raca = 'Poodle' AND proprietario.cidade = 'Bauru';
    
    /*  Apresente os nomes de todos os proprietários que são da cidade de Bauru e que seus animais são da raça ‘POODLE’     */
    *************************************************************************
    
    SELECT animal.nome AS nome
    FROM animal
    INNER JOIN atendimento
    ON animal.id_pet = atendimento.id_pet
    INNER JOIN veterinario
    ON atendimento.id_vet = veterinario.id_vet
    WHERE veterinario.id_vet = 1;
    
    /*  Apresente os nomes de todos os animais que o veterinário de identificação igual a 1 atendeu     */
    *************************************************************************
    
    SELECT 
        AVG(atendimento.preco) AS média_de_gastos,
        animal.nome
    FROM atendimento
    INNER JOIN animal
        ON animal.id_pet = atendimento.id_pet
    INNER JOIN veterinario
        ON atendimento.id_vet = veterinario.id_vet
    GROUP BY animal.nome;
    
    /*  Apresente a média de valor que cada animal já gastou nos atendimentos realizados    */
    *************************************************************************
    
    SELECT 
        SUM(atendimento.id_vet) AS Soma
    FROM atendimento
    INNER JOIN veterinario
        ON veterinario.id_vet = atendimento.id_vet
        WHERE data_atend 
            BETWEEN '2020/01/01' AND '2020/12/31' AND veterinario.id_vet = 1;
    
    