------------------------------------------------------------
--        Script Microsoft SQL Server.
------------------------------------------------------------



------------------------------------------------------------
-- Creation de la base de donnée
------------------------------------------------------------
create database GPI;
use GPI;

------------------------------------------------------------
-- Table utilisateur de l'application
------------------------------------------------------------
CREATE TABLE Utilisateur(
        ID_User int IDENTITY(1,1),
        Nom_User varchar(32),
        Mdp_User varchar(32),
        Indication varchar(64),
        PRIMARY KEY (ID_User)
);


------------------------------------------------------------
-- Table 1: Marque
------------------------------------------------------------

CREATE TABLE Marque(
        ID_Marque  int IDENTITY(1,1),
        Nom_Marque Varchar (32)  ,
        Photo_Marque IMAGE,
        PRIMARY KEY (ID_Marque )
);


------------------------------------------------------------
-- Table 2: Materiel
------------------------------------------------------------

CREATE TABLE Materiel(
        ID_Materiel        int IDENTITY(1,1)  ,
        Description_Materiel Varchar (256) ,
        Modele_Materiel   Varchar (32) ,
        Num_Immo Varchar(16),
        Num_Serie Varchar(16),
        Date_Fin_Garentie    Date ,
        ID_Type_Materiel     int  ,
        ID_Marque            int  ,
        PRIMARY KEY (ID_Materiel )
);


------------------------------------------------------------
-- Table 3: Inventaire 
------------------------------------------------------------

CREATE TABLE Inventaire(
        ID_Inventaire          int IDENTITY(1,1) ,
        Date_Inventaire        Date  ,
        Observation_Inventaire Varchar (128) ,
        PRIMARY KEY (ID_Inventaire )
);


------------------------------------------------------------
-- Table 4: Type_Materiel
------------------------------------------------------------

CREATE TABLE Type_Materiel(
        ID_Type_Materiel  int IDENTITY(1,1),
        Nom_Type_Materiel Varchar (64),
        PRIMARY KEY (ID_Type_Materiel )
);



------------------------------------------------------------
-- Table 5: Peripherique
------------------------------------------------------------

--CREATE TABLE Peripherique(
--        ID_Peripherique     int IDENTITY(1,1) ,
--        Description_Peripherique Varchar (64)  ,
--        PRIMARY KEY (ID_Peripherique )
--);


------------------------------------------------------------
-- Table 6: Panne
------------------------------------------------------------

CREATE TABLE Panne(
        ID_Panne    int IDENTITY(1,1),
        Date_Panne  Date ,
        Motif_Panne Varchar (128) ,
        ID_Materiel int ,
        PRIMARY KEY (ID_Panne )
);


------------------------------------------------------------
-- Table 7: Fournisseur
------------------------------------------------------------

CREATE TABLE Fournisseur(
        ID_Fournisseur    int IDENTITY(1,1) ,
        Nom_Fournisseur     Varchar (64) ,
        Adresse_Fournisseur Varchar (128) ,
        Tel_Fournisseur     Varchar (64) ,
        Mail_Fournisseur    Varchar (64) ,
        Site_Fournisseur     Varchar (64) ,
        Commentaire_Fournisseur    Varchar (128) ,
        Photo_Fournisseur IMAGE,
        PRIMARY KEY (ID_Fournisseur )
);


------------------------------------------------------------
-- Table 8: Facture
------------------------------------------------------------

CREATE TABLE Facture(
        ID_Facture    int IDENTITY(1,1),
        Num_Facture     Varchar (16) ,
        Date_Facture  Date ,
        ID_Fournisseur int ,
        PRIMARY KEY (ID_Facture )
);


------------------------------------------------------------
-- Table 9: Reparation
------------------------------------------------------------

CREATE TABLE Reparation(
        ID_Reparation  int IDENTITY(1,1),
        Date_Reparation Date ,
        Type_Reparation Varchar (32) ,
        ID_Panne        int ,
        PRIMARY KEY (ID_Reparation )
);


------------------------------------------------------------
-- Table 10: Affectation
------------------------------------------------------------

CREATE TABLE Affectation(
        ID_Affectation    int IDENTITY(1,1),
        Date_Affectation  Date ,
        ID_Materiel       int ,
        Matricule_Employe int ,
        PRIMARY KEY (ID_Affectation )
);


