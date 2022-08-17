USE unternehmen;

SELECT
	mitarbeiter.vorname,
    mitarbeiter.nachname,
    autos.auto_kz
FROM mitarbeiter INNER JOIN autos
on mitarbeiter.id_mitarbeiter = autos.fk_id_mitarbeiter;

-- WITH Alias
SELECT
	m.vorname,
    m.nachname,
    a.auto_kz
FROM mitarbeiter AS m INNER JOIN autos AS a
ON m.id_mitarbeiter = a.fk_id_mitarbeiter;

-- join (left - 3 tables)

SELECT
	m.vorname,
    m.nachname,
    p.projekt_title
FROM
	mitarbeiter AS m
LEFT JOIN zuweisung AS z
ON m.id_mitarbeiter = z.fk_id_mitarbeiter
LEFT JOIN projekt AS p
ON z.fk_id_projekt = p.id_projekt;

-- Join (Right - 3 Tables)
SELECT
	m.vorname,
    m.nachname,
    p.projekt_title
FROM
	mitarbeiter AS m
RIGHT JOIN zuweisung as z
	ON m.id_mitarbeiter = z.fk_id_mitarbeiter
RIGHT JOIN projekt AS p
	ON z.FK_ID_Projekt = p.ID_Projekt;