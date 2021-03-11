-- SCRIPT'S SQL BARA A BASE DE DADOS 
-- O COMANDO "USE" NÃO É SUPORTADO NO AZURE, POR ISSO ESTÁ COMENTADO.

CREATE DATABASE DB_COVID_NINETEEN;

-- USE DB_COVID_NINETEEN;

CREATE TABLE COUNTRY 
(
    ID		INT				NOT NULL IDENTITY(1, 1),
    NAME	VARCHAR(50)		NOT NULL,
    ISO2	VARCHAR(2)		NOT NULL,
    CONSTRAINT PK_COUNTRY PRIMARY KEY (ID)
    );

CREATE TABLE COUNTRY_COVID_DATA 
(
    ID					INT		NOT NULL IDENTITY(1, 1),
    ID_COUNTRY			INT		NOT NULL, 
    NEW_CONFIRMED		INT		NOT NULL, 
    TOTAL_CONFIRMED		INT		NOT NULL,
    NEW_DEATHS			INT		NOT NULL,
    TOTAL_DEATHS		INT		NOT NULL,
    DATE				DATE	NOT NULL, 
    CONSTRAINT PK_COUNTRY_COVID_DATA PRIMARY KEY (ID), 
    CONSTRAINT FK_COUNTRY_COVID_DATA_COUNTRY FOREIGN KEY (ID_COUNTRY) 
    REFERENCES COUNTRY (ID)
); 