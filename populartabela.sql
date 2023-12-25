-- aqui vou colocar o arquivo usados para popular as tabelas, lembrando que foram populadas uma a um, junto com cada criacao de nova tabela.

LOAD DATA INFILE 'C:/Users/USUARIO/Documents/Teste Engenheiro de Dados/Person.Person.csv'
INTO TABLE person
FIELDS TERMINATED BY ';' -- Delimitador utilizado no seu arquivo CSV
ENCLOSED BY '"' -- Caractere de delimitação
LINES TERMINATED BY '\n' -- Caractere de nova linha
IGNORE 1 ROWS; -- Ignora a primeira linha se ela contiver cabeçalhos

LOAD DATA INFILE 'C:/Users/USUARIO/Documents/Teste Engenheiro de Dados/Production.Product.csv'
INTO TABLE product
FIELDS TERMINATED BY ';' -- Delimitador utilizado no seu arquivo CSV
ENCLOSED BY '"' -- Caractere de delimitação
LINES TERMINATED BY '\n' -- Caractere de nova linha
IGNORE 1 ROWS; -- Ignora a primeira linha se ela contiver cabeçalhos

LOAD DATA INFILE 'C:/Users/USUARIO/Documents/Teste Engenheiro de Dados/Sales.SpecialOfferProduct.csv'
INTO TABLE specialofferproduct
FIELDS TERMINATED BY ';' -- Delimitador utilizado no seu arquivo CSV
ENCLOSED BY '"' -- Caractere de delimitação
LINES TERMINATED BY '\n' -- Caractere de nova linha
IGNORE 1 ROWS; -- Ignora a primeira linha se ela contiver cabeçalhos

LOAD DATA INFILE 'C:/Users/USUARIO/Documents/Teste Engenheiro de Dados/Sales.Customer.csv'
INTO TABLE customer
FIELDS TERMINATED BY ';' -- Delimitador utilizado no seu arquivo CSV
ENCLOSED BY '"' -- Caractere de delimitação
LINES TERMINATED BY '\n' -- Caractere de nova linha
IGNORE 1 ROWS; -- Ignora a primeira linha se ela contiver cabeçalhos

LOAD DATA INFILE 'C:/Users/USUARIO/Documents/Teste Engenheiro de Dados/Sales.SalesOrderHeader.csv'
INTO TABLE SalesOrderHeader 
FIELDS TERMINATED BY ';' -- Delimitador utilizado no seu arquivo CSV
ENCLOSED BY '"' -- Caractere de delimitação
LINES TERMINATED BY '\n' -- Caractere de nova linha
IGNORE 1 ROWS; -- Ignora a primeira linha se ela contiver cabeçalhos

LOAD DATA INFILE 'C:/Users/USUARIO/Documents/Teste Engenheiro de Dados/Sales.SalesOrderDetail.csv'
INTO TABLE salesorderdetail 
FIELDS TERMINATED BY ';' -- Delimitador utilizado no seu arquivo CSV
ENCLOSED BY '"' -- Caractere de delimitação
LINES TERMINATED BY '\n' -- Caractere de nova linha
IGNORE 1 ROWS; -- Ignora a primeira linha se ela contiver cabeçalhos

-- para o banco de dados SQL azure fiz migracao atraves de um arquivo gerado pelo phpMyAdmin , este arquivo pode ser acessado pelo nome de testerox.sql no mesmo repositorio