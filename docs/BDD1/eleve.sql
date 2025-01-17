PRAGMA foreign_keys = ON;
/*ajout de Cl&eacutementine H&eacutebert, et il faut changer la r&eacuteponse de la question c du TD3 (12 &eacutel&egraveves))*/
CREATE TABLE Lyceen(
	id INTEGER PRIMARY KEY, 
	nom TEXT,
	prenom TEXT,
	ddn TEXT,
	niveau TEXT);
INSERT INTO Lyceen VALUES (426,"Tilliou","S&eacutebastien","2004-05-01","Term");
INSERT INTO Lyceen VALUES (427,"H&eacutebert ","Juliette","2004-04-05","Term");
INSERT INTO Lyceen VALUES (428,"Ouaderni","Lina","2004-09-16","Term");
INSERT INTO Lyceen VALUES (429,"Sebahi","Tahar","2004-10-27","Term");
INSERT INTO Lyceen VALUES (430,"Lerusa","Pablo","2004-11-06","Term");
INSERT INTO Lyceen VALUES (431,"Sibon","Emma","2004-06-09","Term");
INSERT INTO Lyceen VALUES (432,"Del&eacutetang","Tom","2004-03-14","Term");
INSERT INTO Lyceen VALUES (433,"Koher","Alan","2004-01-28","Term");
INSERT INTO Lyceen VALUES (435,"H&eacutebert","Cl&eacutementine","2005-02-14","Term");
INSERT INTO Lyceen VALUES (502,"Rainier","Samuel","2004-08-12","Prem");
INSERT INTO Lyceen VALUES (503,"Gueffier","Lucie","2004-01-07","Prem");
INSERT INTO Lyceen VALUES (504,"Rigal","Annabelle","2005-07-02","Prem");
INSERT INTO Lyceen VALUES (505,"Garzoulhi","Hamza","2005-12-28","Prem");
INSERT INTO Lyceen VALUES (506,"Pham","Pascale","2005-01-02","Prem");
INSERT INTO Lyceen VALUES (507,"Kaya","Ali","2005-12-22","Prem");
INSERT INTO Lyceen VALUES (508,"Zamora","Elodie","2005-06-15","Prem");
INSERT INTO Lyceen VALUES (509,"Lohin","Annabelle","2005-04-22","Prem");
INSERT INTO Lyceen VALUES (668,"Dossou","Melissa","2005-05-11","Sec");
INSERT INTO Lyceen VALUES (669,"Lampand","Arnaud","2005-04-09","Sec");
INSERT INTO Lyceen VALUES (670,"Sabora","Jeremy","2006-08-21","Sec");
INSERT INTO Lyceen VALUES (671,"Felouati","Selma","2006-09-13","Sec");

CREATE TABLE Specialite(intitule TEXT PRIMARY KEY);
INSERT INTO Specialite VALUES ("Math&eacutematiques");
INSERT INTO Specialite VALUES ("Physique-Chimie");
INSERT INTO Specialite VALUES ("Num&eacuterique et Sciences Informatiques");
INSERT INTO Specialite VALUES ("Sciences de la Vie et de la Terre");
INSERT INTO Specialite VALUES ("Sciences de l’Ing&eacutenieur");
INSERT INTO Specialite VALUES ("Sciences Economiques et Sociales");
INSERT INTO Specialite VALUES ("Langues, Litt&eacuteratures et Cultures Etrang&egraveres");
INSERT INTO Specialite VALUES ("Histoire-G&eacuteographie-SPG");
INSERT INTO Specialite VALUES ("Humanit&eacutes, litt&eacuterature et philosophie");
INSERT INTO Specialite VALUES ("Litt&eacuterature, langues et culture de l’Antiquit&eacute");


