# Banque

<u>***Besoin***</u> :
On souhaite créer une app orienté objet en php qui permet de gérer des compte bancaires.
- Chaque compte est défini par son code et son solde
- Il existe 2 types de comptes:
   - comptes courants
   - comptes épargnes
- Un compte épargne est un compte qui possède en plus un taux d'intérets.
- Chaque compte peut subir plusieurs opérations
- il existe 2 types d'opérations:
   - Versement
   - Retrait
- Chaque opération est définie par son numéro, date et son montant

<u>***Features***</u> :
- Créer un compte
- Versement sur un compte
- Retrait sur un compte :
   - compte epargne ne peut effectuer le retrait que si le solde est supérieur au montant à retirer
   - compte courant peut retirer à condition que le solde final ne soit pas inférieur à son découvert autorisé
- Virement entre deux comptes
- Consulter le solde d'un compte
- Mettre à jour le solde du compte en tenant en compte des intérets.
- Consulter la liste des opérations effectuée sur le compte
- Consulter le montant total des versements
- Consulter le montant total des retraits

<u>***Missions***</u>:
- Créer me MCD, MLD et l'UML du model
- Créer le script SQL correspondant
- Développer le code en Architecture N-taire
   - model, dao, service, mapper, dto, controller, dispatcher, views


[MCD MLD BANQUE](https://lucid.app/lucidchart/12091d43-5e17-4ec4-b184-19d4f9c647d5/edit?viewport_loc=-1973%2C-754%2C3045%2C2478%2C0_0&invitationId=inv_490ac079-011e-43c9-b411-458bf048f8bd)

## Banque MLD 07/12/2023
Compte = (id INT, solde DECIMAL(15,2), date_creation DATETIME);
Operation = (id INT, montant DECIMAL(15,2), type LOGICAL, date_operation DATETIME, statut LOGICAL, #id_1);
CompteEpargne = (#id, taux_interet DECIMAL(3,2));
CompteCourrant = (#id, montant_decouvert DECIMAL(15,2));

## SQL script création
```sql
CREATE TABLE Compte(
   id INT,
   solde DECIMAL(15,2) NOT NULL,
   date_creation DATETIME NOT NULL,
   PRIMARY KEY(id)
);

CREATE TABLE Operation(
   id INT,
   montant DECIMAL(15,2) NOT NULL,
   type LOGICAL NOT NULL,
   date_operation DATETIME NOT NULL,
   statut LOGICAL NOT NULL,
   id_1 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES Compte(id)
);

CREATE TABLE CompteEpargne(
   id INT,
   taux_interet DECIMAL(3,2),
   PRIMARY KEY(id),
   FOREIGN KEY(id) REFERENCES Compte(id)
);

CREATE TABLE CompteCourrant(
   id INT,
   montant_decouvert DECIMAL(15,2),
   PRIMARY KEY(id),
   FOREIGN KEY(id) REFERENCES Compte(id)
);

```