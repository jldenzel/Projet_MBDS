/*==============================================================*/
/* Nom de SGBD :  ORACLE Version 10gR2                          */
/* Date de création :  03/09/2020 15:46:12                      */
/*==============================================================*/


alter table A_FAIT_PARTIT_DE
   drop constraint FK_A_FAIT_P_A_FAIT_PA_ASSOCIAT;

alter table A_FAIT_PARTIT_DE
   drop constraint FK_A_FAIT_P_A_FAIT_PA_ETUDIANT;

alter table A_OBTENU
   drop constraint FK_A_OBTENU_A_OBTENU_GRADE;

alter table A_OBTENU
   drop constraint FK_A_OBTENU_A_OBTENU2_ETUDIANT;

alter table COMPORTE
   drop constraint FK_COMPORTE_COMPORTE_DIPLOME;

alter table COMPORTE
   drop constraint FK_COMPORTE_COMPORTE2_MATIERE;

alter table CONTACT
   drop constraint FK_CONTACT_EST_ENREG_ETUDIANT;

alter table ETUDIANT
   drop constraint FK_ETUDIANT_EST_ENREG_CONTACT;

alter table ETUDIANT
   drop constraint FK_ETUDIANT_TRAVAILLE_ENTREPRI;

alter table MATIERE
   drop constraint FK_MATIERE_EN_SUIVAN_GRADE;

alter table REALISE
   drop constraint FK_REALISE_REALISE_DIPLOME;

alter table REALISE
   drop constraint FK_REALISE_REALISE2_ETUDIANT;

drop table ASSOCIATION cascade constraints;

drop index A_FAIT_PARTIT_DE2_FK;

drop index A_FAIT_PARTIT_DE_FK;

drop table A_FAIT_PARTIT_DE cascade constraints;

drop index A_OBTENU2_FK;

drop index A_OBTENU_FK;

drop table A_OBTENU cascade constraints;

drop index COMPORTE2_FK;

drop index COMPORTE_FK;

drop table COMPORTE cascade constraints;

drop index EST_ENREGISTRE_A2_FK;

drop table CONTACT cascade constraints;

drop table DIPLOME cascade constraints;

drop table ENTREPRISE cascade constraints;

drop index EST_ENREGISTRE_A_FK;

drop index TRAVAILLE_POUR_FK;

drop table ETUDIANT cascade constraints;

drop table GRADE cascade constraints;

drop index EN_SUIVANT_FK;

drop table MATIERE cascade constraints;

drop index REALISE2_FK;

drop index REALISE_FK;

drop table REALISE cascade constraints;

/*==============================================================*/
/* Table : ASSOCIATION                                          */
/*==============================================================*/
create table ASSOCIATION  (
   ACTIVITE_ASSOCIATION VARCHAR2(1024),
   NOM_ASSOCIATION      CHAR(256),
   NUMERO_ASSOCIATION   NUMBER(8)                       not null,
   constraint PK_ASSOCIATION primary key (NUMERO_ASSOCIATION)
);

/*==============================================================*/
/* Table : A_FAIT_PARTIT_DE                                     */
/*==============================================================*/
create table A_FAIT_PARTIT_DE  (
   NUMERO_ASSOCIATION   NUMBER(8)                       not null,
   NUMERO_ETUDIANT      NUMBER(8)                       not null,
   constraint PK_A_FAIT_PARTIT_DE primary key (NUMERO_ASSOCIATION, NUMERO_ETUDIANT)
);

/*==============================================================*/
/* Index : A_FAIT_PARTIT_DE_FK                                  */
/*==============================================================*/
create index A_FAIT_PARTIT_DE_FK on A_FAIT_PARTIT_DE (
   NUMERO_ASSOCIATION ASC
);

/*==============================================================*/
/* Index : A_FAIT_PARTIT_DE2_FK                                 */
/*==============================================================*/
create index A_FAIT_PARTIT_DE2_FK on A_FAIT_PARTIT_DE (
   NUMERO_ETUDIANT ASC
);