CREATE TABLE Groupe(intitule TEXT,grpid TEXT PRIMARY KEY,places INTEGER,niveau TEXT, FOREIGN KEY(intitule) REFERENCES Specialite(intitule));
INSERT INTO Groupe VALUES ("Math&eacutematiques","1MathG1",35,"Prem");
INSERT INTO Groupe VALUES ("Math&eacutematiques","1MathG2",35,"Prem");
INSERT INTO Groupe VALUES ("Math&eacutematiques","1MathG3",35,"Prem");
INSERT INTO Groupe VALUES ("Physique-Chimie","1PhysG1",24,"Prem");
INSERT INTO Groupe VALUES ("Physique-Chimie","1PhysG2",24,"Prem");
INSERT INTO Groupe VALUES ("Physique-Chimie","1PhysG3",24,"Prem");
INSERT INTO Groupe VALUES ("Num&eacuterique et Sciences Informatiques","1NSIG1",24,"Prem");
INSERT INTO Groupe VALUES ("Num&eacuterique et Sciences Informatiques","1NSIG2",24,"Prem");
INSERT INTO Groupe VALUES ("Sciences de la Vie et de la Terre","1SVTG1",24,"Prem");
INSERT INTO Groupe VALUES ("Sciences de la Vie et de la Terre","1SVTG2",24,"Prem");
INSERT INTO Groupe VALUES ("Sciences de la Vie et de la Terre","1SVTG3",24,"Prem");
INSERT INTO Groupe VALUES ("Sciences de l’Ing&eacutenieur","1SIG1",24,"Prem");
INSERT INTO Groupe VALUES ("Sciences de l’Ing&eacutenieur","1SIG2",24,"Prem");
INSERT INTO Groupe VALUES ("Sciences Economiques et Sociales","1SESG1",35,"Prem");
INSERT INTO Groupe VALUES ("Sciences Economiques et Sociales","1SESG2",35,"Prem");
INSERT INTO Groupe VALUES ("Langues, Litt&eacuteratures et Cultures Etrang&egraveres","1LLCEG1",35,"Prem");
INSERT INTO Groupe VALUES ("Histoire-G&eacuteographie-SPG","1HGGSPG1",35,"Prem");
INSERT INTO Groupe VALUES ("Math&eacutematiques","TMathG1",35,"Term");
INSERT INTO Groupe VALUES ("Math&eacutematiques","TMathG2",35,"Term");
INSERT INTO Groupe VALUES ("Physique-Chimie","TPhysG1",24,"Term");
INSERT INTO Groupe VALUES ("Physique-Chimie","TPhysG2",24,"Term");
INSERT INTO Groupe VALUES ("Num&eacuterique et Sciences Informatiques","TNSIG1",24,"Term");
INSERT INTO Groupe VALUES ("Sciences de la Vie et de la Terre","TSVTG1",24,"Term");
INSERT INTO Groupe VALUES ("Sciences de la Vie et de la Terre","TSVTG2",24,"Term");
INSERT INTO Groupe VALUES ("Sciences de l’Ing&eacutenieur","TSIG1",24,"Term");
INSERT INTO Groupe VALUES ("Sciences Economiques et Sociales","TSESG1",35,"Term");
INSERT INTO Groupe VALUES ("Langues, Litt&eacuteratures et Cultures Etrang&egraveres","TLLCEG1",35,"Term");
INSERT INTO Groupe VALUES ("Histoire-G&eacuteographie-SPG","THGGSPG1",35,"Term");


CREATE TABLE Affectation (id INTEGER , grpid TEXT ,PRIMARY KEY (id,grpid),FOREIGN KEY(id) REFERENCES Lyceen(id), FOREIGN KEY(grpid) REFERENCES Groupe(grpid)); 
INSERT INTO Affectation VALUES (426,"TMathG2");
INSERT INTO Affectation VALUES (427,"TMathG2");
INSERT INTO Affectation VALUES (428,"TSVTG1");
INSERT INTO Affectation VALUES (429,"TSVTG1");
INSERT INTO Affectation VALUES (430,"TSVTG2");
INSERT INTO Affectation VALUES (431,"TMathG1");
INSERT INTO Affectation VALUES (432,"TPhysG2");
INSERT INTO Affectation VALUES (426,"TPhysG2");
INSERT INTO Affectation VALUES (427,"TPhysG2");
INSERT INTO Affectation VALUES (428,"TPhysG1");
INSERT INTO Affectation VALUES (429,"TPhysG1");
INSERT INTO Affectation VALUES (430,"TMathG2");
INSERT INTO Affectation VALUES (431,"TNSIG1");
INSERT INTO Affectation VALUES (432,"TNSIG1");
INSERT INTO Affectation VALUES (433,"TLLCEG1");
INSERT INTO Affectation VALUES (433,"THGGSPG1");
INSERT INTO Affectation VALUES (435,"TMathG1");
INSERT INTO Affectation VALUES (435,"TSVTG2");
INSERT INTO Affectation VALUES (502,"1MathG1");
INSERT INTO Affectation VALUES (503,"1MathG1");
INSERT INTO Affectation VALUES (504,"1MathG3");
INSERT INTO Affectation VALUES (505,"1MathG1");
INSERT INTO Affectation VALUES (506,"1MathG1");
INSERT INTO Affectation VALUES (507,"1MathG2");
INSERT INTO Affectation VALUES (508,"1MathG3");
INSERT INTO Affectation VALUES (502,"1PhysG1");
INSERT INTO Affectation VALUES (503,"1PhysG1");
INSERT INTO Affectation VALUES (504,"1PhysG2");
INSERT INTO Affectation VALUES (505,"1SESG2");
INSERT INTO Affectation VALUES (506,"1PhysG1");
INSERT INTO Affectation VALUES (507,"1NSIG1");
INSERT INTO Affectation VALUES (508,"1SESG1");
INSERT INTO Affectation VALUES (502,"1SIG2");
INSERT INTO Affectation VALUES (503,"1SVTG1");
INSERT INTO Affectation VALUES (504,"1SVTG1");
INSERT INTO Affectation VALUES (505,"1SVTG1");
INSERT INTO Affectation VALUES (506,"1NSIG1");
INSERT INTO Affectation VALUES (507,"1SIG2");
INSERT INTO Affectation VALUES (508,"1HGGSPG1");
INSERT INTO Affectation VALUES (509,"1HGGSPG1");
INSERT INTO Affectation VALUES (509,"1LLCEG1");
INSERT INTO Affectation VALUES (509,"1SVTG1");

