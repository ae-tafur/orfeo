CREATE DATABASE inarwa_db;

USE inarwa_db;

/* Create a database table for users */

CREATE TABLE user (
    usr_id VARCHAR(15) NOT NULL PRIMARY KEY,
    usr_username VARCHAR(16) NOT NULL,
    usr_password VARCHAR(50) NOT NULL,
    usr_name VARCHAR(100) NOT NULL,
    usr_email VARCHAR(100) NOT NULL,
    usr_profile VARCHAR(50) NOT NULL,
    dep_id VARCHAR(15) NOT NULL,
    usr_oficce VARCHAR(100) NOT NULL,
    ed_id VARCHAR(15) NOT NULL,
    usr_rol VARCHAR(50) NOT NULL,
    usr_tel VARCHAR(50) NOT NULL,
    usr_state VARCHAR(8) NOT NULL,
    usr_created_at TIMESTAMP NOT NULL DEFAULT current_timestamp
);

INSERT INTO user (usr_id,usr_username,usr_password,usr_name,usr_email,
usr_profile,dep_id,usr_oficce,ed_id,usr_rol,usr_tel,usr_state)
  VALUES ('00010000000001', 'admin', '123', 'Administrador SGD', 'admin@admin.gov.co', 'Jefe', '0001', 'Archivo', '0001', 'Asesor', '0000000000', 'Activo');

CREATE TABLE dependence (
    dep_id VARCHAR(15) NOT NULL PRIMARY KEY,
    dep_name VARCHAR(100) NOT NULL,
    ed_id VARCHAR(100) NOT NULL
);

INSERT INTO dependence VALUES ('0001','Administrador',0001);

CREATE TABLE roles (

    rol_id VARCHAR(15) NOT NULL PRIMARY KEY,
    rol_name VARCHAR(100) NOT NULL
);

CREATE TABLE doctype (

    doctype_id VARCHAR(15) NOT NULL PRIMARY KEY,
    doctype_name VARCHAR(100) NOT NULL,
    doctype_days INT(3) NOT NULL
);

CREATE TABLE building (

    ed_id VARCHAR(15) NOT NULL PRIMARY KEY,
    ed_name VARCHAR(100) NOT NULL,
    ed_address VARCHAR(100) NOT NULL
);

CREATE TABLE contact (

    ct_id VARCHAR(15) NOT NULL PRIMARY KEY,
    ct_name VARCHAR(100) NOT NULL,
    ct_email VARCHAR(100) NOT NULL,
    ct_tel VARCHAR(100) NOT NULL,
    ct_address VARCHAR(100) NOT NULL,
    country_id VARCHAR(100) NOT NULL,
    dpto_id VARCHAR(100) NOT NULL,
    city_id VARCHAR(100) NOT NULL
);

CREATE TABLE country (
  country_id DECIMAL(4,0) DEFAULT '170' NULL PRIMARY KEY,
  country_name VARCHAR(30) NOT NULL
);

INSERT INTO country VALUES (170,'Colombia');

CREATE TABLE dpto (
  country_id DECIMAL(4,0),
  dpto_id DECIMAL(3,0) DEFAULT '20' NOT NULL PRIMARY KEY,
  dpto_name VARCHAR(70) NOT NULL
  
);

INSERT INTO dpto VALUES (170,1,'Todos'),(170,05,'Antioquía'),(170,08,'Atlántico'),
(170,13,'Bolívar'),(170,15,'Boyacá'),(170,17,'Caldas'),(170,19,'Cauca'),(170,20,'Cesar'),
(170,23,'Córdoba'),(170,25,'Cundinamarca'),(170,27,'Choco'),(170,41,'Huila'),
(170,44,'La Guajira'),(170,47,'Magdalena'),(170,50,'Meta'),(170,52,'Nariño'),
(170,54,'Norte De Santander'),(170,63,'Quindío'),(170,66,'Risaralda'),
(170,68,'Santander'),(170,70,'Sucre'),(170,73,'Tolima'),(170,76,'Valle Del Cauca'),
(170,81,'Arauca'),(170,85,'Casanare'),(170,86,'Putumayo'),(170,88,'San Andrés'),
(170,91,'Amazonas'),(170,94,'Guainía'),(170,95,'Guaviare'),(170,97,'Vaupés'),
(170,99,'Vichada'),(170,11,'D.C.');


CREATE TABLE city (
  country_id DECIMAL(4,0),
  dpto_id DECIMAL(3,0) DEFAULT '20' NOT NULL,
  city_id DECIMAL(4,0) DEFAULT '570' NOT NULL,
  city_name VARCHAR(100) NOT NULL
);

