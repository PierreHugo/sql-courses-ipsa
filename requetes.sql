#a
SELECT typePoste FROM Poste WHERE nPoste = 'p8';

#b
SELECT nomLog FROM Logiciel WHERE typeLog = 'UNIX';

#c
SELECT nomPoste, indIP, ad, nSalle FROM Poste WHERE typePoste IN ('UNIX','PCWS');

#d
SELECT nomPoste, indIP, ad, nSalle FROM Poste WHERE indIP = '130.120.80' ORDER BY nSalle DESC;

#e
SELECT nLog FROM Installer WHERE nPoste = 'p6';

#f
SELECT nPoste FROM Installer WHERE nLog = 'log1';

#g
SELECT nomPoste, CONCAT(indIP,'.',ad) FROM Poste WHERE typePoste = 'TX';

#h
SELECT nPoste, COUNT(nLog) FROM Installer GROUP BY nPoste;

#i
SELECT nSalle, COUNT(nPoste) FROM Poste GROUP BY nSalle;

#j
SELECT nLog, COUNT(DISTINCT nPoste) FROM Installer GROUP BY nLog;

#k
SELECT AVG(prix) FROM Logiciel WHERE typeLog = 'UNIX';

#l
SELECT MAX(dateAch) FROM Logiciel;

#m
SELECT nPoste FROM Installer GROUP BY nPoste HAVING COUNT(nLog) = 2;

#n
SELECT COUNT(*) FROM (SELECT nPoste FROM Installer GROUP BY nPoste HAVING COUNT(nLog) = 2) p;

#o
SELECT typeLP FROM Types WHERE typeLP NOT IN (SELECT typePoste FROM Poste); 

#p
SELECT DISTINCT typePoste FROM Poste WHERE typePoste IN (SELECT typeLog FROM Logiciel);