CREATE TABLE studente (
  studente_id int(11)  AUTO_INCREMENT,
  nome varchar(60) ,
  cognome varchar(100),
  genere enum('m','f'),
  indirizzo varchar(100),
  n_civ varchar(10),
  citta varchar(30),
  provincia char(2) DEFAULT 'To',
  regione varchar(30) DEFAULT 'Piemonte',
  email varchar(100) ,
  data_nascita date,
  ins timestamp,
  primary key(studente_id)
);

INSERT INTO studente(nome,cognome,genere,indirizzo,n_civ,citta,provincia,regione,email,data_nascita) 
VALUES
('franco','rossi','m','via Tripoli','10 a','torino','TO','piemonte','franco.rossi@gmail.com','1978-10-01'),
('mario','verdi','m','via Vicenza','17 int 3','asti','AT','piemonte','mario.verdi@gmail.com','1981-10-01'),
('paolo','bianchi','m','via Volvera','47','asti','AT','piemonte','paolo.bianchi@gmail.com','1983-10-01'),
('sara','rossi','f','corso Vigevano','301 b','cuneo','CN','piemonte','sara.rossi@gmail.com','1983-10-01'),
('elisa','verdi','f','corso Francia','18','alessandria','AL','piemonte','elisa.verdi@gmail.com','1987-10-01'),
('marco','bianchi','m','via Siccardi','3','novara','NO','piemonte','marcob@gmail.com','1993-10-01'),
('franca','verdi','f','via MIlano','33 int 2','torino','TO','piemonte','fv@icloud.com','1993-10-01'),
('mauro','bruni','m','via Roma','72','torino','TO','piemonte','mb@icloud.com','1988-10-01'),
('osvaldo','rossi','m','via Firenze','5 a','torino','TO','piemonte','or@icloud.com','1987-01-02'),
('oscar','verdi','m','lungo Dora Siena','34','torino','TO','piemonte','ov@icloud.com','1990-02-03'),
('paola','bianchi','f','Corso Regina','300','torino','TO','piemonte','paolab@icloud.com','1985-03-04'),
('franca','verdi','f','Corso Mortara','231','torino','TO','piemonte','francaverdi@icloud.com','1989-11-05'),
('eleonora','verdi','f','via Bardonecchia','121','torino','TO','piemonte','ele@icloud.com','1989-12-06'),
('enrico','macello','m','via Grosseto','125 int 3','asti','AT','piemonte','emacello@gmail.com','1983-10-01'),
('fabio','baggio','m','via Dogliani','7','cuneo','CN','piemonte','fbaggio@gmail.com','1983-10-01'),
('francesco','gamba','m','via Torino','1','alessandria','AL','piemonte','gamba@gmail.com','1987-10-01'),
('marco','demarchi','m','via Napoli','10 b','novara','NO','piemonte','marcodem@gmail.com','1993-10-01'),
('franca','verdone','f','via Parma','9','torino','TO','piemonte','fverdone@icloud.com','1993-10-01'),
('oscar','rossano',NULL,NULL,NULL,NULL,'To','Piemonte','oscar@yhaoo.it','1969-10-05'),
('marco','allegri',NULL,NULL,NULL,NULL,'To','Piemonte','marcoallegri@gmail.com','1969-10-05'),
('marco','pino',NULL,NULL,NULL,NULL,'To','Piemonte','marcopino@gmail.com','1969-10-05');


CREATE TABLE autore (
  autore_id int(11) AUTO_INCREMENT,
  nome varchar(50),
  cognome varchar(50),
  PRIMARY KEY (autore_id)
);


CREATE TABLE editore (
  editore_id int(11) AUTO_INCREMENT,
  nome varchar(50),
  PRIMARY KEY (editore_id)
);


CREATE TABLE libro (
  libro_id int(11) AUTO_INCREMENT,
  titolo varchar(255),
  prezzo decimal(6,2),
  p_iva decimal(6,2),
  editore_id int(11),
  pagine int(5),
  PRIMARY KEY (libro_id)
);


CREATE TABLE libro_autore (
    id int(11) AUTO_INCREMENT,
  libro_id int(11),
  autore_id int(11),
    PRIMARY KEY (id)
);


INSERT INTO libro
VALUES
(1,'Alchimista (L\')',12.00,14.64,10,184),
(2,'Cinquanta sfumature di grigio',10.20,12.44,2,560),
(3,'Dieci piccoli indiani',10.20,12.44,2,208),
(4,'Don Chisciotte della Mancha',20.40,24.89,3,NULL),
(5,'Harry Potter e la Pietra Filosofale',8.50,10.37,4,302),
(6,'Il Codice da Vinci',11.00,13.42,2,512),
(7,'Il giovane Holden',10.20,12.44,3,251),
(8,'Il leone, la strega e l\'armadio',7.65,9.33,2,182),
(9,'Il libretto rosso',7.22,8.81,5,160),
(10,'Il Piccolo Principe',4.25,5.19,2,95),
(11,'Il Signore degli Anelli: La compagnia dell\'anello. Le due torri. Il ritorno del re',25.00,30.50,10,1255),
(12,'Il sogno della camera rossa. Romanzo cinese del XVIII secolo',15.30,18.67,3,721),
(13,'La colonna di fuoco',27.00,32.94,2,912),
(14,'La donna della domenica',12.00,14.64,2,434),
(15,'Lo Hobbit',9.35,11.41,10,417),
(16,'Macerie prime',14.45,17.63,6,192),
(17,'Origin',21.25,25.93,2,564),
(18,'Quel che resta del giorno',12.00,14.64,3,276),
(19,'Un mese con Montalbano',12.75,15.56,7,512),
(20,'Una storia tra due città',9.77,11.92,10,600),
(21,'Marcovaldo',10.00,12.20,7,120),
(22,'IT',25.00,30.50,9,550),
(23,'gomorra',12.59,15.36,NULL,345);
INSERT INTO editore
VALUES
(11,'Adelphi'),
(6,'Bao Publishing'),
(10,'Bompiani'),
(8,'BUR'),
(5,'Edizioni Clandestine'),
(3,'Einaudi'),
(2,'Mondadori'),
(4,'Salani'),
(7,'Sellerio'),
(9,'Sperling & Kupfer');
INSERT INTO autore
VALUES
(1,'John Ronald Reuel','Tolkien'),
(2,'Dan','Brown'),
(3,'Paulo','Coelho'),
(4,'J. D.','Salinger'),
(5,'Agatha','Christie'),
(6,'J. K.','Rowling'),
(7,'Tsao','Chan'),
(8,'E. L.','James'),
(9,'Antoine','de Saint-Exupéry'),
(10,'Charles','Dickens'),
(11,'Miguel','de Cervantes'),
(12,'Clive Staples','Lewis'),
(13,'Tse-tung','Mao'),
(14,'','Zerocalcare'),
(15,'Andrea','Camilleri'),
(16,'Ken','Follett'),
(17,'Kazuo','Ishiguro'),
(18,'Carlo','Fruttero'),
(19,'Franco','Lucentini'),
(20,'Italo','Calvino'),
(21,'Stephen','King'),
(22,'Isabel','Allende');
INSERT INTO libro_autore VALUES 
(1,1,3),
(2,2,8),
(3,3,5),
(4,4,11),
(5,5,6),
(6,6,2),
(7,7,4),
(8,8,12),
(9,9,13),
(10,10,9),
(11,11,1),
(12,12,7),
(13,13,16),
(14,14,18),
(15,14,19),
(16,15,1),
(17,16,14),
(18,17,2),
(19,18,17),
(20,19,15),
(21,20,10),
(22,21,20),
(23,22,21);