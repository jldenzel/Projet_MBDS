--------------------------------------------------------
--  Fichier créé - lundi-septembre-14-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ASSOCIATION_AUTO_INCR
--------------------------------------------------------

   CREATE SEQUENCE  "C##JE"."ASSOCIATION_AUTO_INCR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DIPLOME_AUTO_INCR
--------------------------------------------------------

   CREATE SEQUENCE  "C##JE"."DIPLOME_AUTO_INCR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ENTREPRISE_AUTO_INCR
--------------------------------------------------------

   CREATE SEQUENCE  "C##JE"."ENTREPRISE_AUTO_INCR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ETUDIANT_AUTO_INCR
--------------------------------------------------------

   CREATE SEQUENCE  "C##JE"."ETUDIANT_AUTO_INCR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence GRADE_AUTO_INCR
--------------------------------------------------------

   CREATE SEQUENCE  "C##JE"."GRADE_AUTO_INCR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MATIERE_AUTO_INCR
--------------------------------------------------------

   CREATE SEQUENCE  "C##JE"."MATIERE_AUTO_INCR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table A_FAIT_PARTIT_DE
--------------------------------------------------------

  CREATE TABLE "C##JE"."A_FAIT_PARTIT_DE" 
   (	"NUMERO_ASSOCIATION" NUMBER(8,0), 
	"NUMERO_ETUDIANT" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ASSOCIATION
--------------------------------------------------------

  CREATE TABLE "C##JE"."ASSOCIATION" 
   (	"ACTIVITE_ASSOCIATION" VARCHAR2(1024 BYTE), 
	"NOM_ASSOCIATION" CHAR(256 BYTE), 
	"NUMERO_ASSOCIATION" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BULLETIN_NOTE
--------------------------------------------------------

  CREATE TABLE "C##JE"."BULLETIN_NOTE" 
   (	"NUMERO_GRADE" NUMBER(8,0), 
	"NUMERO_ETUDIANT" NUMBER(8,0), 
	"NUMERO_MATIERE" NUMBER(8,0), 
	"NUMERO_DIPLOME" NUMBER(8,0), 
	"APRECIATION" CHAR(256 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIPLOME
--------------------------------------------------------

  CREATE TABLE "C##JE"."DIPLOME" 
   (	"NOM_DIPLOME" CHAR(256 BYTE), 
	"NUMERO_DIPLOME" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ENTREPRISE
--------------------------------------------------------

  CREATE TABLE "C##JE"."ENTREPRISE" 
   (	"PAYS" CHAR(256 BYTE), 
	"ACTIVITE_ENTREPRISE" VARCHAR2(1024 BYTE), 
	"NOM_ENTREPRISE" CHAR(256 BYTE), 
	"NUMERO_ENTREPRISE" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ETUDIANT
--------------------------------------------------------

  CREATE TABLE "C##JE"."ETUDIANT" 
   (	"PRENOM" CHAR(128 BYTE), 
	"NATIONALITE" CHAR(128 BYTE), 
	"PROMOTION" NUMBER(4,0), 
	"MENTION" CHAR(128 BYTE), 
	"NOM_ETUDIANT" CHAR(256 BYTE), 
	"NUMERO_ETUDIANT" NUMBER(8,0), 
	"NUMERO_ENTREPRISE" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GRADE
--------------------------------------------------------

  CREATE TABLE "C##JE"."GRADE" 
   (	"GRADE" CHAR(256 BYTE), 
	"NUMERO_GRADE" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MATIERE
--------------------------------------------------------

  CREATE TABLE "C##JE"."MATIERE" 
   (	"CREDIT" NUMBER(6,0), 
	"NOM_MATIERE" CHAR(256 BYTE), 
	"NUMERO_MATIERE" NUMBER(8,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERAPP
--------------------------------------------------------

  CREATE TABLE "C##JE"."USERAPP" 
   (	"USERNAME" CHAR(1024 BYTE), 
	"PASSWORD" CHAR(1024 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into C##JE.A_FAIT_PARTIT_DE
SET DEFINE OFF;
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('1','4');
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('1','7');
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('2','3');
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('2','5');
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('3','6');
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('4','1');
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('4','8');
Insert into C##JE.A_FAIT_PARTIT_DE (NUMERO_ASSOCIATION,NUMERO_ETUDIANT) values ('4','9');
REM INSERTING into C##JE.ASSOCIATION
SET DEFINE OFF;
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('FOOT','ESTIAFOOT                                                                                                                                                                                                                                                       ','1');
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('RUGBY','ESTIARUGBY                                                                                                                                                                                                                                                      ','2');
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('SURF','ESTIASURF                                                                                                                                                                                                                                                       ','3');
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('MUSIQUE','ESTIAZIK                                                                                                                                                                                                                                                        ','4');
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('VOLLEY','ESTIAVOLLEY                                                                                                                                                                                                                                                     ','5');
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('BASKET','ESTIABASKET                                                                                                                                                                                                                                                     ','6');
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('BADMINTON','ESTIABAD                                                                                                                                                                                                                                                        ','7');
Insert into C##JE.ASSOCIATION (ACTIVITE_ASSOCIATION,NOM_ASSOCIATION,NUMERO_ASSOCIATION) values ('HUMANITAIRE','HUMANITEA                                                                                                                                                                                                                                                       ','8');
REM INSERTING into C##JE.BULLETIN_NOTE
SET DEFINE OFF;
Insert into C##JE.BULLETIN_NOTE (NUMERO_GRADE,NUMERO_ETUDIANT,NUMERO_MATIERE,NUMERO_DIPLOME,APRECIATION) values ('3','1','4','3','Poursuivez ainsi                                                                                                                                                                                                                                                ');
Insert into C##JE.BULLETIN_NOTE (NUMERO_GRADE,NUMERO_ETUDIANT,NUMERO_MATIERE,NUMERO_DIPLOME,APRECIATION) values ('5','3','3','3','Redoublez defforts                                                                                                                                                                                                                                              ');
Insert into C##JE.BULLETIN_NOTE (NUMERO_GRADE,NUMERO_ETUDIANT,NUMERO_MATIERE,NUMERO_DIPLOME,APRECIATION) values ('5','5','3','3','Redoublez defforts                                                                                                                                                                                                                                              ');
Insert into C##JE.BULLETIN_NOTE (NUMERO_GRADE,NUMERO_ETUDIANT,NUMERO_MATIERE,NUMERO_DIPLOME,APRECIATION) values ('1','6','1','1','Felicitations                                                                                                                                                                                                                                                   ');
Insert into C##JE.BULLETIN_NOTE (NUMERO_GRADE,NUMERO_ETUDIANT,NUMERO_MATIERE,NUMERO_DIPLOME,APRECIATION) values ('2','7','3','2','Bravo                                                                                                                                                                                                                                                           ');
Insert into C##JE.BULLETIN_NOTE (NUMERO_GRADE,NUMERO_ETUDIANT,NUMERO_MATIERE,NUMERO_DIPLOME,APRECIATION) values ('3','8','4','3','Poursuivez ainsi                                                                                                                                                                                                                                                ');
Insert into C##JE.BULLETIN_NOTE (NUMERO_GRADE,NUMERO_ETUDIANT,NUMERO_MATIERE,NUMERO_DIPLOME,APRECIATION) values ('5','9','3','3','Redoublez defforts                                                                                                                                                                                                                                              ');
REM INSERTING into C##JE.DIPLOME
SET DEFINE OFF;
Insert into C##JE.DIPLOME (NOM_DIPLOME,NUMERO_DIPLOME) values ('MBDS                                                                                                                                                                                                                                                            ','1');
Insert into C##JE.DIPLOME (NOM_DIPLOME,NUMERO_DIPLOME) values ('EPP                                                                                                                                                                                                                                                             ','2');
Insert into C##JE.DIPLOME (NOM_DIPLOME,NUMERO_DIPLOME) values ('CAE                                                                                                                                                                                                                                                             ','3');
Insert into C##JE.DIPLOME (NOM_DIPLOME,NUMERO_DIPLOME) values ('ROBIL                                                                                                                                                                                                                                                           ','4');
REM INSERTING into C##JE.ENTREPRISE
SET DEFINE OFF;
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','NUMERIQUE','Capgemini                                                                                                                                                                                                                                                       ','1');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','INFORMATIQUE','HUPI                                                                                                                                                                                                                                                            ','2');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','BTP','EIFFAGE                                                                                                                                                                                                                                                         ','3');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','FRABRICATION DE PLANCHES DE SUF','NOTOX                                                                                                                                                                                                                                                           ','4');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','INFORMATIQUE','AMADEUS                                                                                                                                                                                                                                                         ','5');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','LUXE','LVMH                                                                                                                                                                                                                                                            ','6');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','AERONAUTIQUE','SAFRAN                                                                                                                                                                                                                                                          ','7');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','AERONAUTIQUE','AIRBUS                                                                                                                                                                                                                                                          ','8');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','TELECOMUNICATIONS','ORANGE                                                                                                                                                                                                                                                          ','9');
Insert into C##JE.ENTREPRISE (PAYS,ACTIVITE_ENTREPRISE,NOM_ENTREPRISE,NUMERO_ENTREPRISE) values ('FRANCE                                                                                                                                                                                                                                                          ','TELECOMUNICATIONS','SFR                                                                                                                                                                                                                                                             ','10');
REM INSERTING into C##JE.ETUDIANT
SET DEFINE OFF;
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Alexis                                                                                                                          ','Française                                                                                                                      ','2021','Bien                                                                                                                            ','IVANOV                                                                                                                                                                                                                                                          ','21','4');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Alphonse                                                                                                                        ','Française                                                                                                                      ','2021','Bien                                                                                                                            ','MARTIN                                                                                                                                                                                                                                                          ','1','3');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Luke                                                                                                                            ','Française                                                                                                                      ','2004','Assez Bien                                                                                                                      ','SKYWALKER                                                                                                                                                                                                                                                       ','3','1');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Jean-Eric                                                                                                                       ','Française                                                                                                                      ','2021','Bien                                                                                                                            ','NIZEYIMANA                                                                                                                                                                                                                                                      ','4','1');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Julie                                                                                                                           ','Française                                                                                                                      ','2020','Bien                                                                                                                            ','DUPONT                                                                                                                                                                                                                                                          ','5','4');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Antoine                                                                                                                         ','Française                                                                                                                      ','2021','Bien                                                                                                                            ','MAATHON                                                                                                                                                                                                                                                         ','6','5');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Paul                                                                                                                            ','Française                                                                                                                      ','2021','Très Bien                                                                                                                      ','DIMI                                                                                                                                                                                                                                                            ','7','6');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Vincent                                                                                                                         ','Française                                                                                                                      ','2021','Assez Bien                                                                                                                      ','MAZAN                                                                                                                                                                                                                                                           ','8','7');
Insert into C##JE.ETUDIANT (PRENOM,NATIONALITE,PROMOTION,MENTION,NOM_ETUDIANT,NUMERO_ETUDIANT,NUMERO_ENTREPRISE) values ('Charles                                                                                                                         ','Française                                                                                                                      ','2021','Bien                                                                                                                            ','PONTIER                                                                                                                                                                                                                                                         ','9','9');
REM INSERTING into C##JE.GRADE
SET DEFINE OFF;
Insert into C##JE.GRADE (GRADE,NUMERO_GRADE) values ('A                                                                                                                                                                                                                                                               ','1');
Insert into C##JE.GRADE (GRADE,NUMERO_GRADE) values ('B                                                                                                                                                                                                                                                               ','2');
Insert into C##JE.GRADE (GRADE,NUMERO_GRADE) values ('C                                                                                                                                                                                                                                                               ','3');
Insert into C##JE.GRADE (GRADE,NUMERO_GRADE) values ('D                                                                                                                                                                                                                                                               ','4');
Insert into C##JE.GRADE (GRADE,NUMERO_GRADE) values ('E                                                                                                                                                                                                                                                               ','5');
Insert into C##JE.GRADE (GRADE,NUMERO_GRADE) values ('F                                                                                                                                                                                                                                                               ','6');
REM INSERTING into C##JE.MATIERE
SET DEFINE OFF;
Insert into C##JE.MATIERE (CREDIT,NOM_MATIERE,NUMERO_MATIERE) values ('4','MATHS                                                                                                                                                                                                                                                           ','1');
Insert into C##JE.MATIERE (CREDIT,NOM_MATIERE,NUMERO_MATIERE) values ('3','ANGLAIS                                                                                                                                                                                                                                                         ','2');
Insert into C##JE.MATIERE (CREDIT,NOM_MATIERE,NUMERO_MATIERE) values ('5','INFORMATIQUE                                                                                                                                                                                                                                                    ','3');
Insert into C##JE.MATIERE (CREDIT,NOM_MATIERE,NUMERO_MATIERE) values ('1','INSERTION PROFESSIONNEL                                                                                                                                                                                                                                         ','4');
Insert into C##JE.MATIERE (CREDIT,NOM_MATIERE,NUMERO_MATIERE) values ('4','ELECTRONIQUE                                                                                                                                                                                                                                                    ','5');
Insert into C##JE.MATIERE (CREDIT,NOM_MATIERE,NUMERO_MATIERE) values ('2','FINANCE                                                                                                                                                                                                                                                         ','6');
Insert into C##JE.MATIERE (CREDIT,NOM_MATIERE,NUMERO_MATIERE) values ('4','MECANIQUE                                                                                                                                                                                                                                                       ','7');
REM INSERTING into C##JE.USERAPP
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_ASSOCIATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_ASSOCIATION" ON "C##JE"."ASSOCIATION" ("NUMERO_ASSOCIATION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_A_FAIT_PARTIT_DE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_A_FAIT_PARTIT_DE" ON "C##JE"."A_FAIT_PARTIT_DE" ("NUMERO_ASSOCIATION", "NUMERO_ETUDIANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_BULLETIN_NOTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_BULLETIN_NOTE" ON "C##JE"."BULLETIN_NOTE" ("NUMERO_GRADE", "NUMERO_ETUDIANT", "NUMERO_MATIERE", "NUMERO_DIPLOME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DIPLOME
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_DIPLOME" ON "C##JE"."DIPLOME" ("NUMERO_DIPLOME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ENTREPRISE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_ENTREPRISE" ON "C##JE"."ENTREPRISE" ("NUMERO_ENTREPRISE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ETUDIANT
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_ETUDIANT" ON "C##JE"."ETUDIANT" ("NUMERO_ETUDIANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_GRADE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_GRADE" ON "C##JE"."GRADE" ("NUMERO_GRADE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MATIERE
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_MATIERE" ON "C##JE"."MATIERE" ("NUMERO_MATIERE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_USERAPP
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##JE"."PK_USERAPP" ON "C##JE"."USERAPP" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger ASSOCIATION_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."ASSOCIATION_TRIGGER" 
BEFORE INSERT ON ASSOCIATION
FOR EACH ROW
BEGIN
:new.NUMERO_ASSOCIATION := ASSOCIATION_AUTO_INCR.nextval;
END;
/
ALTER TRIGGER "C##JE"."ASSOCIATION_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DIPLOME_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."DIPLOME_TRIGGER" 
BEFORE INSERT ON diplome
FOR EACH ROW
BEGIN
:new.NUMERO_DIPLOME := DIPLOME_AUTO_INCR.nextval;
END;
/
ALTER TRIGGER "C##JE"."DIPLOME_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ENTREPRISE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."ENTREPRISE_TRIGGER" 
BEFORE INSERT ON entreprise
FOR EACH ROW
BEGIN
:new.NUMERO_ENTREPRISE := ENTREPRISE_AUTO_INCR.nextval;
END;
/
ALTER TRIGGER "C##JE"."ENTREPRISE_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ETUDIANT_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."ETUDIANT_TRIGGER" 
BEFORE INSERT ON etudiant
FOR EACH ROW
BEGIN
:new.NUMERO_ETUDIANT := ETUDIANT_AUTO_INCR.nextval;
END;
/
ALTER TRIGGER "C##JE"."ETUDIANT_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GRADE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."GRADE_TRIGGER" 
BEFORE INSERT ON grade
FOR EACH ROW
BEGIN
:new.NUMERO_GRADE := GRADE_AUTO_INCR.nextval;
END;
/
ALTER TRIGGER "C##JE"."GRADE_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MATIERE_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."MATIERE_TRIGGER" 
BEFORE INSERT ON MATIERE
FOR EACH ROW
BEGIN
:new.NUMERO_MATIERE := MATIERE_AUTO_INCR.nextval;
END;
/
ALTER TRIGGER "C##JE"."MATIERE_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_TB_A_FAIT_PARTIT_DE_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."TGR_TB_A_FAIT_PARTIT_DE_UPDATE" 
AFTER
UPDATE OF "NUMERO_ETUDIANT" ON
"ETUDIANT"
FOR 
EACH ROW
BEGIN
IF :OLD."NUMERO_ETUDIANT"<>:NEW."NUMERO_ETUDIANT" THEN
UPDATE 
"A_FAIT_PARTIT_DE" SET
"NUMERO_ETUDIANT"=:NEW."NUMERO_ETUDIANT" WHERE
"NUMERO_ETUDIANT"=:OLD."NUMERO_ETUDIANT";
END
IF;
END;
/
ALTER TRIGGER "C##JE"."TGR_TB_A_FAIT_PARTIT_DE_UPDATE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TGR_TB_BULLETIN_NOTE_UPDATE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "C##JE"."TGR_TB_BULLETIN_NOTE_UPDATE" 
AFTER
UPDATE OF "NUMERO_ETUDIANT" ON
"ETUDIANT"
FOR 
EACH ROW
BEGIN
IF :OLD."NUMERO_ETUDIANT"<>:NEW."NUMERO_ETUDIANT" THEN
UPDATE 
"BULLETIN_NOTE" SET
"NUMERO_ETUDIANT"=:NEW."NUMERO_ETUDIANT" WHERE
"NUMERO_ETUDIANT"=:OLD."NUMERO_ETUDIANT";
END
IF;
END;
/
ALTER TRIGGER "C##JE"."TGR_TB_BULLETIN_NOTE_UPDATE" ENABLE;
--------------------------------------------------------
--  Constraints for Table ETUDIANT
--------------------------------------------------------

  ALTER TABLE "C##JE"."ETUDIANT" MODIFY ("NUMERO_ETUDIANT" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."ETUDIANT" ADD CONSTRAINT "PK_ETUDIANT" PRIMARY KEY ("NUMERO_ETUDIANT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERAPP
--------------------------------------------------------

  ALTER TABLE "C##JE"."USERAPP" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."USERAPP" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."USERAPP" ADD CONSTRAINT "PK_USERAPP" PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIPLOME
--------------------------------------------------------

  ALTER TABLE "C##JE"."DIPLOME" MODIFY ("NUMERO_DIPLOME" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."DIPLOME" ADD CONSTRAINT "PK_DIPLOME" PRIMARY KEY ("NUMERO_DIPLOME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table A_FAIT_PARTIT_DE
--------------------------------------------------------

  ALTER TABLE "C##JE"."A_FAIT_PARTIT_DE" MODIFY ("NUMERO_ASSOCIATION" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."A_FAIT_PARTIT_DE" MODIFY ("NUMERO_ETUDIANT" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."A_FAIT_PARTIT_DE" ADD CONSTRAINT "PK_A_FAIT_PARTIT_DE" PRIMARY KEY ("NUMERO_ASSOCIATION", "NUMERO_ETUDIANT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MATIERE
--------------------------------------------------------

  ALTER TABLE "C##JE"."MATIERE" MODIFY ("NUMERO_MATIERE" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."MATIERE" ADD CONSTRAINT "PK_MATIERE" PRIMARY KEY ("NUMERO_MATIERE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ENTREPRISE
--------------------------------------------------------

  ALTER TABLE "C##JE"."ENTREPRISE" MODIFY ("NUMERO_ENTREPRISE" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."ENTREPRISE" ADD CONSTRAINT "PK_ENTREPRISE" PRIMARY KEY ("NUMERO_ENTREPRISE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE
--------------------------------------------------------

  ALTER TABLE "C##JE"."GRADE" MODIFY ("NUMERO_GRADE" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."GRADE" ADD CONSTRAINT "PK_GRADE" PRIMARY KEY ("NUMERO_GRADE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BULLETIN_NOTE
--------------------------------------------------------

  ALTER TABLE "C##JE"."BULLETIN_NOTE" MODIFY ("NUMERO_GRADE" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."BULLETIN_NOTE" MODIFY ("NUMERO_ETUDIANT" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."BULLETIN_NOTE" MODIFY ("NUMERO_MATIERE" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."BULLETIN_NOTE" MODIFY ("NUMERO_DIPLOME" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."BULLETIN_NOTE" ADD CONSTRAINT "PK_BULLETIN_NOTE" PRIMARY KEY ("NUMERO_GRADE", "NUMERO_ETUDIANT", "NUMERO_MATIERE", "NUMERO_DIPLOME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ASSOCIATION
--------------------------------------------------------

  ALTER TABLE "C##JE"."ASSOCIATION" MODIFY ("NUMERO_ASSOCIATION" NOT NULL ENABLE);
  ALTER TABLE "C##JE"."ASSOCIATION" ADD CONSTRAINT "PK_ASSOCIATION" PRIMARY KEY ("NUMERO_ASSOCIATION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table A_FAIT_PARTIT_DE
--------------------------------------------------------

  ALTER TABLE "C##JE"."A_FAIT_PARTIT_DE" ADD CONSTRAINT "FK_AFPD_ETU" FOREIGN KEY ("NUMERO_ETUDIANT")
	  REFERENCES "C##JE"."ETUDIANT" ("NUMERO_ETUDIANT") ON DELETE CASCADE DEFERRABLE ENABLE;
  ALTER TABLE "C##JE"."A_FAIT_PARTIT_DE" ADD CONSTRAINT "FK_A_FAIT_P_A_FAIT_PA_ASSOCIAT" FOREIGN KEY ("NUMERO_ASSOCIATION")
	  REFERENCES "C##JE"."ASSOCIATION" ("NUMERO_ASSOCIATION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BULLETIN_NOTE
--------------------------------------------------------

  ALTER TABLE "C##JE"."BULLETIN_NOTE" ADD CONSTRAINT "FK_BULLETIN_BULLETIN__DIPLOME" FOREIGN KEY ("NUMERO_DIPLOME")
	  REFERENCES "C##JE"."DIPLOME" ("NUMERO_DIPLOME") ENABLE;
  ALTER TABLE "C##JE"."BULLETIN_NOTE" ADD CONSTRAINT "FK_BULLETIN_BULLETIN__GRADE" FOREIGN KEY ("NUMERO_GRADE")
	  REFERENCES "C##JE"."GRADE" ("NUMERO_GRADE") ENABLE;
  ALTER TABLE "C##JE"."BULLETIN_NOTE" ADD CONSTRAINT "FK_BULLETIN_ETU" FOREIGN KEY ("NUMERO_ETUDIANT")
	  REFERENCES "C##JE"."ETUDIANT" ("NUMERO_ETUDIANT") ON DELETE CASCADE DEFERRABLE ENABLE;
  ALTER TABLE "C##JE"."BULLETIN_NOTE" ADD CONSTRAINT "FK_BULLETIN_BULLETIN__MATIERE" FOREIGN KEY ("NUMERO_MATIERE")
	  REFERENCES "C##JE"."MATIERE" ("NUMERO_MATIERE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ETUDIANT
--------------------------------------------------------

  ALTER TABLE "C##JE"."ETUDIANT" ADD CONSTRAINT "FK_ETUDIANT_TRAVAILLE_ENTREPRI" FOREIGN KEY ("NUMERO_ENTREPRISE")
	  REFERENCES "C##JE"."ENTREPRISE" ("NUMERO_ENTREPRISE") ENABLE;
