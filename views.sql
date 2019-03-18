//platinum_artists
CREATE VIEW PlatinumArtists AS 
	SELECT artist_name AS Artist, single_name AS Song, single_number_of_streams_or_downloads AS Listens
	FROM artists JOIN singles ON artists.artist_id = singles.artist_id 
	WHERE singles.artist_id IN( Select singles.artist_id 
					FROM singles 
					WHERE single_number_of_streams_or_downloads > 1000000) 
					ORDER BY single_number_of_streams_or_downloads DESC;


//royalties_to_be_paid. 
CREATE VIEW royalties_to_be_paid AS 
SELECT `artist_name`AS 'Artist',COUNT(single_name) AS 'Number of Singles',  
Truncate(AVG(`Single_royalty_rate`), 2) AS 'Average rate', SUM(single_number_of_streams_or_downloads) AS 'Total Plays', 
TRUNCATE(SUM(((`Single_royalty_rate`*`single_number_of_streams_or_downloads`)/1000)),2) AS 'Total Owed' 
FROM singles LEFT JOIN artists ON singles.artist_id = artists.artist_id GROUP BY artist_name HAVING SUM(single_number_of_streams_or_downloads) >1000;



//top_five_genres
CREATE VIEW top_five_genres AS Select genre_name AS Genre, COUNT(single_name) AS 'Number of Tracks', SUM(`single_number_of_streams_or_downloads`) AS 'Total Plays'
FROM singles LEFT JOIN genres ON singles.genre_id = genres.genre_id 
GROUP BY genre_name
Order BY SUM(single_number_of_streams_or_downloads) DESC Limit 5;