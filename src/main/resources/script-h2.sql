create table `artista` (
	`ID_ARTISTA` IDENTITY NOT NULL PRIMARY KEY ,
	`NOMBRE` varchar (90),
	`GENERO` varchar (90),
	`PAIS` varchar (90),
	`DISCOGRAFIA` varchar (90)
); 

create table `album` (
	`ID_ALBUM` IDENTITY NOT NULL PRIMARY KEY ,
	`NOMBRE` varchar (90),
	`CANCION_POPULAR`varchar (90),
	`FEC_PUBLICACION` varchar (90),	
	`ID_ARTISTA` int (11)
); 


insert into `artista` (`NOMBRE`, `GENERO`, `PAIS`, `DISCOGRAFIA`) values('Bad Bunny','Reggaeton', 'Puerto Rico','Rimas Music');
insert into `artista` (`NOMBRE`, `GENERO`, `PAIS`, `DISCOGRAFIA`) values('Dua Lipa','Pop','Inglaterra','Warner');
insert into `artista` (`NOMBRE`, `GENERO`, `PAIS`, `DISCOGRAFIA`) values('Lady Gaga','Pop','Estados Unidos','Universal Music Group');
insert into `artista` (`NOMBRE`, `GENERO`, `PAIS`, `DISCOGRAFIA`) values('Billie Eilish','Pop Alternativo', 'Estados Unidos','Interscope Records');
insert into `artista` (`NOMBRE`, `GENERO`, `PAIS`, `DISCOGRAFIA`) values('Adele','Pop','Estados Unidos','Melted Stone');



insert into `album` (`NOMBRE`, `CANCION_POPULAR`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('un verano sin ti','Un verano sin ti','2022','1');
insert into `album` (`NOMBRE`, `CANCION_POPULAR`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('nostalgia','Nostalgia','2020','2');
insert into `album` (`NOMBRE`, `CANCION_POPULAR`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('chromatica','Free Woman','2020','3');
insert into `album` (`NOMBRE`, `CANCION_POPULAR`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('happier than ever','Happier than ever','2021','4');
insert into `album` (`NOMBRE`, `CANCION_POPULAR`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('adele 30','Oh my god','2021','5');