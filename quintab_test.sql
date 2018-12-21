-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Dic 21, 2018 alle 07:56
-- Versione del server: 5.6.42
-- Versione PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quintab_test`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Anagrafica`
--

CREATE TABLE `Anagrafica` (
  `Matricola` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Cognome` varchar(45) NOT NULL,
  `Indirizzo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Anagrafica`
--

INSERT INTO `Anagrafica` (`Matricola`, `Nome`, `Cognome`, `Indirizzo`) VALUES
(1, 'Alessio', 'Cecchi', 'Via Modigliani 31');

-- --------------------------------------------------------

--
-- Struttura della tabella `Veicolo`
--

CREATE TABLE `Veicolo` (
  `IdVeicolo` int(11) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Modello` varchar(45) NOT NULL,
  `Matricola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Veicolo`
--

INSERT INTO `Veicolo` (`IdVeicolo`, `Marca`, `Modello`, `Matricola`) VALUES
(1, 'Ford', 'Fiesta', 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Anagrafica`
--
ALTER TABLE `Anagrafica`
  ADD PRIMARY KEY (`Matricola`);

--
-- Indici per le tabelle `Veicolo`
--
ALTER TABLE `Veicolo`
  ADD PRIMARY KEY (`IdVeicolo`),
  ADD KEY `Matricola` (`Matricola`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Anagrafica`
--
ALTER TABLE `Anagrafica`
  MODIFY `Matricola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `Veicolo`
--
ALTER TABLE `Veicolo`
  MODIFY `IdVeicolo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Veicolo`
--
ALTER TABLE `Veicolo`
  ADD CONSTRAINT `Veicolo_ibfk_1` FOREIGN KEY (`Matricola`) REFERENCES `Anagrafica` (`Matricola`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
