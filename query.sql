DROP TABLE IF EXISTS user_ratings
DROP TABLE IF EXISTS manga_anime
DROP TABLE IF EXISTS master_anime;
DROP TABLE IF EXISTS gender_statistics;
DROP TABLE IF EXISTS gender_non_binary;
DROP TABLE IF EXISTS gender_female;
DROP TABLE IF EXISTS gender_male;
DROP TABLE IF EXISTS master_user;

SELECT * FROM user_ratings;
SELECT * FROM manga_anime;
SELECT * FROM master_anime;
SELECT * FROM gender_statistics;
SELECT * FROM gender_non_binary;
SELECT * FROM gender_female;
SELECT * FROM gender_male;
SELECT * FROM master_user;

SELECT user_id, gender, username, user_days_spent_watching
FROM gender_female;

SELECT user_id, gender, username, user_days_spent_watching
FROM gender_male;

SELECT gender, days_watched, total_episodes_watched
FROM gender_statistics
WHERE gender = 'Male';

SELECT anime_id, title, rank, scored_by
FROM user_ratings
WHERE rank<100;
