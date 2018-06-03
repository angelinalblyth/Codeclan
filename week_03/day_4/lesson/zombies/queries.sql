-- SELECT victims.* FROM victims
-- INNER JOIN bitings
-- ON bitings.victim_id = victims.id;


SELECT victims.*, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON bitings.zombie_id = zombies.id;

SELECT victims.*, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON bitings.zombie_id = zombies.id
WHERE victims.id = 3;

SELECT victims.*, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON bitings.zombie_id = zombies.id
WHERE victims.run_speed >= 12;
