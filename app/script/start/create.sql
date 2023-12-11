-- Active: 1701876068286@@127.0.0.1@3306
--reset
DROP DATABASE IF EXITS Banque;

-- create database Banque
CREATE DATABASE IF NOT EXISTS Banque;

USE Banque;


-- TABLE CREATION

DROP TABLE IF EXITS compte;

CREATE TABLE IF NOT EXITS compte (
    id_compte INT NOT NULL AUTO_INCREMENT,
    solde DECIMAL(10,2) NOT NULL,
    date_creation DATETIME NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE IF EXITS operation;

CREATE TABLE IF NOT EXITS operation (
    id_operation INT NOT NULL AUTO_INCREMENT,
    montant DECIMAL(10,2) NOT NULL,
    type BOOL NOT NULL,
    date_operation DATETIME,
    statut BOOL,
    compte_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(compte_id) REFERENCES compte(id_compte)
);


DROP TABLE IF EXITS compte_courant;

CREATE TABLE IF NOT EXISTS compte_courant (
    compte_id INT NOT NULL,
    montant_decouvert SMALLINT,
    PRIMARY KEY(compte_id),
    FOREIGN KEY(compte_id) REFERENCES compte(id_compte)
);


DROP TABLE IF EXITS compte_epargne;

CREATE TABLE IF NOT EXISTS compte_epargne (
    compte_id INT NOT NULL,
    taux_interet SMALLINT,
    PRIMARY KEY(compte_id),
    FOREIGN KEY(compte_id) REFERENCES compte(id_compte)
);





