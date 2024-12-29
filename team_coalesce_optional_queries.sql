-- OPTIONAL QUERIES


/*
1) checking for values other than 0,1
*/
SELECT
	DISTINCT(morning)
FROM 
	mystic_manuscript.team_coalesce;


/*
2) checking for id difference
 */
SELECT
	COUNT(*) - COUNT (DISTINCT (id)) AS "Count_diff"
FROM 
	mystic_manuscript.team_coalesce;

/*
3) checking FOR gender other than male/female
 */
SELECT
	gender
FROM
	mystic_manuscript.team_coalesce
WHERE
	gender NOT IN ('M', 'F');



--COUNT ID one
SELECT id, count(id)
FROM mystic_manuscript.team_coalesce tc
GROUP BY tc.id
HAVING count(tc.id) > 1
ORDER BY tc.id;
