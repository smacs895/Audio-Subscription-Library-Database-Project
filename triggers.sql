-- OUR FUNCTION

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `GetCurrentRating`(`sid` VARCHAR(16)) RETURNS float
BEGIN

  DECLARE current_rating FLOAT;
  DECLARE song_plays INT;
	DECLARE song_playlists INT;
	DECLARE total_plays INT;
	DECLARE total_playlists INT;
	DECLARE rating Float;
	SELECT singles.single_number_of_streams_or_downloads INTO song_plays from singles where singles.single_id =sid;
	SELECT count(*) into song_playlists from playlist_songs where playlist_songs.single_id = sid;
	SELECT sum(singles.single_number_of_streams_or_downloads) into total_plays from singles ;
	select count(*) into total_playlists from playlists;
	SELECT ((song_plays + song_playlists *100)/(total_plays + total_playlists *100))INTO current_rating;

             
  RETURN TRUNCATE(current_rating, 2);
END$$
DELIMITER ;

-- Our PROCEDURE

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_rate`(IN `sing_id` VARCHAR(15) CHARSET utf8)
    MODIFIES SQL DATA
BEGIN
DECLARE rating float;
select truncate(GetCurrentRating(sing_id),2) into rating;
IF (rating <> (Select singles.Single_royalty_rate from singles where singles.single_id = sing_id)) THEN
UPDATE singles set singles.Single_royalty_rate = rating where singles.single_id = sing_id;
END IF;
END$$
DELIMITER ;

--Our first TRIGGER
CREATE TRIGGER `updated_playlist` BEFORE INSERT ON `playlist_songs`
 FOR EACH ROW call check_rate(New.single_id)
 
 -- Our Second TRIGGER
CREATE TRIGGER `Delete_Single` AFTER DELETE ON `singles`
 FOR EACH ROW BEGIN 
INSERT INTO see_you_soon VALUES (old.single_id, old.artist_id, 
old.genre_id, old.publisher_id, old.album_id , old.image_id ,
 old.single_name , old.single_length, old.single_audio_file_bytesize, 
 old.parental_guidance_status, old.single_number_of_streams_or_downloads, old.Single_royalty_rate); 
END