INSERT INTO city VALUES (170,1,999,'Todos'),(170,05,001,'Medellin'),(170,05,002,'Abejorral'),(170,05,004,'Abriaqui'),(170,05,021,'Alejandria'),(170,05,030,'Amaga'),(170,05,031,'Amalfi'),(170,05,034,'Andes'),(170,05,036,'Angelopolis'),(170,05,038,'Angostura'),(170,05,040,'Anori'),(170,05,042,'Santafe De Antioquia'),(170,05,044,'Anza'),(170,05,045,'Apartado'),(170,05,051,'Arboletes'),(170,05,055,'Argelia'),(170,05,059,'Armenia'),(170,05,079,'Barbosa'),(170,05,086,'Belmira'),(170,05,088,'Bello'),(170,05,091,'Betania'),(170,05,093,'Betulia'),(170,05,101,'Ciudad Bolivar'),(170,05,107,'Briceño'),(170,05,113,'Buritica'),(170,05,120,'Caceres'),(170,05,125,'Caicedo'),(170,05,129,'Caldas'),(170,05,134,'Campamento'),(170,05,138,'Cañasgordas'),(170,05,142,'Caracoli'),(170,05,145,'Caramanta'),(170,05,147,'Carepa'),(170,05,148,'El Carmen De Viboral'),(170,05,150,'Carolina'),(170,05,154,'Caucasia'),(170,05,172,'Chigorodo'),(170,05,190,'Cisneros'),(170,05,197,'Cocorna'),(170,05,206,'Concepcion'),(170,05,209,'Concordia'),(170,05,212,'Copacabana'),(170,05,234,'Dabeiba'),(170,05,237,'Don Matias'),(170,05,240,'Ebejico'),(170,05,250,'El Bagre'),(170,05,264,'Entrerrios'),(170,05,266,'Envigado'),(170,05,282,'Fredonia'),(170,05,284,'Frontino'),(170,05,306,'Giraldo'),(170,05,308,'Girardota'),(170,05,310,'Gomez Plata'),(170,05,313,'Granada'),(170,05,315,'Guadalupe'),(170,05,318,'Guarne'),(170,05,321,'Guatape'),(170,05,347,'Heliconia'),(170,05,353,'Hispania'),(170,05,360,'Itagui'),(170,05,361,'Ituango'),(170,05,364,'Jardin'),(170,05,368,'Jerico'),(170,05,376,'La Ceja'),(170,05,380,'La Estrella'),(170,05,390,'La Pintada'),(170,05,400,'La Union'),(170,05,411,'Liborina'),(170,05,425,'Maceo'),(170,05,440,'Marinilla'),(170,05,467,'Montebello'),(170,05,475,'Murindo'),(170,05,480,'Mutata'),(170,05,483,'Nariño'),(170,05,490,'Necocli'),(170,05,495,'Nechi'),(170,05,501,'Olaya'),(170,05,541,'Peðol'),(170,05,543,'Peque'),(170,05,576,'Pueblorrico'),(170,05,579,'Puerto Berrio'),(170,05,585,'Puerto Nare'),(170,05,591,'Puerto Triunfo'),(170,05,604,'Remedios'),(170,05,607,'Retiro'),(170,05,615,'Rionegro'),(170,05,628,'Sabanalarga'),(170,05,631,'Sabaneta'),(170,05,642,'Salgar'),(170,05,647,'San Andres De Cuerquia'),(170,05,649,'San Carlos'),(170,05,652,'San Francisco'),(170,05,656,'San Jeronimo'),(170,05,658,'San Jose De La Montaña'),(170,05,659,'San Juan De Uraba'),(170,05,660,'San Luis'),(170,05,664,'San Pedro'),(170,05,665,'San Pedro De Uraba'),(170,05,667,'San Rafael'),(170,05,670,'San Roque'),(170,05,674,'San Vicente'),(170,05,679,'Santa Barbara'),(170,05,686,'Santa Rosa De Osos'),(170,05,690,'Santo Domingo'),(170,05,697,'El Santuario'),(170,05,736,'Segovia'),(170,05,756,'Sonson'),(170,05,761,'Sopetran'),(170,05,789,'Tamesis'),(170,05,790,'Taraza'),(170,05,792,'Tarso'),(170,05,809,'Titiribi'),(170,05,819,'Toledo'),(170,05,837,'Turbo'),(170,05,842,'Uramita'),(170,05,847,'Urrao'),(170,05,854,'Valdivia'),(170,05,856,'Valparaiso'),(170,05,858,'Vegachi'),(170,05,861,'Venecia'),(170,05,873,'Vigia Del Fuerte'),(170,05,885,'Yali'),(170,05,887,'Yarumal'),(170,05,890,'Yolombo'),(170,05,893,'Yondo'),(170,05,895,'Zaragoza'),(170,08,001,'Barranquilla'),(170,08,078,'Baranoa'),(170,08,137,'Campo De La Cruz'),(170,08,141,'Candelaria'),(170,08,296,'Galapa'),(170,08,372,'Juan De Acosta'),(170,08,421,'Luruaco'),(170,08,433,'Malambo'),(170,08,436,'Manati'),(170,08,520,'Palmar De Varela'),(170,08,549,'Piojo'),(170,08,558,'Polonuevo'),(170,08,560,'Ponedera'),(170,08,573,'Puerto Colombia'),(170,08,606,'Repelon'),(170,08,634,'Sabanagrande'),(170,08,638,'Sabanalarga'),(170,08,675,'Santa Lucia'),(170,08,685,'Santo Tomas'),(170,08,758,'Soledad'),(170,08,770,'Suan'),(170,08,832,'Tubara'),(170,08,849,'Usiacuri'),(170,11,001,'Bogota, D.C.'),(170,13,001,'Cartagena'),(170,13,006,'Achi'),(170,13,030,'Altos Del Rosario'),(170,13,042,'Arenal'),(170,13,052,'Arjona'),(170,13,062,'Arroyohondo'),(170,13,074,'Barranco De Loba'),(170,13,140,'Calamar'),(170,13,160,'Cantagallo'),(170,13,188,'Cicuco'),(170,13,212,'Cordoba'),(170,13,222,'Clemencia'),(170,13,244,'El Carmen De Bolivar'),(170,13,248,'El Guamo'),(170,13,268,'El Peñon'),(170,13,300,'Hatillo De Loba'),(170,13,430,'Magangue'),(170,13,433,'Mahates'),(170,13,440,'Margarita'),(170,13,442,'Maria La Baja'),(170,13,458,'Montecristo'),(170,13,468,'Mompos'),(170,13,490,'Norosi (1)'),(170,13,473,'Morales'),(170,13,549,'Pinillos'),(170,13,580,'Regidor'),(170,13,600,'Rio Viejo (1)'),(170,13,620,'San Cristobal'),(170,13,647,'San Estanislao'),(170,13,650,'San Fernando'),(170,13,654,'San Jacinto'),(170,13,655,'San Jacinto Del Cauca'),(170,13,657,'San Juan Nepomuceno'),(170,13,667,'San Martin De Loba'),(170,13,670,'San Pablo'),(170,13,673,'Santa Catalina'),(170,13,683,'Santa Rosa'),(170,13,688,'Santa Rosa Del Sur'),(170,13,744,'Simiti'),(170,13,760,'Soplaviento'),(170,13,780,'Talaigua Nuevo'),(170,13,810,'Tiquisio'),(170,13,836,'Turbaco'),(170,13,838,'Turbana'),(170,13,873,'Villanueva'),(170,13,894,'Zambrano'),(170,15,001,'Tunja'),(170,15,022,'Almeida'),(170,15,047,'Aquitania'),(170,15,051,'Arcabuco'),(170,15,087,'Belen'),(170,15,090,'Berbeo'),(170,15,092,'Beteitiva'),(170,15,097,'Boavita'),(170,15,104,'Boyaca'),(170,15,106,'Briceño'),(170,15,109,'Buenavista'),(170,15,114,'Busbanza'),(170,15,131,'Caldas'),(170,15,135,'Campohermoso'),(170,15,162,'Cerinza'),(170,15,172,'Chinavita'),(170,15,176,'Chiquinquira'),(170,15,180,'Chiscas'),(170,15,183,'Chita'),(170,15,185,'Chitaraque'),(170,15,187,'Chivata'),(170,15,189,'Cienega'),(170,15,204,'Combita'),(170,15,212,'Coper'),(170,15,215,'Corrales'),(170,15,218,'Covarachia'),(170,15,223,'Cubara'),(170,15,224,'Cucaita'),(170,15,226,'Cuitiva'),(170,15,232,'Chiquiza'),(170,15,236,'Chivor'),(170,15,238,'Duitama'),(170,15,244,'El Cocuy'),(170,15,248,'El Espino'),(170,15,272,'Firavitoba'),(170,15,276,'Floresta'),(170,15,293,'Gachantiva'),(170,15,296,'Gameza'),(170,15,299,'Garagoa'),(170,15,317,'Guacamayas'),(170,15,322,'Guateque'),(170,15,325,'Guayata'),(170,15,332,'Gsican'),(170,15,362,'Iza'),(170,15,367,'Jenesano'),(170,15,368,'Jerico'),(170,15,377,'Labranzagrande'),(170,15,380,'La Capilla'),(170,15,401,'La Victoria'),(170,15,403,'La Uvita'),(170,15,407,'Villa De Leyva'),(170,15,425,'Macanal'),(170,15,442,'Maripi'),(170,15,455,'Miraflores'),(170,15,464,'Mongua'),(170,15,466,'Mongui'),(170,15,469,'Moniquira'),(170,15,476,'Motavita'),(170,15,480,'Muzo'),(170,15,491,'Nobsa'),(170,15,494,'Nuevo Colon'),(170,15,500,'Oicata'),(170,15,507,'Otanche'),(170,15,511,'Pachavita'),(170,15,514,'Paez'),(170,15,516,'Paipa'),(170,15,518,'Pajarito'),(170,15,522,'Panqueba'),(170,15,531,'Pauna'),(170,15,533,'Paya'),(170,15,537,'Paz De Rio'),(170,15,542,'Pesca'),(170,15,550,'Pisba'),(170,15,572,'Puerto Boyaca'),(170,15,580,'Quipama'),(170,15,599,'Ramiriqui'),(170,15,600,'Raquira'),(170,15,621,'Rondon'),(170,15,632,'Saboya'),(170,15,638,'Sachica'),(170,15,646,'Samaca'),(170,15,660,'San Eduardo'),(170,15,664,'San Jose De Pare'),(170,15,667,'San Luis De Gaceno'),(170,15,673,'San Mateo'),(170,15,676,'San Miguel De Sema'),(170,15,681,'San Pablo De Borbur'),(170,15,686,'Santana'),(170,15,690,'Santa Maria'),(170,15,693,'Santa Rosa De Viterbo'),(170,15,696,'Santa Sofia'),(170,15,720,'Sativanorte'),(170,15,723,'Sativasur'),(170,15,740,'Siachoque'),(170,15,753,'Soata'),(170,15,755,'Socota'),(170,15,757,'Socha'),(170,15,759,'Sogamoso'),(170,15,761,'Somondoco'),(170,15,762,'Sora'),(170,15,763,'Sotaquira'),(170,15,764,'Soraca'),(170,15,774,'Susacon'),(170,15,776,'Sutamarchan'),(170,15,778,'Sutatenza'),(170,15,790,'Tasco'),(170,15,798,'Tenza'),(170,15,804,'Tibana'),(170,15,806,'Tibasosa'),(170,15,808,'Tinjaca'),(170,15,810,'Tipacoque'),(170,15,814,'Toca'),(170,15,816,'Togsi'),(170,15,820,'Topaga'),(170,15,822,'Tota'),(170,15,832,'Tunungua'),(170,15,835,'Turmeque'),(170,15,837,'Tuta'),(170,15,839,'Tutaza'),(170,15,842,'Umbita'),(170,15,861,'Ventaquemada'),(170,15,879,'Viracacha'),(170,15,897,'Zetaquira'),(170,17,001,'Manizales'),(170,17,013,'Aguadas'),(170,17,042,'Anserma'),(170,17,050,'Aranzazu'),(170,17,088,'Belalcazar'),(170,17,174,'Chinchina'),(170,17,272,'Filadelfia'),(170,17,380,'La Dorada'),(170,17,388,'La Merced'),(170,17,433,'Manzanares'),(170,17,442,'Marmato'),(170,17,444,'Marquetalia'),(170,17,446,'Marulanda'),(170,17,486,'Neira'),(170,17,495,'Norcasia'),(170,17,513,'Pacora'),(170,17,524,'Palestina'),(170,17,541,'Pensilvania'),(170,17,614,'Riosucio'),(170,17,616,'Risaralda'),(170,17,653,'Salamina'),(170,17,662,'Samana'),(170,17,665,'San Jose'),(170,17,777,'Supia'),(170,17,867,'Victoria'),(170,17,873,'Villamaria'),(170,17,877,'Viterbo'),(170,18,001,'Florencia'),(170,18,029,'Albania'),(170,18,094,'Belen De Los Andaquies'),(170,18,150,'Cartagena Del Chaira'),(170,18,205,'Curillo'),(170,18,247,'El Doncello'),(170,18,256,'El Paujil'),(170,18,410,'La Montañita'),(170,18,460,'Milan'),(170,18,479,'Morelia'),(170,18,592,'Puerto Rico'),(170,18,610,'San Jose Del Fragua'),(170,18,753,'San Vicente Del Caguan'),(170,18,756,'Solano'),(170,18,785,'Solita'),(170,18,860,'Valparaiso'),(170,19,001,'Popayan'),(170,19,022,'Almaguer'),(170,19,050,'Argelia'),(170,19,075,'Balboa'),(170,19,100,'Bolivar'),(170,19,110,'Buenos Aires'),(170,19,130,'Cajibio'),(170,19,137,'Caldono'),(170,19,142,'Caloto (1)'),(170,19,212,'Corinto'),(170,19,256,'El Tambo'),(170,19,290,'Florencia'),(170,19,300,'Guachene (1)'),(170,19,318,'Guapi'),(170,19,355,'Inza'),(170,19,364,'Jambalo'),(170,19,392,'La Sierra'),(170,19,397,'La Vega'),(170,19,418,'Lopez'),(170,19,450,'Mercaderes'),(170,19,455,'Miranda'),(170,19,473,'Morales'),(170,19,513,'Padilla'),(170,19,517,'Paez'),(170,19,532,'Patia'),(170,19,533,'Piamonte'),(170,19,548,'Piendamo'),(170,19,573,'Puerto Tejada'),(170,19,585,'Purace'),(170,19,622,'Rosas'),(170,19,693,'San Sebastian'),(170,19,698,'Santander De Quilichao'),(170,19,701,'Santa Rosa'),(170,19,743,'Silvia'),(170,19,760,'Sotara'),(170,19,780,'Suarez'),(170,19,785,'Sucre'),(170,19,807,'Timbio'),(170,19,809,'Timbiqui'),(170,19,821,'Toribio'),(170,19,824,'Totoro'),(170,19,845,'Villa Rica'),(170,20,001,'Valledupar'),(170,20,011,'Aguachica'),(170,20,013,'Agustin Codazzi'),(170,20,032,'Astrea'),(170,20,045,'Becerril'),(170,20,060,'Bosconia'),(170,20,175,'Chimichagua'),(170,20,178,'Chiriguana'),(170,20,228,'Curumani'),(170,20,238,'El Copey'),(170,20,250,'El Paso'),(170,20,295,'Gamarra'),(170,20,310,'Gonzalez'),(170,20,383,'La Gloria'),(170,20,400,'La Jagua De Ibirico'),(170,20,443,'Manaure'),(170,20,517,'Pailitas'),(170,20,550,'Pelaya'),(170,20,570,'Pueblo Bello'),(170,20,614,'Rio De Oro'),(170,20,621,'La Paz'),(170,20,710,'San Alberto'),(170,20,750,'San Diego'),(170,20,770,'San Martin'),(170,20,787,'Tamalameque'),(170,23,001,'Monteria'),(170,23,068,'Ayapel'),(170,23,079,'Buenavista'),(170,23,090,'Canalete'),(170,23,162,'Cerete'),(170,23,168,'Chima (3)'),(170,23,182,'Chinu'),(170,23,189,'Cienaga De Oro'),(170,23,300,'Cotorra'),(170,23,350,'La Apartada'),(170,23,417,'Lorica'),(170,23,419,'Los Cordobas'),(170,23,464,'Momil'),(170,23,466,'Montelibano (1)'),(170,23,500,'Moñitos'),(170,23,555,'Planeta Rica'),(170,23,570,'Pueblo Nuevo'),(170,23,574,'Puerto Escondido'),(170,23,580,'Puerto Libertador'),(170,23,586,'Purisima'),(170,23,660,'Sahagun'),(170,23,670,'San Andres Sotavento (3)'),(170,23,672,'San Antero'),(170,23,675,'San Bernardo Del Viento'),(170,23,678,'San Carlos'),(170,23,682,'San Jose De Ure (1)'),(170,23,686,'San Pelayo'),(170,23,807,'Tierralta'),(170,23,855,'Valencia'),(170,25,001,'Agua De Dios'),(170,25,019,'Alban'),(170,25,035,'Anapoima'),(170,25,040,'Anolaima'),(170,25,053,'Arbelaez'),(170,25,086,'Beltran'),(170,25,095,'Bituima'),(170,25,099,'Bojaca'),(170,25,120,'Cabrera'),(170,25,123,'Cachipay'),(170,25,126,'Cajica'),(170,25,148,'Caparrapi'),(170,25,151,'Caqueza'),(170,25,154,'Carmen De Carupa'),(170,25,168,'Chaguani'),(170,25,175,'Chia'),(170,25,178,'Chipaque'),(170,25,181,'Choachi'),(170,25,183,'Choconta'),(170,25,200,'Cogua'),(170,25,214,'Cota'),(170,25,224,'Cucunuba'),(170,25,245,'El Colegio'),(170,25,258,'El Peñon'),(170,25,260,'El Rosal'),(170,25,269,'Facatativa'),(170,25,279,'Fomeque'),(170,25,281,'Fosca'),(170,25,286,'Funza'),(170,25,288,'Fuquene'),(170,25,290,'Fusagasuga'),(170,25,293,'Gachala'),(170,25,295,'Gachancipa'),(170,25,297,'Gacheta'),(170,25,299,'Gama'),(170,25,307,'Girardot'),(170,25,312,'Granada'),(170,25,317,'Guacheta'),(170,25,320,'Guaduas'),(170,25,322,'Guasca'),(170,25,324,'Guataqui'),(170,25,326,'Guatavita'),(170,25,328,'Guayabal De Siquima'),(170,25,335,'Guayabetal'),(170,25,339,'Gutierrez'),(170,25,368,'Jerusalen'),(170,25,372,'Junin'),(170,25,377,'La Calera'),(170,25,386,'La Mesa'),(170,25,394,'La Palma'),(170,25,398,'La Peña'),(170,25,402,'La Vega'),(170,25,407,'Lenguazaque'),(170,25,426,'Macheta'),(170,25,430,'Madrid'),(170,25,436,'Manta'),(170,25,438,'Medina'),(170,25,473,'Mosquera'),(170,25,483,'Nariño'),(170,25,486,'Nemocon'),(170,25,488,'Nilo'),(170,25,489,'Nimaima'),(170,25,491,'Nocaima'),(170,25,506,'Venecia'),(170,25,513,'Pacho'),(170,25,518,'Paime'),(170,25,524,'Pandi'),(170,25,530,'Paratebueno'),(170,25,535,'Pasca'),(170,25,572,'Puerto Salgar'),(170,25,580,'Puli'),(170,25,592,'Quebradanegra'),(170,25,594,'Quetame'),(170,25,596,'Quipile'),(170,25,599,'Apulo'),(170,25,612,'Ricaurte'),(170,25,645,'San Antonio Del Tequendama'),(170,25,649,'San Bernardo'),(170,25,653,'San Cayetano'),(170,25,658,'San Francisco'),(170,25,662,'San Juan De Rio Seco'),(170,25,718,'Sasaima'),(170,25,736,'Sesquile'),(170,25,740,'Sibate'),(170,25,743,'Silvania'),(170,25,745,'Simijaca'),(170,25,754,'Soacha'),(170,25,758,'Sopo'),(170,25,769,'Subachoque'),(170,25,772,'Suesca'),(170,25,777,'Supata'),(170,25,779,'Susa'),(170,25,781,'Sutatausa'),(170,25,785,'Tabio'),(170,25,793,'Tausa'),(170,25,797,'Tena'),(170,25,799,'Tenjo'),(170,25,805,'Tibacuy'),(170,25,807,'Tibirita'),(170,25,815,'Tocaima'),(170,25,817,'Tocancipa'),(170,25,823,'Topaipi'),(170,25,839,'Ubala'),(170,25,841,'Ubaque'),(170,25,843,'Villa De San Diego De Ubate'),(170,25,845,'Une'),(170,25,851,'Utica'),(170,25,862,'Vergara'),(170,25,867,'Viani'),(170,25,871,'Villagomez'),(170,25,873,'Villapinzon'),(170,25,875,'Villeta'),(170,25,878,'Viota'),(170,25,885,'Yacopi'),(170,25,898,'Zipacon'),(170,25,899,'Zipaquira'),(170,27,001,'Quibdo'),(170,27,006,'Acandi'),(170,27,025,'Alto Baudo'),(170,27,050,'Atrato'),(170,27,073,'Bagado'),(170,27,075,'Bahia Solano'),(170,27,077,'Bajo Baudo'),(170,27,099,'Bojaya'),(170,27,135,'El Canton Del San Pablo'),(170,27,150,'Carmen Del Darien'),(170,27,160,'Certegui'),(170,27,205,'Condoto'),(170,27,245,'El Carmen De Atrato'),(170,27,250,'El Litoral Del San Juan'),(170,27,361,'Istmina'),(170,27,372,'Jurado'),(170,27,413,'Lloro'),(170,27,425,'Medio Atrato'),(170,27,430,'Medio Baudo'),(170,27,450,'Medio San Juan'),(170,27,491,'Novita'),(170,27,495,'Nuqui'),(170,27,580,'Rio Iro'),(170,27,600,'Rio Quito'),(170,27,615,'Riosucio (2)'),(170,27,660,'San Jose Del Palmar'),(170,27,745,'Sipi'),(170,27,787,'Tado'),(170,27,800,'Unguia'),(170,27,810,'Union Panamericana'),(170,41,001,'Neiva'),(170,41,006,'Acevedo'),(170,41,013,'Agrado'),(170,41,016,'Aipe'),(170,41,020,'Algeciras'),(170,41,026,'Altamira'),(170,41,078,'Baraya'),(170,41,132,'Campoalegre'),(170,41,206,'Colombia'),(170,41,244,'Elias'),(170,41,298,'Garzon'),(170,41,306,'Gigante'),(170,41,319,'Guadalupe'),(170,41,349,'Hobo'),(170,41,357,'Iquira'),(170,41,359,'Isnos'),(170,41,378,'La Argentina'),(170,41,396,'La Plata'),(170,41,483,'Nataga'),(170,41,503,'Oporapa'),(170,41,518,'Paicol'),(170,41,524,'Palermo'),(170,41,530,'Palestina'),(170,41,548,'Pital'),(170,41,551,'Pitalito'),(170,41,615,'Rivera'),(170,41,660,'Saladoblanco'),(170,41,668,'San Agustin'),(170,41,676,'Santa Maria'),(170,41,770,'Suaza'),(170,41,791,'Tarqui'),(170,41,797,'Tesalia'),(170,41,799,'Tello'),(170,41,801,'Teruel'),(170,41,807,'Timana'),(170,41,872,'Villavieja'),(170,41,885,'Yaguara'),(170,44,001,'Riohacha'),(170,44,035,'Albania'),(170,44,078,'Barrancas'),(170,44,090,'Dibulla'),(170,44,098,'Distraccion'),(170,44,110,'El Molino'),(170,44,279,'Fonseca'),(170,44,378,'Hatonuevo'),(170,44,420,'La Jagua Del Pilar'),(170,44,430,'Maicao'),(170,44,560,'Manaure'),(170,44,650,'San Juan Del Cesar'),(170,44,847,'Uribia'),(170,44,855,'Urumita'),(170,44,874,'Villanueva'),(170,47,001,'Santa Marta'),(170,47,030,'Algarrobo'),(170,47,053,'Aracataca'),(170,47,058,'Ariguani'),(170,47,161,'Cerro San Antonio'),(170,47,170,'Chibolo'),(170,47,189,'Cienaga'),(170,47,205,'Concordia'),(170,47,245,'El Banco'),(170,47,258,'El Piñon'),(170,47,268,'El Reten'),(170,47,288,'Fundacion'),(170,47,318,'Guamal'),(170,47,460,'Nueva Granada'),(170,47,541,'Pedraza'),(170,47,545,'Pijiño Del Carmen'),(170,47,551,'Pivijay'),(170,47,555,'Plato'),(170,47,570,'Puebloviejo'),(170,47,605,'Remolino'),(170,47,660,'Sabanas De San Angel'),(170,47,675,'Salamina'),(170,47,692,'San Sebastian De Buenavista'),(170,47,703,'San Zenon'),(170,47,707,'Santa Ana'),(170,47,720,'Santa Barbara De Pinto'),(170,47,745,'Sitionuevo'),(170,47,798,'Tenerife'),(170,47,960,'Zapayan'),(170,47,980,'Zona Bananera'),(170,50,001,'Villavicencio'),(170,50,006,'Acacias'),(170,50,110,'Barranca De Upia'),(170,50,124,'Cabuyaro'),(170,50,150,'Castilla La Nueva'),(170,50,223,'Cubarral'),(170,50,226,'Cumaral'),(170,50,245,'El Calvario'),(170,50,251,'El Castillo'),(170,50,270,'El Dorado'),(170,50,287,'Fuente De Oro'),(170,50,313,'Granada'),(170,50,318,'Guamal'),(170,50,325,'Mapiripan'),(170,50,330,'Mesetas'),(170,50,350,'La Macarena'),(170,50,370,'Uribe'),(170,50,400,'Lejanias'),(170,50,450,'Puerto Concordia'),(170,50,568,'Puerto Gaitan'),(170,50,573,'Puerto Lopez'),(170,50,577,'Puerto Lleras'),(170,50,590,'Puerto Rico'),(170,50,606,'Restrepo'),(170,50,680,'San Carlos De Guaroa'),(170,50,683,'San Juan De Arama'),(170,50,686,'San Juanito'),(170,50,689,'San Martin'),(170,50,711,'Vistahermosa'),(170,52,001,'Pasto'),(170,52,019,'Alban'),(170,52,022,'Aldana'),(170,52,036,'Ancuya'),(170,52,051,'Arboleda'),(170,52,079,'Barbacoas'),(170,52,083,'Belen'),(170,52,110,'Buesaco'),(170,52,203,'Colon'),(170,52,207,'Consaca'),(170,52,210,'Contadero'),(170,52,215,'Cordoba'),(170,52,224,'Cuaspud'),(170,52,227,'Cumbal'),(170,52,233,'Cumbitara'),(170,52,240,'Chachagsi'),(170,52,250,'El Charco'),(170,52,254,'El Peñol'),(170,52,256,'El Rosario'),(170,52,258,'El Tablon De Gomez'),(170,52,260,'El Tambo'),(170,52,287,'Funes'),(170,52,317,'Guachucal'),(170,52,320,'Guaitarilla'),(170,52,323,'Gualmatan'),(170,52,352,'Iles'),(170,52,354,'Imues'),(170,52,356,'Ipiales'),(170,52,378,'La Cruz'),(170,52,381,'La Florida'),(170,52,385,'La Llanada'),(170,52,390,'La Tola'),(170,52,399,'La Union'),(170,52,405,'Leiva'),(170,52,411,'Linares'),(170,52,418,'Los Andes'),(170,52,427,'Magsi'),(170,52,435,'Mallama'),(170,52,473,'Mosquera'),(170,52,480,'Nariño'),(170,52,490,'Olaya Herrera'),(170,52,506,'Ospina'),(170,52,520,'Francisco Pizarro'),(170,52,540,'Policarpa'),(170,52,560,'Potosi'),(170,52,565,'Providencia'),(170,52,573,'Puerres'),(170,52,585,'Pupiales'),(170,52,612,'Ricaurte'),(170,52,621,'Roberto Payan'),(170,52,678,'Samaniego'),(170,52,683,'Sandona'),(170,52,685,'San Bernardo'),(170,52,687,'San Lorenzo'),(170,52,693,'San Pablo'),(170,52,694,'San Pedro De Cartago'),(170,52,696,'Santa Barbara'),(170,52,699,'Santacruz'),(170,52,720,'Sapuyes'),(170,52,786,'Taminango'),(170,52,788,'Tangua'),(170,52,835,'San Andres De Tumaco'),(170,52,838,'Tuquerres'),(170,52,885,'Yacuanquer'),(170,54,001,'Cucuta'),(170,54,003,'Abrego'),(170,54,051,'Arboledas'),(170,54,099,'Bochalema'),(170,54,109,'Bucarasica'),(170,54,125,'Cacota'),(170,54,128,'Cachira'),(170,54,172,'Chinacota'),(170,54,174,'Chitaga'),(170,54,206,'Convencion'),(170,54,223,'Cucutilla'),(170,54,239,'Durania'),(170,54,245,'El Carmen'),(170,54,250,'El Tarra'),(170,54,261,'El Zulia'),(170,54,313,'Gramalote'),(170,54,344,'Hacari'),(170,54,347,'Herran'),(170,54,377,'Labateca'),(170,54,385,'La Esperanza'),(170,54,398,'La Playa'),(170,54,405,'Los Patios'),(170,54,418,'Lourdes'),(170,54,480,'Mutiscua'),(170,54,498,'Ocaña'),(170,54,518,'Pamplona'),(170,54,520,'Pamplonita'),(170,54,553,'Puerto Santander'),(170,54,599,'Ragonvalia'),(170,54,660,'Salazar'),(170,54,670,'San Calixto'),(170,54,673,'San Cayetano'),(170,54,680,'Santiago'),(170,54,720,'Sardinata'),(170,54,743,'Silos'),(170,54,800,'Teorama'),(170,54,810,'Tibu'),(170,54,820,'Toledo'),(170,54,871,'Villa Caro'),(170,54,874,'Villa Del Rosario'),(170,63,001,'Armenia'),(170,63,111,'Buenavista'),(170,63,130,'Calarca'),(170,63,190,'Circasia'),(170,63,212,'Cordoba'),(170,63,272,'Filandia'),(170,63,302,'Genova'),(170,63,401,'La Tebaida'),(170,63,470,'Montenegro'),(170,63,548,'Pijao'),(170,63,594,'Quimbaya'),(170,63,690,'Salento'),(170,66,001,'Pereira'),(170,66,045,'Apia'),(170,66,075,'Balboa'),(170,66,088,'Belen De Umbria'),(170,66,170,'Dosquebradas'),(170,66,318,'Guatica'),(170,66,383,'La Celia'),(170,66,400,'La Virginia'),(170,66,440,'Marsella'),(170,66,456,'Mistrato'),(170,66,572,'Pueblo Rico'),(170,66,594,'Quinchia'),(170,66,682,'Santa Rosa De Cabal'),(170,66,687,'Santuario'),(170,68,001,'Bucaramanga'),(170,68,013,'Aguada'),(170,68,020,'Albania'),(170,68,051,'Aratoca'),(170,68,077,'Barbosa'),(170,68,079,'Barichara'),(170,68,081,'Barrancabermeja'),(170,68,092,'Betulia'),(170,68,101,'Bolivar'),(170,68,121,'Cabrera'),(170,68,132,'California'),(170,68,147,'Capitanejo'),(170,68,152,'Carcasi'),(170,68,160,'Cepita'),(170,68,162,'Cerrito'),(170,68,167,'Charala'),(170,68,169,'Charta'),(170,68,176,'Chima'),(170,68,179,'Chipata'),(170,68,190,'Cimitarra'),(170,68,207,'Concepcion'),(170,68,209,'Confines'),(170,68,211,'Contratacion'),(170,68,217,'Coromoro'),(170,68,229,'Curiti'),(170,68,235,'El Carmen De Chucuri'),(170,68,245,'El Guacamayo'),(170,68,250,'El Peñon'),(170,68,255,'El Playon'),(170,68,264,'Encino'),(170,68,266,'Enciso'),(170,68,271,'Florian'),(170,68,276,'Floridablanca'),(170,68,296,'Galan'),(170,68,298,'Gambita'),(170,68,307,'Giron'),(170,68,318,'Guaca'),(170,68,320,'Guadalupe'),(170,68,322,'Guapota'),(170,68,324,'Guavata'),(170,68,327,'Gsepsa'),(170,68,344,'Hato'),(170,68,368,'Jesus Maria'),(170,68,370,'Jordan'),(170,68,377,'La Belleza'),(170,68,385,'Landazuri'),(170,68,397,'La Paz'),(170,68,406,'Lebrija'),(170,68,418,'Los Santos'),(170,68,425,'Macaravita'),(170,68,432,'Malaga'),(170,68,444,'Matanza'),(170,68,464,'Mogotes'),(170,68,468,'Molagavita'),(170,68,498,'Ocamonte'),(170,68,500,'Oiba'),(170,68,502,'Onzaga'),(170,68,522,'Palmar'),(170,68,524,'Palmas Del Socorro'),(170,68,533,'Paramo'),(170,68,547,'Piedecuesta'),(170,68,549,'Pinchote'),(170,68,572,'Puente Nacional'),(170,68,573,'Puerto Parra'),(170,68,575,'Puerto Wilches'),(170,68,615,'Rionegro'),(170,68,655,'Sabana De Torres'),(170,68,669,'San Andres'),(170,68,673,'San Benito'),(170,68,679,'San Gil'),(170,68,682,'San Joaquin'),(170,68,684,'San Jose De Miranda'),(170,68,686,'San Miguel'),(170,68,689,'San Vicente De Chucuri'),(170,68,705,'Santa Barbara'),(170,68,720,'Santa Helena Del Opon'),(170,68,745,'Simacota'),(170,68,755,'Socorro'),(170,68,770,'Suaita'),(170,68,773,'Sucre'),(170,68,780,'Surata'),(170,68,820,'Tona'),(170,68,855,'Valle De San Jose'),(170,68,861,'Velez'),(170,68,867,'Vetas'),(170,68,872,'Villanueva'),(170,68,895,'Zapatoca'),(170,70,001,'Sincelejo'),(170,70,110,'Buenavista'),(170,70,124,'Caimito'),(170,70,204,'Coloso'),(170,70,215,'Corozal'),(170,70,221,'Coveñas'),(170,70,230,'Chalan'),(170,70,233,'El Roble'),(170,70,235,'Galeras'),(170,70,265,'Guaranda'),(170,70,400,'La Union'),(170,70,418,'Los Palmitos'),(170,70,429,'Majagual'),(170,70,473,'Morroa'),(170,70,508,'Ovejas'),(170,70,523,'Palmito'),(170,70,670,'Sampues'),(170,70,678,'San Benito Abad'),(170,70,702,'San Juan De Betulia'),(170,70,708,'San Marcos'),(170,70,713,'San Onofre'),(170,70,717,'San Pedro'),(170,70,742,'San Luis De Since'),(170,70,771,'Sucre'),(170,70,820,'Santiago De Tolu'),(170,70,823,'Tolu Viejo'),(170,73,001,'Ibague'),(170,73,024,'Alpujarra'),(170,73,026,'Alvarado'),(170,73,030,'Ambalema'),(170,73,043,'Anzoategui'),(170,73,055,'Armero'),(170,73,067,'Ataco'),(170,73,124,'Cajamarca'),(170,73,148,'Carmen De Apicala'),(170,73,152,'Casabianca'),(170,73,168,'Chaparral'),(170,73,200,'Coello'),(170,73,217,'Coyaima'),(170,73,226,'Cunday'),(170,73,236,'Dolores'),(170,73,268,'Espinal'),(170,73,270,'Falan'),(170,73,275,'Flandes'),(170,73,283,'Fresno'),(170,73,319,'Guamo'),(170,73,347,'Herveo'),(170,73,349,'Honda'),(170,73,352,'Icononzo'),(170,73,408,'Lerida'),(170,73,411,'Libano'),(170,73,443,'Mariquita'),(170,73,449,'Melgar'),(170,73,461,'Murillo'),(170,73,483,'Natagaima'),(170,73,504,'Ortega'),(170,73,520,'Palocabildo'),(170,73,547,'Piedras'),(170,73,555,'Planadas'),(170,73,563,'Prado'),(170,73,585,'Purificacion'),(170,73,616,'Rioblanco'),(170,73,622,'Roncesvalles'),(170,73,624,'Rovira'),(170,73,671,'Saldaña'),(170,73,675,'San Antonio'),(170,73,678,'San Luis'),(170,73,686,'Santa Isabel'),(170,73,770,'Suarez'),(170,73,854,'Valle De San Juan'),(170,73,861,'Venadillo'),(170,73,870,'Villahermosa'),(170,73,873,'Villarrica'),(170,76,001,'Cali'),(170,76,020,'Alcala'),(170,76,036,'Andalucia'),(170,76,041,'Ansermanuevo'),(170,76,054,'Argelia'),(170,76,100,'Bolivar'),(170,76,109,'Buenaventura'),(170,76,111,'Guadalajara De Buga'),(170,76,113,'Bugalagrande'),(170,76,122,'Caicedonia'),(170,76,126,'Calima'),(170,76,130,'Candelaria'),(170,76,147,'Cartago'),(170,76,233,'Dagua'),(170,76,243,'El Aguila'),(170,76,246,'El Cairo'),(170,76,248,'El Cerrito'),(170,76,250,'El Dovio'),(170,76,275,'Florida'),(170,76,306,'Ginebra'),(170,76,318,'Guacari'),(170,76,364,'Jamundi'),(170,76,377,'La Cumbre'),(170,76,400,'La Union'),(170,76,403,'La Victoria'),(170,76,497,'Obando'),(170,76,520,'Palmira'),(170,76,563,'Pradera'),(170,76,606,'Restrepo'),(170,76,616,'Riofrio'),(170,76,622,'Roldanillo'),(170,76,670,'San Pedro'),(170,76,736,'Sevilla'),(170,76,823,'Toro'),(170,76,828,'Trujillo'),(170,76,834,'Tulua'),(170,76,845,'Ulloa'),(170,76,863,'Versalles'),(170,76,869,'Vijes'),(170,76,890,'Yotoco'),(170,76,892,'Yumbo'),(170,76,895,'Zarzal'),(170,81,001,'Arauca'),(170,81,065,'Arauquita'),(170,81,220,'Cravo Norte'),(170,81,300,'Fortul'),(170,81,591,'Puerto Rondon'),(170,81,736,'Saravena'),(170,81,794,'Tame'),(170,85,001,'Yopal'),(170,85,010,'Aguazul'),(170,85,015,'Chameza'),(170,85,125,'Hato Corozal'),(170,85,136,'La Salina'),(170,85,139,'Mani'),(170,85,162,'Monterrey'),(170,85,225,'Nunchia'),(170,85,230,'Orocue'),(170,85,250,'Paz De Ariporo'),(170,85,263,'Pore'),(170,85,279,'Recetor'),(170,85,300,'Sabanalarga'),(170,85,315,'Sacama'),(170,85,325,'San Luis De Palenque'),(170,85,400,'Tamara'),(170,85,410,'Tauramena'),(170,85,430,'Trinidad'),(170,85,440,'Villanueva'),(170,86,001,'Mocoa'),(170,86,219,'Colon'),(170,86,320,'Orito'),(170,86,568,'Puerto Asis'),(170,86,569,'Puerto Caicedo'),(170,86,571,'Puerto Guzman'),(170,86,573,'Leguizamo'),(170,86,749,'Sibundoy'),(170,86,755,'San Francisco'),(170,86,757,'San Miguel'),(170,86,760,'Santiago'),(170,86,865,'Valle Del Guamuez'),(170,86,885,'Villagarzon'),(170,88,001,'San Andres'),(170,88,564,'Providencia'),(170,91,001,'Leticia'),(170,91,263,'El Encanto (Cd)'),(170,91,405,'La Chorrera (Cd)'),(170,91,407,'La Pedrera (Cd)'),(170,91,430,'La Victoria (Cd)'),(170,91,460,'Miriti - Parana (Cd)'),(170,91,530,'Puerto Alegria (Cd)'),(170,91,536,'Puerto Arica (Cd)'),(170,91,540,'Puerto Nariño'),(170,91,669,'Puerto Santander (Cd)'),(170,91,798,'Tarapaca (Cd)'),(170,94,001,'Inirida'),(170,94,343,'Barranco Minas (Cd)'),(170,94,663,'Mapiripana (Cd)'),(170,94,883,'San Felipe (Cd)'),(170,94,884,'Puerto Colombia (Cd)'),(170,94,885,'La Guadalupe (Cd)'),(170,94,886,'Cacahual (Cd)'),(170,94,887,'Pana Pana (Cd)'),(170,94,888,'Morichal (Cd)'),(170,95,001,'San Jose Del Guaviare'),(170,95,015,'Calamar'),(170,95,025,'El Retorno'),(170,95,200,'Miraflores'),(170,97,001,'Mitu'),(170,97,161,'Caruru'),(170,97,511,'Pacoa (Cd)'),(170,97,666,'Taraira'),(170,97,777,'Papunaua (Cd)'),(170,97,889,'Yavarate (Cd)'),(170,99,001,'Puerto Carreño'),(170,99,524,'La Primavera'),(170,99,624,'Santa Rosalia'),(170,99,773,'Cumaribo');