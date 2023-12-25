-- aqui vou colocar o arquivo usados para popular as tabelas, lembrando que foram populadas uma a um, junto com cada criacao de nova tabela.

BULK INSERT person
FROM 'C:\Users\Public\Documents\bulk\Person.Person.csv'
WITH (
    FIELDTERMINATOR = ',',-- Delimitador utilizado no seu arquivo CSV
    ROWTERMINATOR = '\n',
    FIRSTROW = 2  -- Se a primeira linha do CSV contiver cabeçalhos
);



