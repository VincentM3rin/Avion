https://www.phpmyadmin.net/
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `identifiant` (
  `NomUtilisateur` text DEFAULT NULL,
  `Mdp` text DEFAULT NULL
) 
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `identifiant` (`NomUtilisateur`, `Mdp`) VALUES
('admin', '123456'),
('Direction', '123478'),
('Direction', '123478');
COMMIT;