------------------------------------------------------------
-- Table 11: Bon_Livraison
------------------------------------------------------------

CREATE TABLE Bon_Livraison(
        ID_Bon_Livraison   int IDENTITY(1,1),
        Num_BL Varchar(16) ,
        Date_Bon_Livraison Date ,
        Date_Livraison     Date ,
        ID_Fournisseur     int ,
        ID_Commande     int ,
        PRIMARY KEY (ID_Bon_Livraison )
);


------------------------------------------------------------
-- Table 12: Employe
------------------------------------------------------------

CREATE TABLE Employe(
        Matricule_Employe int IDENTITY(1,1),
        Nom_Employe       Varchar (64) ,
        Prenom_Employe    Varchar (64) ,
        Adresse_Employe   Varchar (128) ,
        Tel_Employe       Varchar (64) ,
        Photo_Employe IMAGE,
        Date_Recrutement  Date ,
        ID_Poste          int ,
        ID_Siege          int ,
        PRIMARY KEY (Matricule_Employe )
);


------------------------------------------------------------
-- Table 13: Desaffectation
------------------------------------------------------------

CREATE TABLE Desaffectation(
        ID_Desaffectation    int IDENTITY(1,1),
        Date_Desaffectation  Date ,
        Motif_Desaffectation Varchar (64) ,
        ID_Affectation       int ,
        PRIMARY KEY (ID_Desaffectation )
);


------------------------------------------------------------
-- Table 14: Poste_Employe
------------------------------------------------------------

CREATE TABLE Poste_Employe(
        ID_Poste          int IDENTITY(1,1) ,
        Nom_Poste         Varchar (64) ,
        Description_Poste Varchar (128) ,
        Grade_Poste       Varchar (32) ,
        PRIMARY KEY (ID_Poste )
);


------------------------------------------------------------
-- Table 15: Siege
------------------------------------------------------------

CREATE TABLE Siege(
        ID_Siege   int IDENTITY(1,1) ,
        Type_Siege Varchar (16) ,
        Mail_Siege Varchar (64) ,
        Lieu_Siege Varchar (128) ,
        PRIMARY KEY (ID_Siege )
);


------------------------------------------------------------
-- Table 16: Entreprise_Maintenance
------------------------------------------------------------

CREATE TABLE Entreprise_Maintenance(
        ID_Entreprise      int IDENTITY(1,1) ,
        Nom_Entreprise     Varchar (64) ,
        Adresse_Entreprise Varchar (128) ,
        Tel_Entreprise     Varchar (64) ,
        Mail_Entreprise    Varchar (64) ,
        Photo_Entreprise IMAGE,
        PRIMARY KEY (ID_Entreprise )
);


------------------------------------------------------------
-- Table 17: Commande 
------------------------------------------------------------

CREATE TABLE Commande(
        ID_Commande      int IDENTITY(1,1) ,
        Num_BC     Varchar (16) ,
        Date_Commande    Date ,
        PRIMARY KEY (ID_Commande )
);


------------------------------------------------------------
-- Table: Pocede
------------------------------------------------------------

--CREATE TABLE Pocede(
--        ID_Materiel        int ,
--        ID_Peripherique int ,
--        PRIMARY KEY (ID_Materiel ,ID_Peripherique )
--);


------------------------------------------------------------
-- Table: Mise en
------------------------------------------------------------

CREATE TABLE Mise_en(
        ID_Inventaire        int ,
        ID_Materiel int ,
        PRIMARY KEY (ID_Materiel ,ID_Inventaire )
);


------------------------------------------------------------
-- Table: Appartient_3
------------------------------------------------------------

--CREATE TABLE Appartient_3(
--       ID_Materiel      int ,
--       ID_Type_Materiel int ,
--       PRIMARY KEY (ID_Materiel ,ID_Type_Materiel )
--);


------------------------------------------------------------
-- Table: Appartient_5
------------------------------------------------------------

CREATE TABLE Appartient_5(
        ID_Type_Materiel      int ,
        ID_Commande int ,
        Qte_Commande Int ,
        Prix_Unitaire_C Money ,
        PRIMARY KEY (ID_Commande ,ID_Type_Materiel )
);


