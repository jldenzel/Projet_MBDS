// requete maj update

UPDATE ETUDIANT SET PROMOTION ='2004' WHERE NUMERO_ETUDIANT = 3;

UPDATE MATIERE SET NOM_MATIERE ='INFORMATIQUE' WHERE NUMERO_MATIERE = 3;

UPDATE MATIERE SET CREDIT ='5' WHERE NUMERO_MATIERE = 3;

UPDATE MATIERE SET CREDIT ='2' WHERE NUMERO_MATIERE = 6;





//requete maj delete

DELETE FROM ETUDIANT WHERE NUMERO_ETUDIANT = '10'

DELETE FROM BULLETIN_NOTE WHERE NUMERO_ETUDIANT = '9';


//requete consultation select


SELECT * FROM ETUDIANT;

SELECT * FROM BULLETIN_NOTE WHERE NUMERO_ETUDIANT ='8';

SELECT NUMERO_ASSOCIATION FROM A_FAIT_PARTIT_DE WHERE NUMERO_ETUDIANT ='4';

SELECT* FROM BULLETIN_NOTE ORDER BY NUMERO_GRADE;

SELECT* FROM ETUDIANT WHERE PROMOTION > '2020';

SELECT* FROM ETUDIANT WHERE PROMOTION > '2020' ORDER BY NOM_ETUDIANT;


//requete SELECT avec une jointure

SELECT NOM_DIPLOME FROM BULLETIN_NOTE INNER JOIN DIPLOME ON BULLETIN_NOTE.NUMERO_DIPLOME = DIPLOME.NUMERO_DIPLOME WHERE NUMERO_GRADE <2;

SELECT CREDIT FROM BULLETIN_NOTE INNER JOIN MATIERE ON BULLETIN_NOTE.NUMERO_MATIERE = MATIERE.NUMERO_MATIERE WHERE NUMERO_GRADE =5;


//requete SELECT plusieurs jointures 

SELECT NOM_ENTREPRISE FROM ASSOCIATION INNER JOIN A_FAIT_PARTIT_DE ON ASSOCIATION.NUMERO_ASSOCIATION = A_FAIT_PARTIT_DE.NUMERO_ASSOCIATION
                                    INNER JOIN ETUDIANT ON ETUDIANT.NUMERO_ETUDIANT = A_FAIT_PARTIT_DE.NUMERO_ETUDIANT
                                    INNER JOIN ENTREPRISE ON ENTREPRISE.NUMERO_ENTREPRISE = ETUDIANT.NUMERO_ENTREPRISE
                                    WHERE ACTIVITE_ASSOCIATION = 'FOOT';


SELECT ACTIVITE_ENTREPRISE FROM ASSOCIATION INNER JOIN A_FAIT_PARTIT_DE ON ASSOCIATION.NUMERO_ASSOCIATION = A_FAIT_PARTIT_DE.NUMERO_ASSOCIATION
                                    INNER JOIN ETUDIANT ON ETUDIANT.NUMERO_ETUDIANT = A_FAIT_PARTIT_DE.NUMERO_ETUDIANT
                                    INNER JOIN ENTREPRISE ON ENTREPRISE.NUMERO_ENTREPRISE = ETUDIANT.NUMERO_ENTREPRISE
                                    WHERE ACTIVITE_ASSOCIATION = 'FOOT';




// Delete impliquant 2 tables

DELETE (SELECT*
        FROM bulletin_note bn
        INNER JOIN matiere mt
            ON bn.numero_matiere = mt.numero_matiere
        WHERE mt.credit = 1);

