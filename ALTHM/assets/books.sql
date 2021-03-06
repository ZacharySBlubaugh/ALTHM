-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 08, 2010 at 11:13 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4.2

--
-- PHPBible SQL w/Strongs Numbers
--  
--  This is a MySQL dump file from the project phpBible.org.
--  It is the work of Danny Carlton and is copywritten.
--  Here's the author's copyright notice:
--
--   Copyright 2004, Danny Carlton. Permission is hereby granted to distribute
--   copies of this software package as long as you do not charge for it, and the 
--   copyright notices remain intact. Permission is also granted to use the concepts 
--   in these scripts for other similar scripts, but you may not simply copy the scripts and claim them as your own.
--  
--  The MySQL dump file was created by David Miles <david@amereservant.com> and is free in respect to the author's copyright.
--
--
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpbible`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--
-- Creation: Sep 08, 2010 at 10:54 AM
-- Last update: Sep 08, 2010 at 10:55 AM
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `number` int(2) NOT NULL AUTO_INCREMENT,
  `book` varchar(20) NOT NULL,
  `chapters` int(3) NOT NULL,
  `abbr` text NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`number`, `book`, `chapters`, `abbr`) VALUES
(1, 'Genesis', 50, 'Gen, Gn, Ge'),
(2, 'Exodus', 40, 'Exo, Ex, Exod'),
(3, 'Leviticus', 27, 'Lev, Lv'),
(4, 'Numbers', 36, 'Num, Nm, Nu'),
(5, 'Deuteronomy', 34, 'Deu, Dt, Deut'),
(6, 'Joshua', 24, 'Jos, Josh'),
(7, 'Judges', 21, 'Jdg, Judg'),
(8, 'Ruth', 4, 'Rth, Rt, Rut, Ru'),
(9, '1 Samuel', 31, '1 Sam, 1 Sa, 1 S, 1 Sm, 1sa'),
(10, '2 Samuel', 24, '2 Sam, 2 Sa, 2 S, 2 Sm, 2sa'),
(11, '1 Kings', 22, '1 Ki, 1 Kgs, 1ki'),
(12, '2 Kings', 25, '2 Ki, 2 Kgs, 2ki'),
(13, '1 Chronicles', 29, '1 Chr, 1 Ch, 1 Chron, 1ch'),
(14, '2 Chronicles', 36, '2 Chr, 2 Ch, 2 Chron, 2ch'),
(15, 'Ezra', 10, 'Ezr, Esr, 1 Ezr'),
(16, 'Nehemiah', 13, 'Neh, Ne, 2 Ezr'),
(17, 'Esther', 10, 'Est, Esth, es'),
(18, 'Job', 42, 'Job, Jb'),
(19, 'Psalms', 150, 'Psa, Ps, Psalm'),
(20, 'Proverbs', 31, 'Pro, Pr, Prov, Prv'),
(21, 'Ecclesiastes', 12, 'Ecc, Ec, Eccl'),
(22, 'Song of Solomon', 8, 'Sng, Song, Canticles, Cant, so'),
(23, 'Isaiah', 66, 'Isa, Is'),
(24, 'Jeremiah', 52, 'Jer, Jr'),
(25, 'Lamentations', 5, 'Lam, La, Lm'),
(26, 'Ezekiel', 48, 'Ezk, Ez, Ezek, Eze'),
(27, 'Daniel', 12, 'Dan, Da, Dn'),
(28, 'Hosea', 14, 'Hos, Ho'),
(29, 'Joel', 3, 'Jol, Jl, joe'),
(30, 'Amos', 9, 'Amo, Am'),
(31, 'Obadiah', 1, 'Oba, Ob, Obad, Obd'),
(32, 'Jonah', 4, 'Jon, Jnh'),
(33, 'Micah', 7, 'Mic, Mi, Mch'),
(34, 'Nahum', 3, 'Nah, Na, Nam'),
(35, 'Habakkuk', 3, 'Hab, Ha'),
(36, 'Zephaniah', 3, 'Zeph, Zep'),
(37, 'Haggai', 2, 'Hag, Hagg'),
(38, 'Zechariah', 14, 'Zech, Zec, Zch'),
(39, 'Malachi', 4, 'Mal, Ml'),
(40, 'Matthew', 28, 'Mt, Mat, Matt'),
(41, 'Mark', 16, 'Mk, Mr, Mrk'),
(42, 'Luke', 24, 'Lk, Luk, L, Lu'),
(43, 'John', 21, 'Jn, Jhn, J, Joh'),
(44, 'Acts', 28, 'Act, Ac'),
(45, 'Romans', 16, 'Rom, Ro, R, Rm'),
(46, '1 Corinthians', 16, '1 Cor, 1 Co, 1 K, 1ki'),
(47, '2 Corinthians', 13, '2 Cor, 2 Co, 2 K, 2ki'),
(48, 'Galatians', 6, 'Gal, Ga, G'),
(49, 'Ephesians', 6, 'Eph, Ep, E'),
(50, 'Philippians', 4, 'Phil, Php, Ph, Phili'),
(51, 'Colossians', 4, 'Col'),
(52, '1 Thessalonians', 5, '1 Th, 1 Thess, 1 Thes, 1th'),
(53, '2 Thessalonians', 3, '2 Th, 2 Thess, 2 Thes, 2th'),
(54, '1 Timothy', 6, '1 Tim, 1 Ti, 1 T, 1 Tm, 1ti'),
(55, '2 Timothy', 4, '2 Tim, 2 Ti, 2 T, 2 Tm, 2ti'),
(56, 'Titus', 3, 'Tit, Tt'),
(57, 'Philemon', 1, 'Phm, Phlm, Philem, Phile'),
(58, 'Hebrews', 13, 'Heb, Hebr, H, Hbr'),
(59, 'James', 5, 'Jas, Jam, Ja'),
(60, '1 Peter', 5, '1 Pet, 1 Pt, 1 P, 1 Pe, 1pe'),
(61, '2 Peter', 3, '2 Pet, 2 Pt, 2 P, 2 Pe, 2pe'),
(62, '1 John', 5, '1 Jn, 1 Jo, 1 J, 1jo'),
(63, '2 John', 1, '2 Jn, 2 Jo, 2 J, 2jo'),
(64, '3 John', 1, '3 Jn, 3 Jo, 3 J, 3jo'),
(65, 'Jude', 1, 'Jud, Jd'),
(66, 'Revelation', 22, 'Rev, ');
