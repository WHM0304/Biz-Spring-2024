-- galleryDB3
CREATE DATABASE galleryDB3;
USE galleryDB3;

SHOW TABLES;

DESC tbl_gallerys;
DESC tbl_images;

SELECT * FROM tbl_gallerys 
ORDER BY g_date DESC;
SELECT  *FROM tbl_images;


SELECT *
FROM tbl_gallerys G
	LEFT JOIN tbl_images I
		ON G.g_id = I.i_gid;