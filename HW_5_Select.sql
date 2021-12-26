SELECT name_genre  AS наменование_жанра,
      count(dg.music_genre_id)  AS количество_исполнителей
FROM music_genre mg
LEFT JOIN definition_genre dg ON mg.id = dg.music_genre_id
GROUP BY name_genre

SELECT nickname AS название_альбома,
	year_of_relise AS год_выхода_альбома,
	count(t.id) AS количество_треков
FROM music_album ma
LEFT JOIN track t ON ma.id = t.music_album_id
WHERE year_of_relise BETWEEN 2019 AND 2020 
GROUP BY nickname, year_of_relise	

SELECT nickname AS название_альбома,
	AVG(time) AS средняя_продолжительность
FROM music_album ma
LEFT JOIN track t ON ma.id = t.music_album_id	
GROUP BY nickname	

SELECT e.nickname
FROM executor e 
WHERE e.id NOT IN ( 
SELECT e.id 
FROM executor e
LEFT JOIN definition_album da ON e.id = da.executor_id 
LEFT JOIN music_album ma ON da.music_album_id = ma.id
WHERE  ma.year_of_relise = 2020
) 

SELECT c.nickname AS название_сборника
FROM collection  c 
LEFT JOIN definition_collection dc ON  c.id = dc.collection_id
LEFT JOIN track t ON dc.track_id = t.id
LEFT JOIN definition_album da ON t.music_album_id = da.music_album_id
LEFT JOIN executor e ON da.executor_id = e.id 
WHERE e.nickname  = 'Snoop Dogg'
GROUP BY c.nickname

SELECT ma.nickname AS название_альбома
FROM music_album ma
LEFT JOIN definition_album da ON ma.id = da.music_album_id
LEFT JOIN definition_genre dg ON da.executor_id = dg.executor_id
GROUP BY ma.nickname
having (COUNT(dg.executor_id) > 1)

SELECT t.name AS название_трека
FROM track t
LEFT JOIN definition_collection dc ON t.id = dc.track_id
WHERE dc.track_id  is NULL
 
SELECT e.nickname AS исполнитель,
	   t.time AS время
FROM executor e
LEFT JOIN definition_album da ON e.id = da.executor_id
LEFT JOIN track t ON da.music_album_id = t.music_album_id
GROUP BY e.nickname
HAVING t.time =(SELECT MIN(time) FROM track) 

SELECT ma.nickname AS название_альбома
FROM music_album ma
LEFT JOIN track t ON ma.id = t.music_album_id
GROUP BY ma.nickname
HAVING COUNT(t.id)  = (SELECT count(id)   
FROM track
GROUP BY music_album_id
GROUP BY count(id) limit 1)