/*==============================================================*/
/* Table : A_OBTENU                                             */
/*==============================================================*/
create table A_OBTENU  (
   NUMERO_GRADE         NUMBER(8)                       not null,
   NUMERO_ETUDIANT      NUMBER(8)                       not null,
   constraint PK_A_OBTENU primary key (NUMERO_GRADE, NUMERO_ETUDIANT)
);

/*==============================================================*/
/* Index : A_OBTENU_FK                                          */
/*==============================================================*/
create index A_OBTENU_FK on A_OBTENU (
   NUMERO_GRADE ASC
);

/*==============================================================*/
/* Index : A_OBTENU2_FK                                         */
/*==============================================================*/
create index A_OBTENU2_FK on A_OBTENU (
   NUMERO_ETUDIANT ASC
);

/*==============================================================*/
/* Table : COMPORTE                                             */
/*==============================================================*/
create table COMPORTE  (
   NUMERO_DIPLOME       NUMBER(8)                       not null,
   NUMERO_MATIERE       NUMBER(8)                       not null,
   constraint PK_COMPORTE primary key (NUMERO_DIPLOME, NUMERO_MATIERE)
);

/*==============================================================*/
/* Index : COMPORTE_FK                                          */
/*==============================================================*/
create index COMPORTE_FK on COMPORTE (
   NUMERO_DIPLOME ASC
);

/*==============================================================*/
/* Index : COMPORTE2_FK                                         */
/*==============================================================*/
create index COMPORTE2_FK on COMPORTE (
   NUMERO_MATIERE ASC
);

/*==============================================================*/
/* Table : CONTACT                                              */
/*==============================================================*/
create table CONTACT  (
   ADRESSE_POSTALE      VARCHAR2(1024),
   ADRESSE_EMAIL        VARCHAR2(1024),
   VILLE                CHAR(256),
   NUMERO_TELEPHONE     CHAR(256),
   NUMERO_CONTACT       NUMBER(8)                       not null,
   NUMERO_ETUDIANT      NUMBER(8),
   constraint PK_CONTACT primary key (NUMERO_CONTACT)
);

/*==============================================================*/
/* Index : EST_ENREGISTRE_A2_FK                                 */
/*==============================================================*/
create index EST_ENREGISTRE_A2_FK on CONTACT (
   NUMERO_ETUDIANT ASC
);

/*==============================================================*/
/* Table : DIPLOME                                              */
/*==============================================================*/
create table DIPLOME  (
   NOM_DIPLOME          CHAR(256),
   NUMERO_DIPLOME       NUMBER(8)                       not null,
   constraint PK_DIPLOME primary key (NUMERO_DIPLOME)
);

/*==============================================================*/
/* Table : ENTREPRISE                                           */
/*==============================================================*/
create table ENTREPRISE  (
   PAYS                 CHAR(256),
   ACTIVITE_ENTREPRISE  VARCHAR2(1024),
   NOM_ENTREPRISE       CHAR(256),
   NUMERO_ENTREPRISE    NUMBER(8)                       not null,
   constraint PK_ENTREPRISE primary key (NUMERO_ENTREPRISE)
);

/*==============================================================*/
/* Table : ETUDIANT                                             */
/*==============================================================*/
create table ETUDIANT  (
   PRENOM               CHAR(128),
   NATIONALITE          CHAR(128),
   DATE_NAISSANCE       DATE,
   PROMOTION            NUMBER(4),
   MENTION              CHAR(128),
   NOM_ETUDIANT         CHAR(256),
   NUMERO_ETUDIANT      NUMBER(8)                       not null,
   NUMERO_ENTREPRISE    NUMBER(8),
   NUMERO_CONTACT       NUMBER(8),
   constraint PK_ETUDIANT primary key (NUMERO_ETUDIANT)
);

/*==============================================================*/
/* Index : TRAVAILLE_POUR_FK                                    */
/*==============================================================*/
create index TRAVAILLE_POUR_FK on ETUDIANT (
   NUMERO_ENTREPRISE ASC
);

/*==============================================================*/
/* Index : EST_ENREGISTRE_A_FK                                  */
/*==============================================================*/
create index EST_ENREGISTRE_A_FK on ETUDIANT (
   NUMERO_CONTACT ASC
);

