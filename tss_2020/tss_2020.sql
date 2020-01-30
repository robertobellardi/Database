-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 29, 2020 alle 10:34
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tss_2020`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `autore`
--

CREATE TABLE `autore` (
  `autore_id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `autore`
--

INSERT INTO `autore` (`autore_id`, `nome`, `cognome`) VALUES
(1, 'John Ronald Reuel', 'Tolkien'),
(2, 'Dan', 'Brown'),
(3, 'Paulo', 'Coelho'),
(4, 'J. D.', 'Salinger'),
(5, 'Agatha', 'Christie'),
(6, 'J. K.', 'Rowling'),
(7, 'Tsao', 'Chan'),
(8, 'E. L.', 'James'),
(9, 'Antoine', 'de Saint-Exupéry'),
(10, 'Charles', 'Dickens'),
(11, 'Miguel', 'de Cervantes'),
(12, 'Clive Staples', 'Lewis'),
(13, 'Tse-tung', 'Mao'),
(14, '', 'Zerocalcare'),
(15, 'Andrea', 'Camilleri'),
(16, 'Ken', 'Follett'),
(17, 'Kazuo', 'Ishiguro'),
(18, 'Carlo', 'Fruttero'),
(19, 'Franco', 'Lucentini'),
(20, 'Italo', 'Calvino'),
(21, 'Stephen', 'King'),
(22, 'Isabel', 'Allende');

-- --------------------------------------------------------

--
-- Struttura della tabella `editore`
--

