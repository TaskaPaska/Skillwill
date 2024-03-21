SELECT COUNT(*) AS count_of_events
FROM tblEvent

SELECT MIN(EventDate) AS earliest_event,
  MAX(EventDate) AS newest_event
FROM tblEvent

SELECT C.CountryName,
  MAX(E.EventDate),
  COUNT(*) count_of_events
FROM tblEvent E
JOIN tblCountry C
ON E.CountryID = C.CountryID
GROUP BY C.CountryName


SELECT DISTINCT C.CountryName
FROM tblEvent E
JOIN tblCountry C
ON E.CountryID = C.CountryID


SELECT C.CountryName
FROM tblEvent E
JOIN tblCountry C
ON E.CountryID = C.CountryID
GROUP BY C.CountryName


SELECT CountryName,
  CategoryName,
  MIN(E.EventDate),
  MAX(E.EventDate)
FROM tblEvent E
JOIN tblCountry C ON E.CountryID = C.CountryID
JOIN tblCategory Ca ON Ca.CategoryID = E.CategoryID
GROUP BY CountryName, CategoryName


SELECT Ca.CategoryName,
  MAX(E.EventDate) AS latest_event
FROM tblEvent E
JOIN tblCategory Ca ON Ca.CategoryID = E.CategoryID
GROUP BY Ca.CategoryName
HAVING MAX(E.EventDate) > '2000-01-01'
ORDER BY latest_event
