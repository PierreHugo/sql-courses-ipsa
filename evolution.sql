ALTER TABLE segment
ADD nbSalle TINYINT(2) DEFAULT 0;

ALTER TABLE segment
ADD nbPoste TINYINT(2) DEFAULT 0;

ALTER TABLE logiciel
ADD nbInstall TINYINT(2) DEFAULT 0;

ALTER TABLE poste
ADD nbLog TINYINT(2) DEFAULT 0;

ALTER TABLE salle
MODIFY nomSalle VARCHAR(30);

ALTER TABLE segment
MODIFY nomSegment VARCHAR(15);

/*ALTER TABLE segment
MODIFY nomSegment VARCHAR(13);

 ne fonctionne pas car une donnée est plus grande que 13*/

ALTER TABLE installer
ADD CONSTRAINT constraint_nLog_nPoste UNIQUE (nLog,nPoste);

ALTER TABLE poste
ADD CONSTRAINT constraint_indIP FOREIGN KEY (indIP) REFERENCES segment (indIP);

ALTER TABLE poste
ADD CONSTRAINT constraint_nSalle FOREIGN KEY (nSalle) REFERENCES salle (nSalle);

ALTER TABLE poste
ADD CONSTRAINT constraint_type FOREIGN KEY (typePoste) REFERENCES types (typeLP);

ALTER TABLE installer
ADD CONSTRAINT constraint_nPoste FOREIGN KEY (nPoste) REFERENCES poste (nPoste);

ALTER TABLE installer
ADD CONSTRAINT constraint_log FOREIGN KEY (nLog) REFERENCES logiciel (nLog);

/*ALTER TABLE logiciel
ADD CONSTRAINT constraint_type2 FOREIGN KEY (typeLog) REFERENCES types (typeLP);

ALTER TABLE salle
ADD CONSTRAINT constraint_indIP2 FOREIGN KEY (indIP) REFERENCES segment (indIP);

ne fonctionneront pas */

SELECT * FROM salle WHERE indIP = '130.120.83';
SELECT * FROM logiciel WHERE nLog = 'log8';

DELETE FROM salle WHERE indIP = '130.120.83'; 

INSERT INTO types (typeLP, nomType)
VALUES
('BeOS', 'Systeme Be');

ALTER TABLE logiciel
ADD CONSTRAINT constraint_type2 FOREIGN KEY (typeLog) REFERENCES types (typeLP);

ALTER TABLE salle
ADD CONSTRAINT constraint_indIP2 FOREIGN KEY (indIP) REFERENCES segment (indIP);

