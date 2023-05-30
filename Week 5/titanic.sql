--Count how many rows you have.--
SELECT COUNT(*) FROM titanic;
--887 rows returned--


--How many people survived?--
SELECT Count("Survived")
FROM titanic
WHERE "Survived" = 1
--342 passengers survived--

--What passenger class has the largest population?--
SELECT COUNT("Pclass")
FROM titanic
GROUP BY "Pclass"
ORDER BY COUNT("Pclass")
--184--
--216--
--487--
--3rd class is the most populous--