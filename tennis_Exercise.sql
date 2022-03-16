#Exercise Q1
SELECT player_id
FROM tennis.player
WHERE member_since between '2005' and '2010'
order by player_id;

#Exercise Q4
SELECT player_id, birthdate
FROM tennis.player
WHERE date_format(birthdate, '%Y') in ('1997','1998', '2000');

#Exercise Q5
SELECT player_id
FROM tennis.player
WHERE city not in ('Geel','Kasterlee');

#Exercise Q6
SELECT player_id, name
FROM tennis.player
WHERE name like '%en%';

#Exercise Q7
SELECT name, player_id
FROM tennis.player
WHERE name like '%a_';

#Exercise Q8
SELECT player_id, name, initials
FROM tennis.player
WHERE name like '_a%a_';

#Exercise Q9
SELECT player_id, birthdate
FROM tennis.player
WHERE bond_number is null;


# Exercises scalair functions and distinct
#Exercise 1
SELECT
	upper(name)
AS 
	'name'
FROM 
	tennis.player
order by name asc;

#Exercise 2
SELECT 
	NAME,
	char_length(name)
AS 'length'
FROM
	tennis.player;

#Exercise 3
SELECT
	concat(lower(initials),'. ',upper(name)) as name,
	bond_number
FROM tennis.player;

#Exercise4
SELECT
	player_id,
	concat(initials, '. ', name)  as 'name'
FROM
	tennis.player
WHERE
	name like 'B%';
    
#Exercise 5
SELECT fine_id
FROM tennis.fine
WHERE date_format(date_fine,'%Y') = 2019;
    
#Exercise 6
SELECT 
	fine_id,
    date_format(date_fine,'%Y') as 'jaar'
FROM tennis.fine
WHERE date_format(date_fine,'%Y') > 2017;
    
#Exercise 7
SELECT
	concat(upper(initials),'. ',name), 
    IFNULL(bond_number,'no number') as 'bondnumber'
FROM tennis.player
WHERE city = 'Geel';

#Exercise 8
SELECT 
	player_id,
    birthdate,
    date_format(birthdate,'%W') as 'weekday',
    date_format(birthdate,'%M') as 'month'
FROM tennis.player
WHERE player_id < 10;

#Exercise 9
SELECT
	concat('Player ',name,' was born on ',date_format(birthdate,'%d/%m/%Y'),' ,lives in ', upper(city),' and has bondnumber ', bond_number) as matchplayer
FROM tennis.player
WHERE bond_number IS NOT NULL;

#Exercise 10
SELECT
	concat('Player ', player_id, ' has had the following fine: ', truncate(amount_fine,0)) as "Players' fine"
FROM tennis.fine;

#Exercise 11
SELECT 
	name,
    datediff(current_date,birthdate) as 'months_lived'
FROM tennis.player
ORDER by months_lived;

#Exercise 12
SELECT 
	player_id,
	truncate(amount_fine,0) as 'fine',
    truncate(amount_fine + (amount_fine*0.15),0) as 'new fine'
From tennis.fine;

#Exercise 13
SELECT
	fine_id,
    player_id,
    concat(date_add(date_fine, interval +3 MONTH))
FROM tennis.fine;

#Exercise 14
SELECT DISTINCT player_id
FROM tennis.fine;

#Exercise 15
SELECT DISTINCT member_since
FROM tennis.player
ORDER BY member_since;

#Exercise 16
SELECT DISTINCT player_id
FROM tennis.board_member
WHERE position = 'treasurer';