/*==============================================================*/
/* Table : GRADE                                                */
/*==============================================================*/
create table GRADE  (
   GRADE                INTEGER,
   NUMERO_GRADE         NUMBER(8)                       not null,
   constraint PK_GRADE primary key (NUMERO_GRADE)
);

/*==============================================================*/
/* Table : MATIERE                                              */
/*==============================================================*/
create table MATIERE  (
   CREDIT               NUMBER(6),
   NOM_MATIERE          CHAR(256),
   NUMERO_MATIERE       NUMBER(8)                       not null,
   NUMERO_GRADE         NUMBER(8)                       not null,
   constraint PK_MATIERE primary key (NUMERO_MATIERE)
);

/*==============================================================*/
/* Index : EN_SUIVANT_FK                                        */
/*==============================================================*/
create index EN_SUIVANT_FK on MATIERE (
   NUMERO_GRADE ASC
);

/*==============================================================*/
/* Table : REALISE                                              */
/*==============================================================*/
create table REALISE  (
   NUMERO_DIPLOME       NUMBER(8)                       not null,
   NUMERO_ETUDIANT      NUMBER(8)                       not null,
   constraint PK_REALISE primary key (NUMERO_DIPLOME, NUMERO_ETUDIANT)
);

/*==============================================================*/
/* Index : REALISE_FK                                           */
/*==============================================================*/
create index REALISE_FK on REALISE (
   NUMERO_DIPLOME ASC
);

/*==============================================================*/
/* Index : REALISE2_FK                                          */
/*==============================================================*/
create index REALISE2_FK on REALISE (
   NUMERO_ETUDIANT ASC
);

alter table A_FAIT_PARTIT_DE
   add constraint FK_A_FAIT_P_A_FAIT_PA_ASSOCIAT foreign key (NUMERO_ASSOCIATION)
      references ASSOCIATION (NUMERO_ASSOCIATION);

alter table A_FAIT_PARTIT_DE
   add constraint FK_A_FAIT_P_A_FAIT_PA_ETUDIANT foreign key (NUMERO_ETUDIANT)
      references ETUDIANT (NUMERO_ETUDIANT);

alter table A_OBTENU
   add constraint FK_A_OBTENU_A_OBTENU_GRADE foreign key (NUMERO_GRADE)
      references GRADE (NUMERO_GRADE);

alter table A_OBTENU
   add constraint FK_A_OBTENU_A_OBTENU2_ETUDIANT foreign key (NUMERO_ETUDIANT)
      references ETUDIANT (NUMERO_ETUDIANT);

alter table COMPORTE
   add constraint FK_COMPORTE_COMPORTE_DIPLOME foreign key (NUMERO_DIPLOME)
      references DIPLOME (NUMERO_DIPLOME);

alter table COMPORTE
   add constraint FK_COMPORTE_COMPORTE2_MATIERE foreign key (NUMERO_MATIERE)
      references MATIERE (NUMERO_MATIERE);

alter table CONTACT
   add constraint FK_CONTACT_EST_ENREG_ETUDIANT foreign key (NUMERO_ETUDIANT)
      references ETUDIANT (NUMERO_ETUDIANT);

alter table ETUDIANT
   add constraint FK_ETUDIANT_EST_ENREG_CONTACT foreign key (NUMERO_CONTACT)
      references CONTACT (NUMERO_CONTACT);

alter table ETUDIANT
   add constraint FK_ETUDIANT_TRAVAILLE_ENTREPRI foreign key (NUMERO_ENTREPRISE)
      references ENTREPRISE (NUMERO_ENTREPRISE);

alter table MATIERE
   add constraint FK_MATIERE_EN_SUIVAN_GRADE foreign key (NUMERO_GRADE)
      references GRADE (NUMERO_GRADE);

alter table REALISE
   add constraint FK_REALISE_REALISE_DIPLOME foreign key (NUMERO_DIPLOME)
      references DIPLOME (NUMERO_DIPLOME);

alter table REALISE
   add constraint FK_REALISE_REALISE2_ETUDIANT foreign key (NUMERO_ETUDIANT)
      references ETUDIANT (NUMERO_ETUDIANT);