------------------------------------------------------------
-- Table: Avoir
------------------------------------------------------------

CREATE TABLE Avoir(
        ID_Bon_Livraison      int ,
        ID_Type_Materiel int ,
        Qte_L Int ,
        PRIMARY KEY (ID_Bon_Livraison ,ID_Type_Materiel )
);








ALTER TABLE Materiel ADD CONSTRAINT FK_Materiel_ID_Type_Materiel FOREIGN KEY (ID_Type_Materiel) REFERENCES Type_Materiel(ID_Type_Materiel);
ALTER TABLE Materiel ADD CONSTRAINT FK_Materiel_ID_Marque FOREIGN KEY (ID_Marque) REFERENCES Marque(ID_Marque);
ALTER TABLE Panne ADD CONSTRAINT FK_Panne_ID_Materiel FOREIGN KEY (ID_Materiel) REFERENCES Materiel(ID_Materiel);
ALTER TABLE Reparation ADD CONSTRAINT FK_Reparation_ID_Panne FOREIGN KEY (ID_Panne) REFERENCES Panne(ID_Panne);
ALTER TABLE Affectation ADD CONSTRAINT FK_Affectation_ID_Materiel FOREIGN KEY (ID_Materiel) REFERENCES Materiel(ID_Materiel);
ALTER TABLE Affectation ADD CONSTRAINT FK_Affectation_Matricule_Employe FOREIGN KEY (Matricule_Employe) REFERENCES Employe(Matricule_Employe);
ALTER TABLE Bon_Livraison ADD CONSTRAINT FK_Bon_Livraison_ID_Fournisseur FOREIGN KEY (ID_Fournisseur) REFERENCES Fournisseur(ID_Fournisseur);
ALTER TABLE Bon_Livraison ADD CONSTRAINT FK_Bon_Livraison_ID_Commande FOREIGN KEY (ID_Commande) REFERENCES Commande(ID_Commande);
ALTER TABLE Employe ADD CONSTRAINT FK_Employe_ID_Poste FOREIGN KEY (ID_Poste) REFERENCES Poste_Employe(ID_Poste);
ALTER TABLE Employe ADD CONSTRAINT FK_Employe_ID_Siege FOREIGN KEY (ID_Siege) REFERENCES Siege(ID_Siege);
ALTER TABLE Desaffectation ADD CONSTRAINT FK_Desaffectation_ID_Affectation FOREIGN KEY (ID_Affectation) REFERENCES Affectation(ID_Affectation);
ALTER TABLE Facture ADD CONSTRAINT FK_Facture_ID_Fournisseur FOREIGN KEY (ID_Fournisseur) REFERENCES Fournisseur(ID_Fournisseur);
--ALTER TABLE Pocede ADD CONSTRAINT FK_Pocede_ID_Materiel FOREIGN KEY (ID_Materiel) REFERENCES Materiel(ID_Materiel);
--ALTER TABLE Pocede ADD CONSTRAINT FK_Pocede_ID_Peripherique FOREIGN KEY (ID_Peripherique) REFERENCES Peripherique(ID_Peripherique);
--ALTER TABLE Appartient_3 ADD CONSTRAINT FK_Appartient_3_ID_Materiel FOREIGN KEY (ID_Materiel) REFERENCES Materiel(ID_Materiel);
--ALTER TABLE Appartient_3 ADD CONSTRAINT FK_Appartient_3_ID_Type_Materiel FOREIGN KEY (ID_Type_Materiel) REFERENCES Type_Materiel(ID_Type_Materiel);
ALTER TABLE Mise_en ADD CONSTRAINT FK_Mise_en_ID_Materiel FOREIGN KEY (ID_Materiel) REFERENCES Materiel(ID_Materiel);
ALTER TABLE Mise_en ADD CONSTRAINT FK_Mise_en_ID_Inventaire FOREIGN KEY (ID_Inventaire) REFERENCES Inventaire(ID_Inventaire);
ALTER TABLE Appartient_5 ADD CONSTRAINT FK_Appartenient_ID_Type_Materiel FOREIGN KEY (ID_Type_Materiel) REFERENCES Type_Materiel(ID_Type_Materiel);
ALTER TABLE Appartient_5 ADD CONSTRAINT FK_Appartenient_ID_Commande FOREIGN KEY (ID_Commande) REFERENCES Commande(ID_Commande);
ALTER TABLE Avoir ADD CONSTRAINT FK_Avoir_ID_ID_Type_Materiel FOREIGN KEY (ID_Type_Materiel) REFERENCES Type_Materiel(ID_Type_Materiel);
ALTER TABLE Avoir ADD CONSTRAINT FK_Avoir_ID_Bon_Livraison FOREIGN KEY (ID_Bon_Livraison) REFERENCES Bon_Livraison(ID_Bon_Livraison);



