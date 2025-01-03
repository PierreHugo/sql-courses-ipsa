INSERT INTO segment (indIP, nomSegment)
VALUES
('130.120.80', 'Brin RDC'),
('130.120.81', 'Brin 1er etage'),
('130.120.82', 'Brin 2e etage');

INSERT INTO salle (nSalle, nomSalle, nbPoste, indIP)
VALUES
('s01', 'Salle 1', 3, '130.120.80'),
('s02', 'Salle 2', 2, '130.120.80'),
('s03', 'Salle 3', 2, '130.120.80'),
('s11', 'Salle 11', 2, '130.120.81'),
('s12', 'Salle 12', 1, '130.120.81'),
('s21', 'Salle 21', 2, '130.120.82'),
('s22', 'Salle 22', 0, '130.120.83'),
('s23', 'Salle 23', 0, '130.120.83');

INSERT INTO poste (nPoste, nomPoste, indIP, ad, typePoste, nSalle)
VALUES
('p1', 'Poste 1', '130.120.80', '01', 'TX', 's01'),
('p2', 'Poste 2', '130.120.80', '02', 'UNIX', 's01'),
('p3', 'Poste 3', '130.120.80', '03', 'TX', 's01'),
('p4', 'Poste 4', '130.120.80', '04', 'PCWS', 's02'),
('p5', 'Poste 5', '130.120.80', '05', 'PCWS', 's02'),
('p6', 'Poste 6', '130.120.80', '06', 'UNIX', 's03'),
('p7', 'Poste 7', '130.120.80', '07', 'TX', 's03'),
('p8', 'Poste 8', '130.120.81', '01', 'UNIX', 's11'),
('p9', 'Poste 9', '130.120.81', '02', 'TX', 's11'),
('p10', 'Poste 10', '130.120.81', '03', 'UNIX', 's12'),
('p11', 'Poste 11', '130.120.82', '01', 'PCNT', 's21'),
('p12', 'Poste 12', '130.120.82', '02', 'PCWS', 's21');

INSERT INTO logiciel (nLog, nomLog, dateAch, version, typeLog, prix)
VALUES
('log1', 'Oracle 6', '1995-05-13', '6.2', 'UNIX', 3000),
('log2', 'Oracle 8', '1999-09-15', '8i', 'UNIX', 5600),
('log3', 'SQL Server', '1998-04-12', '7', 'PCNT', 2700),
('log4', 'Front Page', '1997-06-03', '5', 'PCWS', 500),
('log5', 'WinDev', '1997-05-12', '5', 'PCWS', 750);

INSERT INTO logiciel (nLog, nomLog, version, typeLog, prix)
VALUES
('log6', 'SQL*Net', '2.0', 'UNIX', 500);

INSERT INTO logiciel (nLog, nomLog, dateAch, version, typeLog, prix)
VALUES
('log7', 'I. I. S.', '2002-04-12', '2', 'PCNT', 810),
('log8', 'DreamWeaver', '2003-09-21', '2.0', 'BeOS', 1400);

INSERT INTO types (typeLP, nomType)
VALUES
('TX', 'Terminal XWindow'),
('UNIX', 'Systeme Unix'),
('PCNT', 'PC Windows NT'),
('PCWS', 'PC Windows'),
('NC', 'Network Computer');


INSERT INTO installer (nPoste, nLog, numIns, dateIns)
VALUES
('p2', 'log1', 1, '2003-05-15'),
('p2', 'log2', 2, '2003-09-17');

INSERT INTO installer (nPoste, nLog, numIns)
VALUES
('p4', 'log5', 3);

INSERT INTO installer (nPoste, nLog, numIns, dateIns)
VALUES
('p6', 'log6', 4, '2003-05-20'),
('p6', 'log1', 5, '2003-05-20'),
('p8', 'log2', 6, '2003-05-19'),
('p8', 'log6', 7, '2003-05-20'),
('p11', 'log3', 8, '2003-04-20'),
('p12', 'log4', 9, '2003-04-20'),
('p11', 'log7', 10, '2003-04-20'),
('p7', 'log7', 11, '2002-04-01');