CREATE TABLE Professeur(nom TEXT, pid INTEGER PRIMARY KEY, discipline TEXT); 
INSERT INTO Professeur VALUES ("Mme Lieville",34,"Math&eacutematiques");
INSERT INTO Professeur VALUES("Mr El Khatib",35,"Math&eacutematiques");
INSERT INTO Professeur VALUES("Mr Scalaire",36,"Math&eacutematiques");
INSERT INTO Professeur VALUES("Mme Germain",37,"Math&eacutematiques");
INSERT INTO Professeur VALUES("Mme Parail",38,"Physique-Chimie");
INSERT INTO Professeur VALUES("Mr Bernal",39,"Physique-Chimie");
INSERT INTO Professeur VALUES("Mr Sylv&egravere",40,"Physique-Chimie");
INSERT INTO Professeur VALUES("Mme Yamina",41,"Physique-Chimie");
INSERT INTO Professeur VALUES("Mr N'Guyen",42,"Sciences de la Vie et de la Terre");
INSERT INTO Professeur VALUES("Mme Espars",43,"Sciences de la Vie et de la Terre");
INSERT INTO Professeur VALUES("Mr Toril",44,"Sciences de la Vie et de la Terre");
INSERT INTO Professeur VALUES("Mme Halpen",45,"Sciences Economiques et Sociales");
INSERT INTO Professeur VALUES("Mr Kamene",46,"Sciences Economiques et Sociale");
INSERT INTO Professeur VALUES("Mr Costa",47,"Sciences de l'Ing&eacutenieur");
INSERT INTO Professeur VALUES("Mr Burgmann",48,"Sciences de l'Ing&eacutenieur");
INSERT INTO Professeur VALUES("Mme Dulac",49,"Histoire-G&eacuteographie-SPG");
INSERT INTO Professeur VALUES("Mme Eliot",50,"Langues, Litt&eacuteratures et Cultures Etrang&egraveres");

CREATE TABLE Enseigne (pid INTEGER,grpid TEXT,PRIMARY KEY (pid,grpid), FOREIGN KEY(pid) REFERENCES Professeur(pid), FOREIGN KEY(grpid)  REFERENCES Groupe(grpid));
INSERT INTO Enseigne VALUES (39,"1NSIG1");
INSERT INTO Enseigne VALUES (34,"TMathG2");
INSERT INTO Enseigne VALUES (35,"1MathG2");
INSERT INTO Enseigne VALUES (36,"1MathG3");
INSERT INTO Enseigne VALUES (37,"TMathG1");
INSERT INTO Enseigne VALUES (38,"TPhysG2");
INSERT INTO Enseigne VALUES (39,"1PhysG2");
INSERT INTO Enseigne VALUES (40,"1PhysG3");
INSERT INTO Enseigne VALUES (41,"TPhysG1");
INSERT INTO Enseigne VALUES (42,"1SVTG1");
INSERT INTO Enseigne VALUES (43,"1SVTG2");
INSERT INTO Enseigne VALUES (44,"1SVTG3");
INSERT INTO Enseigne VALUES (45,"1SESG1");
INSERT INTO Enseigne VALUES (46,"TSESG1");
INSERT INTO Enseigne VALUES (47,"1SIG1");
INSERT INTO Enseigne VALUES (48,"1SIG2");
INSERT INTO Enseigne VALUES (49,"1HGGSPG1");
INSERT INTO Enseigne VALUES (50,"1LLCEG1");
INSERT INTO Enseigne VALUES (37,"1NSIG2");
INSERT INTO Enseigne VALUES (39,"1PhysG1");
INSERT INTO Enseigne VALUES (36,"1MathG1");
INSERT INTO Enseigne VALUES (42,"TSVTG1");
INSERT INTO Enseigne VALUES (43,"TSVTG2");
INSERT INTO Enseigne VALUES (48,"TSIG1");
INSERT INTO Enseigne VALUES (49,"THGGSPG1");
INSERT INTO Enseigne VALUES (50,"TLLCEG1");
INSERT INTO Enseigne VALUES (37,"TNSIG1");