------------------------------------------------------------
-- Insertion: Utilisateurs
------------------------------------------------------------


insert into Utilisateur values ('admin','admin','admin');



------------------------------------------------------------
-- Insertion: Siege
------------------------------------------------------------

  insert into Siege values ('Front-end','alger16@gmail.com','Alger');
  insert into Siege values ('Back-end','backback6@gmail.com','Annaba');
  insert into Siege values ('Back-end','Jijel18@gmail.com','Jijel');
  insert into Siege values ('Front-end','Blida09@gmail.com','Blida');
  insert into Siege values ('Back-end','Skikda1008@gmail.com','Skikda');
  insert into Siege values ('Front-end','Oran4213@gmail.com','Oran');
  

------------------------------------------------------------
-- Insertion: Poste_Employe
------------------------------------------------------------


  Insert into Poste_Employe values ('Développer','Bonne maitrise des languages html css laravel','Bac +5');
  Insert into Poste_Employe values ('Manager','Manager des développeurs','Bac +5');
  Insert into Poste_Employe values ('Gestinnaire','Gestion des taches','Bac +5');
  Insert into Poste_Employe values ('Rédacteur','Rédiger des textes des sites web','Bac +3');
  Insert into Poste_Employe values ('Designer','Réaliser des maquettes et des logos','Bac +2');
  Insert into Poste_Employe values ('Intégrateur','Intégrer des maquettes de PSD au WEB','Bac +3');


------------------------------------------------------------
-- Insertion: Employe
------------------------------------------------------------

  Insert into Employe values ('TAZEROUT','Mohamed','tazerout.mohamed.1994@hotmail.fr','0542913202',null,'2013-05-13',3,3);
  Insert into Employe values ('KERBAL','Salim','kerbal.salim.95@hotmail.fr','0622851213',null,'2012-03-20',4,2);
  Insert into Employe values ('KERBAL','Oussama','oussa.kerbal@gmail.com','0772690710',null,'2005-11-24',5,2);
  Insert into Employe values ('KARASSANE','Mohamed','moh.karassane.1996@gmail.com','021294973',null,'2001-08-15',5,2);
  Insert into Employe values ('SAID','Islam','islam.moh.said@live.com','0554039193',null,'2011-09-30',6,2);


------------------------------------------------------------
-- Insertion: Type_Materiel
------------------------------------------------------------

  Insert into Type_Materiel values ('PC');
  Insert into Type_Materiel values ('Laptop');
  Insert into Type_Materiel values ('Ecran');
  Insert into Type_Materiel values ('Scanner');
  Insert into Type_Materiel values ('Téléphone');

------------------------------------------------------------
-- Insertion: Marque
------------------------------------------------------------

  Insert into Marque values ('Acer',NULL);
  Insert into Marque values ('Assus',NULL);
  Insert into Marque values ('HP',NULL);
  Insert into Marque values ('Dell',NULL);
  Insert into Marque values ('Lenovo',NULL);

------------------------------------------------------------
-- Insertion: Fournisseur
------------------------------------------------------------
  
  Insert into Fournisseur values ('Data Tools','Haouche Kaouch N°8 Îlot','210 (0) 23 30 75 25','commercial@datatools-dz.com','datatools.dz','Tel 30 75 27 / 30 75 26',NULL);
  Insert into Fournisseur values ('City Lab','Barrage garidi 1','021 29 49 73','commercial@city-lab.dz','citylab.dz','Aucun',NULL);
  Insert into Fournisseur values ('Orange','Alger centre','023 40 29 18','commercial@orange.dz','Orangedz.dz','Maintenance et vente',NULL);
  Insert into Fournisseur values ('Darkom','Vieux kouba','+213 540 23 23 51','commercial@darkom.dz','darkom.dz','Partenaire',NULL);

