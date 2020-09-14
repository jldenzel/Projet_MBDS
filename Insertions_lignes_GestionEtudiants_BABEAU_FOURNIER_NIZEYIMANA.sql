INSERT INTO grade(grade) VALUES ('A');

 

INSERT INTO grade(grade) VALUES ('B');

 

INSERT INTO grade(grade) VALUES ('C');

 

INSERT INTO grade(grade) VALUES ('D');

 

INSERT INTO grade(grade) VALUES ('E');

 

INSERT INTO grade(grade) VALUES ('F');

 


INSERT INTO diplome(nom_diplome) VALUES ('MBDS');

 

INSERT INTO diplome(nom_diplome) VALUES ('EPP');

 

INSERT INTO diplome(nom_diplome) VALUES ('CAE');

 

INSERT INTO diplome(nom_diplome) VALUES ('ROBIL');

 


INSERT INTO matiere(credit, nom_matiere) VALUES (4, 'MATHS');

 

INSERT INTO matiere(credit, nom_matiere) VALUES (2, 'ANGLAIS');

 

INSERT INTO matiere(credit, nom_matiere) VALUES (2, 'INFORMAIQUE');

 

INSERT INTO matiere(credit, nom_matiere) VALUES (1, 'INSERTION PROFESSIONNEL');

 

INSERT INTO matiere(credit, nom_matiere) VALUES (4,'ELECTRONIQUE');

 

INSERT INTO matiere(credit, nom_matiere) VALUES (4,'FINANCE');

 

INSERT INTO matiere(credit, nom_matiere) VALUES (4,'MECANIQUE');

 

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE','NUMERIQUE', 'Capgemini');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'INFORMATIQUE', 'HUPI');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'BTP', 'EIFFAGE');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'FRABRICATION DE PLANCHES DE SUF', 'NOTOX');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'INFORMATIQUE', 'AMADEUS');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'LUXE', 'LVMH');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'AERONAUTIQUE', 'SAFRAN');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'AERONAUTIQUE', 'AIRBUS');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'TELECOMUNICATIONS', 'ORANGE');

 

INSERT INTO entreprise(pays, activite_entreprise, nom_entreprise) VALUES ('FRANCE', 'TELECOMUNICATIONS', 'SFR');

 

 


INSERT INTO association(activite_association, nom_association) VALUES ('FOOT','ESTIAFOOT');

 

INSERT INTO association(activite_association, nom_association) VALUES ('RUGBY','ESTIARUGBY');

 

INSERT INTO association(activite_association, nom_association) VALUES ('SURF','ESTIASURF');

 

INSERT INTO association(activite_association, nom_association) VALUES ('MUSIQUE','ESTIAZIK');

 

INSERT INTO association(activite_association, nom_association) VALUES ('VOLLEY','ESTIAVOLLEY');

 

INSERT INTO association(activite_association, nom_association) VALUES ('BASKET','ESTIABASKET');

 

INSERT INTO association(activite_association, nom_association) VALUES ('BADMINTON','ESTIABAD');

 

INSERT INTO association(activite_association, nom_association) VALUES ('HUMANITAIRE','HUMANITEA');

 


INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Alphonse','Française', '2021', 'Bien', 'MARTIN', 3);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Corentin','Française', '2021', 'Très Bien', 'MARTIN', 2);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Luke','Française', '2000', 'Assez Bien', 'MARTIN', 1);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Jean-Eric','Française', '2021', 'Bien', 'MARTIN', 1);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Julie','Française', '2020', 'Bien', 'MARTIN', 4);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Antoine','Française', '2021', 'Bien', 'MAATHON', 3);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Paul','Française', '2021', 'Très Bien', 'DIMI', 2);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Vincent','Française', '2021', 'Assez Bien', 'MAZAN', 1);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Charles','Française', '2021', 'Bien', 'PONTIER', 1);

 

INSERT INTO etudiant(prenom, nationalite, promotion, mention, nom_etudiant, numero_entreprise) VALUES ('Alexis','Française', '2021', 'Bien', 'IVANOV', 4);

 

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (3,2);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (1,4);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (4,1);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (2,5);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (3,6);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (1,7);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (4,8);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (4,9);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (1,10);

 

INSERT INTO a_fait_partit_de(numero_association, numero_etudiant) VALUES (2,3);

 

 

 


INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (1,4,1,1,'Felicitations');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (2,2,3,2,'Bravo');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (3,1,4,3,'Poursuivez ainsi');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (5,3,3,3,'Redoublez defforts');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (5,5,3,3,'Redoublez defforts');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (1,6,1,1,'Felicitations');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (2,7,3,2,'Bravo');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (3,8,4,3,'Poursuivez ainsi');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (5,9,3,3,'Redoublez defforts');

 

INSERT INTO bulletin_note(numero_grade, numero_etudiant, numero_matiere, numero_diplome, apreciation) VALUES (5,10,3,3,'Redoublez defforts');