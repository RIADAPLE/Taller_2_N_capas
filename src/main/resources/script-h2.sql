


create table `artista` (
	`ID_ARTISTA` int (11),
	`NOMBRE` varchar (90),
	`GENERO` varchar (90),
	`VENTAS` int(11),
	`DISCOGRAFIA` varchar (90)
); 

create table `album` (
	`ID_ALBUM` int (11),
	`NOMBRE` varchar (90),
	`VENTAS_ALBUM`int (90),
	`FEC_PUBLICACION` varchar (90),	
	`ID_ARTISTA` int (11)
); 


insert into `artista` (`ID_ARTISTA`, `NOMBRE`, `GENERO`, `VENTAS`, `DISCOGRAFIA`) values('1','Bad Bunny','Reggaeton', '1000000','Rimas Music');
insert into `artista` (`ID_ARTISTA`, `NOMBRE`, `GENERO`, `VENTAS`, `DISCOGRAFIA`) values('2','Dua Lipa','Pop','2000000','Warner');
insert into `artista` (`ID_ARTISTA`, `NOMBRE`, `GENERO`, `VENTAS`, `DISCOGRAFIA`) values('3','Lady Gaga','Pop','3000000','Universal Music Group');
insert into `artista` (`ID_ARTISTA`, `NOMBRE`, `GENERO`, `VENTAS`, `DISCOGRAFIA`) values('4','Billie Eilish','Pop Alternativo', '500000','Interscope Records');
insert into `artista` (`ID_ARTISTA`, `NOMBRE`, `GENERO`, `VENTAS`, `DISCOGRAFIA`) values('5','Adele','Pop','5000000','Melted Stone');



insert into `album` (`ID_ALBUM`, `NOMBRE`, `VENTAS_ALBUM`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('1','un verano sin ti','230000','2022','1');
insert into `album` (`ID_ALBUM`, `NOMBRE`, `VENTAS_ALBUM`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('2','nostalgia','44000','2020','2');
insert into `album` (`ID_ALBUM`, `NOMBRE`, `VENTAS_ALBUM`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('3','chromatica','27000','2020','3');
insert into `album` (`ID_ALBUM`, `NOMBRE`, `VENTAS_ALBUM`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('4','happier than ever','238000','2021','4');
insert into `album` (`ID_ALBUM`, `NOMBRE`, `VENTAS_ALBUM`, `FEC_PUBLICACION`,`ID_ARTISTA`) values('5','adele 30','500000','2021','5');