------------------------------------------------------------
-- Insertion: Entreprise_Maintenance
------------------------------------------------------------
  
  Insert into Entreprise_Maintenance values ('Orange','Alger centre','023 40 29 18','commercial@orange.dz',NULL);
  Insert into Entreprise_Maintenance values ('Abdou-industry','Kouba','07 27 32 24 14','commercial@abdou.dz',NULL);
  Insert into Entreprise_Maintenance values ('Errajaa','Beraki','05 13 14 13','commercial@erraja.com',NULL);

------------------------------------------------------------
-- Insertion: Commande
------------------------------------------------------------
  
  insert into Commande values ('00001','2010-11-21');
  insert into Commande values ('00002','2000-01-13');
  insert into Commande values ('00003','2005-05-20');
  insert into Commande values ('00004','2008-03-18');

------------------------------------------------------------
-- Insertion: Materiel
------------------------------------------------------------
  
  Insert into Materiel values ('DT-AA-NN','HP ProBook 3500','30190016','6CM2380KPF','2018-12-22',1,3);
  Insert into Materiel values ('DT-AA-NN','LENOVO 321','3231424','2C233RD231F','2016-07-10',2,2);
  Insert into Materiel values ('DT-AA-NN','Acer 3021','31132314','D23R1234JDC','2019-07-23',3,4);
  Insert into Materiel values ('DT-AA-NN','HP PRO','4232351','AD323T2351','2018-12-22',4,1);
  Insert into Materiel values ('DT-AA-NN','Acer 2020','5232324','RFA2341T23C','2018-12-22',3,4);

------------------------------------------------------------
-- Insertion: Panne
------------------------------------------------------------
      
  Insert into Panne values ('2014-12-12','Coup de circuit',4);
  Insert into Panne values ('2015-11-21','Mauvaise utilisation',7);
  Insert into Panne values ('2015-02-03','Surcharge',8);


------------------------------------------------------------
-- Insertion: Reparation
------------------------------------------------------------
    
  Insert into Reparation Values ('2017-08-01','Hard et soft',1);
  Insert into Reparation Values ('2018-01-02','Soft',2);
  Insert into Reparation Values ('2017-11-15','Hard',3);


------------------------------------------------------------
-- Insertion: Facture
------------------------------------------------------------

    
  insert into Facture values ('00001','2013-12-11',3);
  insert into Facture values ('00002','2011-10-03',3);
  insert into Facture values ('00003','2012-04-17',4);


------------------------------------------------------------
-- Insertion: Bon_Livraison
------------------------------------------------------------

    
  Insert into Bon_Livraison Values ('00001','2012-12-11','2012-12-12',3,2);
  Insert into Bon_Livraison Values ('00002','2013-11-14','2013-11-15',4,3);
  Insert into Bon_Livraison Values ('00003','2014-02-06','2014-02-06',4,4);



------------------------------------------------------------
-- Insertion: Affectation
------------------------------------------------------------
    

  Insert into Affectation values ('2015-04-09',1,2);
  Insert into Affectation values ('2015-04-09',2,1);
  Insert into Affectation values ('2015-04-09',4,3);
  Insert into Affectation values ('2015-04-09',6,4);
  Insert into Affectation values ('2015-04-09',5,5);

    
------------------------------------------------------------
-- Insertion: Desaffectation
------------------------------------------------------------
    
  Insert into Desaffectation values ('2017-12-11','Démission de employé',3);
  Insert into Desaffectation values ('2018-11-03','Réparation',4);
  Insert into Desaffectation values ('2017-03-13','Maintenance',1);


------------------------------------------------------------
-- Insertion: Inventaire
------------------------------------------------------------
    

  Insert into Inventaire values ('2018-01-01','Pas d"écart');
  Insert into Inventaire values ('2017-01-01','Pas d"écart');
  Insert into Inventaire values ('2016-01-01','Pas d"écart');
  
