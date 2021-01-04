CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	8.0.19-0ubuntu0.19.10.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vw_teste_nome`
--

DROP TABLE IF EXISTS `vw_teste_nome`;
/*!50001 DROP VIEW IF EXISTS `vw_teste_nome`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_teste_nome` AS SELECT 
 1 AS `gnome`,
 1 AS `gsexo`,
 1 AS `cnome`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_gafanhoto_cursopreferido`
--

DROP TABLE IF EXISTS `vw_gafanhoto_cursopreferido`;
/*!50001 DROP VIEW IF EXISTS `vw_gafanhoto_cursopreferido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_gafanhoto_cursopreferido` AS SELECT 
 1 AS `nomegafanhoto`,
 1 AS `nomecurso`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_teste_nome`
--

/*!50001 DROP VIEW IF EXISTS `vw_teste_nome`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`vagner_franca`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_teste_nome` (`gnome`,`gsexo`,`cnome`) AS select `gafanhotos`.`nome` AS `nome`,`gafanhotos`.`sexo` AS `sexo`,`cursos`.`nome` AS `nome` from (`gafanhotos` join `cursos`) where (`gafanhotos`.`cursopreferido` = `cursos`.`idcurso`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_gafanhoto_cursopreferido`
--

/*!50001 DROP VIEW IF EXISTS `vw_gafanhoto_cursopreferido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`vagner_franca`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_gafanhoto_cursopreferido` AS select `g`.`nome` AS `nomegafanhoto`,`c`.`nome` AS `nomecurso` from ((`gafanhotos` `g` join `gafanhoto_assiste_curso` `assiste` on((`g`.`id` = `assiste`.`idgafanhoto`))) join `cursos` `c` on((`c`.`idcurso` = `assiste`.`idcurso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 16:43:54