CREATE TABLE `editore` (
  `editore_id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `editore`
--

INSERT INTO `editore` (`editore_id`, `nome`) VALUES
(2, 'Mondadori'),
(3, 'Einaudi'),
(4, 'Salani'),
(5, 'Edizioni Clandestine'),
(6, 'Bao Publishing'),
(7, 'Sellerio'),
(8, 'BUR'),
(9, 'Sperling & Kupfer'),
(10, 'Bompiani'),
(11, 'Adelphi');

-- --------------------------------------------------------

--
-- Struttura della tabella `libro`
--

CREATE TABLE `libro` (
  `libro_id` int(11) NOT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `prezzo` decimal(6,2) DEFAULT NULL,
  `p_iva` decimal(6,2) DEFAULT NULL,
  `editore_id` int(11) DEFAULT NULL,
  `pagine` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `libro`
--

INSERT INTO `libro` (`libro_id`, `titolo`, `prezzo`, `p_iva`, `editore_id`, `pagine`) VALUES
(1, 'Alchimista (L\')', '12.00', '14.64', 10, 184),
(2, 'Cinquanta sfumature di grigio', '10.20', '12.44', 2, 560),
(3, 'Dieci piccoli indiani', '10.20', '12.44', 2, 208),
(4, 'Don Chisciotte della Mancha', '20.40', '24.89', 3, NULL),
(5, 'Harry Potter e la Pietra Filosofale', '8.50', '10.37', 4, 302),
(6, 'Il Codice da Vinci', '11.00', '13.42', 2, 512),
(7, 'Il giovane Holden', '10.20', '12.44', 3, 251),
(8, 'Il leone, la strega e l\'armadio', '7.65', '9.33', 2, 182),
(9, 'Il libretto rosso', '7.22', '8.81', 5, 160),
(10, 'Il Piccolo Principe', '4.25', '5.19', 2, 95),
(11, 'Il Signore degli Anelli: La compagnia dell\'anello. Le due torri. Il ritorno del re', '25.00', '30.50', 10, 1255),
(12, 'Il sogno della camera rossa. Romanzo cinese del XVIII secolo', '15.30', '18.67', 3, 721),
(13, 'La colonna di fuoco', '27.00', '32.94', 2, 912),
(14, 'La donna della domenica', '12.00', '14.64', 2, 434),
(15, 'Lo Hobbit', '9.35', '11.41', 10, 417),
(16, 'Macerie prime', '14.45', '17.63', 6, 192),
(17, 'Origin', '21.25', '25.93', 2, 564),
(18, 'Quel che resta del giorno', '12.00', '14.64', 3, 276),
(19, 'Un mese con Montalbano', '12.75', '15.56', 7, 512),
(20, 'Una storia tra due città', '9.77', '11.92', 10, 600),
(21, 'Marcovaldo', '10.00', '12.20', 7, 120),
(22, 'IT', '25.00', '30.50', 9, 550),
(23, 'gomorra', '12.59', '15.36', NULL, 345);

-- --------------------------------------------------------

--
-- Struttura della tabella `libro_autore`
--

CREATE TABLE `libro_autore` (
  `id` int(11) NOT NULL,
  `libro_id` int(11) DEFAULT NULL,
  `autore_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `libro_autore`
--

INSERT INTO `libro_autore` (`id`, `libro_id`, `autore_id`) VALUES
(1, 1, 3),
(2, 2, 8),
(3, 3, 5),
(4, 4, 11),
(5, 5, 6),
(6, 6, 2),
(7, 7, 4),
(8, 8, 12),
(9, 9, 13),
(10, 10, 9),
(11, 11, 1),
(12, 12, 7),
(13, 13, 16),
(14, 14, 18),
(15, 14, 19),
(16, 15, 1),
(17, 16, 14),
(18, 17, 2),
(19, 18, 17),
(20, 19, 15),
(21, 20, 10),
(22, 21, 20),
(23, 22, 21);

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `nGiorni` int(11) DEFAULT NULL,
  `nPersone` int(11) DEFAULT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `studente`
--

CREATE TABLE `studente` (
  `studente_id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cognome` varchar(100) DEFAULT NULL,
  `genere` enum('m','f') DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `n_civ` varchar(10) DEFAULT NULL,
  `citta` varchar(30) DEFAULT NULL,
  `provincia` char(2) DEFAULT 'To',
  `regione` varchar(30) DEFAULT 'Piemonte',
  `email` varchar(100) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `ins` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `studente`
--

INSERT INTO `studente` (`studente_id`, `nome`, `cognome`, `genere`, `indirizzo`, `n_civ`, `citta`, `provincia`, `regione`, `email`, `data_nascita`, `ins`) VALUES
(1, 'franco', 'rossi', 'm', 'via Tripoli', '10 a', 'torino', 'TO', 'piemonte', 'franco.rossi@gmail.com', '1978-10-01', '2020-01-15 09:50:54'),
(2, 'mario', 'verdi', 'm', 'via Vicenza', '17 int 3', 'asti', 'AT', 'piemonte', 'mario.verdi@gmail.com', '1981-10-01', '2020-01-15 09:50:54'),
(3, 'paolo', 'bianchi', 'm', 'via Volvera', '47', 'asti', 'AT', 'piemonte', 'paolo.bianchi@gmail.com', '1983-10-01', '2020-01-15 09:50:54'),
(4, 'sara', 'rossi', 'f', 'corso Vigevano', '301 b', 'cuneo', 'CN', 'piemonte', 'sara.rossi@gmail.com', '1983-10-01', '2020-01-15 09:50:54'),
(5, 'elisa', 'verdi', 'f', 'corso Francia', '18', 'alessandria', 'AL', 'piemonte', 'elisa.verdi@gmail.com', '1987-10-01', '2020-01-15 09:50:54'),
(6, 'marco', 'bianchi', 'm', 'via Siccardi', '3', 'novara', 'NO', 'piemonte', 'marcob@gmail.com', '1993-10-01', '2020-01-15 09:50:54'),
(7, 'franca', 'verdi', 'f', 'via MIlano', '33 int 2', 'torino', 'TO', 'piemonte', 'fv@icloud.com', '1993-10-01', '2020-01-15 09:50:54'),
(8, 'mauro', 'bruni', 'm', 'via Roma', '72', 'torino', 'TO', 'piemonte', 'mb@icloud.com', '1988-10-01', '2020-01-15 09:50:54'),
(9, 'osvaldo', 'rossi', 'm', 'via Firenze', '5 a', 'torino', 'TO', 'piemonte', 'or@icloud.com', '1987-01-02', '2020-01-15 09:50:54'),
(10, 'oscar', 'verdi', 'm', 'lungo Dora Siena', '34', 'torino', 'TO', 'piemonte', 'ov@icloud.com', '1990-02-03', '2020-01-15 09:50:54'),
(11, 'paola', 'bianchi', 'f', 'Corso Regina', '300', 'torino', 'TO', 'piemonte', 'paolab@icloud.com', '1985-03-04', '2020-01-15 09:50:54'),
(12, 'franca', 'verdi', 'f', 'Corso Mortara', '231', 'torino', 'TO', 'piemonte', 'francaverdi@icloud.com', '1989-11-05', '2020-01-15 09:50:54'),
(13, 'eleonora', 'verdi', 'f', 'via Bardonecchia', '121', 'torino', 'TO', 'piemonte', 'ele@icloud.com', '1989-12-06', '2020-01-15 09:50:54'),
(14, 'enrico', 'macello', 'm', 'via Grosseto', '125 int 3', 'asti', 'AT', 'piemonte', 'emacello@gmail.com', '1983-10-01', '2020-01-15 09:50:54'),
(15, 'fabio', 'baggio', 'm', 'via Dogliani', '7', 'cuneo', 'CN', 'piemonte', 'fbaggio@gmail.com', '1983-10-01', '2020-01-15 09:50:54'),
(16, 'francesco', 'gamba', 'm', 'via Torino', '1', 'alessandria', 'AL', 'piemonte', 'gamba@gmail.com', '1987-10-01', '2020-01-15 09:50:54'),
(17, 'marco', 'demarchi', 'm', 'via Napoli', '10 b', 'novara', 'NO', 'piemonte', 'marcodem@gmail.com', '1993-10-01', '2020-01-15 09:50:54'),
(18, 'franca', 'verdone', 'f', 'via Parma', '9', 'torino', 'TO', 'piemonte', 'fverdone@icloud.com', '1993-10-01', '2020-01-15 09:50:54'),
(19, 'oscar', 'rossano', NULL, NULL, NULL, NULL, 'To', 'Piemonte', 'oscar@yhaoo.it', '1969-10-05', '2020-01-15 09:50:54'),
(20, 'marco', 'allegri', NULL, NULL, NULL, NULL, 'To', 'Piemonte', 'marcoallegri@gmail.com', '1969-10-05', '2020-01-15 09:50:54'),
(21, 'marco', 'pino', NULL, NULL, NULL, NULL, 'To', 'Piemonte', 'marcopino@gmail.com', '1969-10-05', '2020-01-15 09:50:54');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autore`
--
ALTER TABLE `autore`
  ADD PRIMARY KEY (`autore_id`);

--
-- Indici per le tabelle `editore`
--
ALTER TABLE `editore`
  ADD PRIMARY KEY (`editore_id`);

--
-- Indici per le tabelle `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`libro_id`),
  ADD KEY `fk_libro_editore` (`editore_id`);

--
-- Indici per le tabelle `libro_autore`
--
ALTER TABLE `libro_autore`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `studente`
--
ALTER TABLE `studente`
  ADD PRIMARY KEY (`studente_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `autore`
--
ALTER TABLE `autore`
  MODIFY `autore_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT per la tabella `editore`
--
ALTER TABLE `editore`
  MODIFY `editore_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `libro`
--
ALTER TABLE `libro`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT per la tabella `libro_autore`
--
ALTER TABLE `libro_autore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `studente`
--
ALTER TABLE `studente`
  MODIFY `studente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
