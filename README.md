# Hospital-Fundamental-Part2
Projetado com MySQL

# Hospital Fundamental parte 2 - MYSQL
Neste projeto proposto chamado "Hospital Fundamental" proposto pelo meu professor criei o banco de dados a partir da modelagem do sistema, feita na parte 1 do projeto Hospital fundamental aqui :

https://github.com/DevOrosco/Hospital_Fundamental-Part-1

## Descrição do Projeto

## Entender do assunto
Considere a seguinte descrição e o diagrama ER abaixo:

No hospital, as internações têm sido registradas por meio de formulários eletrônicos que gravam os dados em arquivos. 

Para cada internação, são anotadas a data de entrada, a data prevista de alta e a data efetiva de alta, além da descrição textual dos procedimentos a serem realizados. 

As internações precisam ser vinculadas a quartos, com a numeração e o tipo. 

Cada tipo de quarto tem sua descrição e o seu valor diário (a princípio, o hospital trabalha com apartamentos, quartos duplos e enfermaria).

Também é necessário controlar quais profissionais de enfermaria estarão responsáveis por acompanhar o paciente durante sua internação. Para cada enfermeiro(a), é necessário nome, CPF e registro no conselho de enfermagem (CRE).

A internação, obviamente, é vinculada a um paciente – que pode se internar mais de uma vez no hospital – e a um único médico responsável.
O seguinte pedaço de Diagrama ER modela esses novos requisitos:

Mãos a obra?
Faça a ligação do diagrama acima ao diagrama desenvolvido na atividade antrior, construindo relacionamentos com entidades relacionadas. E eleve o seu diagrama para que já selecionando os tipos de dados que serão trabalhados e em quais situações. 

Por último, crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade anterior e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.
Use ferramentas, como ERPlus, Lucidchart, draw.io (via web) e MySQL Workbench, ou mesmo um editor de imagens para o diagrama.  Você pode utilizar o MySQL Workbench ou o DBdiagram.io para montar os scripts SQL.

Importante: desse modelo já vamos para a etapa lógica da nossa modelagem!
Mãos a obra?
Faça a ligação do diagrama acima ao diagrama desenvolvido na atividade antrior, construindo relacionamentos com entidades relacionadas. E eleve o seu diagrama para que já selecionando os tipos de dados que serão trabalhados e em quais situações. 

Por último, crie um script SQL para a geração do banco de dados e para instruções de montagem de cada uma das entidades/tabelas presentes no diagrama completo (considerando as entidades do diagrama da atividade anterior e as novas entidades propostas no diagrama acima). Também crie tabelas para relacionamentos quando necessário. Aplique colunas e chaves primárias e estrangeiras.
Use ferramentas, como ERPlus, Lucidchart, draw.io (via web) e MySQL Workbench, ou mesmo um editor de imagens para o diagrama.  Você pode utilizar o MySQL Workbench ou o DBdiagram.io para montar os scripts SQL.

Importante: desse modelo já vamos para a etapa lógica da nossa modelagem!


## Código Criado no MySQL Workbench

CREATE DATABASE  IF NOT EXISTS `Hospital_Fundamental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Hospital_Fundamental`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalmaluco
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `Consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Consultas` (
  `ID_Consulta` int NOT NULL AUTO_INCREMENT,
  `Data_Consulta` date NOT NULL,
  `Hora_Consulta` int NOT NULL,
  `Valor_Consulta` float NOT NULL,
  `Consulta_Paciente` int NOT NULL,
  `Medico_Consulta` int NOT NULL,
  PRIMARY KEY (`ID_Consulta`),
  KEY `Medico_Consulta` (`Medico_Consulta`),
  KEY `Consulta_Paciente` (`Consulta_Paciente`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`Medico_Consulta`) REFERENCES `Medico` (`ID_Medico`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`Consulta_Paciente`) REFERENCES `Paciente` (`ID_Paciente`),
  CONSTRAINT `consultas_ibfk_3` FOREIGN KEY (`Medico_Consulta`) REFERENCES `Medico` (`ID_Medico`),
  CONSTRAINT `consultas_ibfk_4` FOREIGN KEY (`Consulta_Paciente`) REFERENCES `Paciente` (`ID_Paciente`),
  CONSTRAINT `consultas_ibfk_5` FOREIGN KEY (`Medico_Consulta`) REFERENCES `Medico` (`ID_Medico`),
  CONSTRAINT `consultas_ibfk_6` FOREIGN KEY (`Consulta_Paciente`) REFERENCES `Paciente` (`ID_Paciente`),
  CONSTRAINT `consultas_ibfk_7` FOREIGN KEY (`Medico_Consulta`) REFERENCES `Medico` (`ID_Medico`),
  CONSTRAINT `consultas_ibfk_8` FOREIGN KEY (`Consulta_Paciente`) REFERENCES `Paciente` (`ID_Paciente`),
  CONSTRAINT `consultas_ibfk_9` FOREIGN KEY (`Medico_Consulta`) REFERENCES `Medico` (`ID_Medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `Consultas` WRITE;
/*!40000 ALTER TABLE `Consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `Convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Convenios` (
  `ID_Convenio` int NOT NULL AUTO_INCREMENT,
  `Nome_Convenio` varchar(200) NOT NULL,
  `CNPJ_Convenio` int NOT NULL,
  `Tempo_Carencia` int NOT NULL,
  `Convenio_Paciente` int NOT NULL,
  PRIMARY KEY (`ID_Convenio`,`CNPJ_Convenio`),
  KEY `Convenio_Paciente` (`Convenio_Paciente`),
  CONSTRAINT `convenios_ibfk_1` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_2` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_3` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_4` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_5` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_6` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_7` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_8` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `convenios_ibfk_9` FOREIGN KEY (`Convenio_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Convenios`
--

LOCK TABLES `Convenios` WRITE;
/*!40000 ALTER TABLE `Convenios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Enfermeiro`
--

DROP TABLE IF EXISTS `Enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Enfermeiro` (
  `CPF_Enfermeiro` int NOT NULL,
  `CRE_Enfermeiro` int NOT NULL,
  `ID_Enfermeiro` int NOT NULL AUTO_INCREMENT,
  `Nome_Enfermeiro` varchar(100) NOT NULL,
  `Enfermeiro_Paciente` int NOT NULL,
  PRIMARY KEY (`ID_Enfermeiro`,`CRE_Enfermeiro`,`CPF_Enfermeiro`),
  KEY `Enfermeiro_Paciente` (`Enfermeiro_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_1` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_2` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_3` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_4` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_5` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_6` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_7` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_8` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `enfermeiro_ibfk_9` FOREIGN KEY (`Enfermeiro_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `Enfermeiro` WRITE;
/*!40000 ALTER TABLE `Enfermeiro` DISABLE KEYS */;
/*!40000 ALTER TABLE `Enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Internaçao`
--

DROP TABLE IF EXISTS `Internaçao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Internaçao` (
  `ID_Internacao` int NOT NULL AUTO_INCREMENT,
  `Nome_Paciente` varchar(100) NOT NULL,
  `Data_Efetivada` date NOT NULL,
  `Data_Entrada` date NOT NULL,
  `Data_Alta` date NOT NULL,
  `Procedimento` varchar(100) NOT NULL,
  `Quarto_Internação` int NOT NULL,
  `Enfermeiro_Internaçao` int NOT NULL,
  `Internaçao_Paciente` int NOT NULL,
  PRIMARY KEY (`ID_Internacao`),
  KEY `Internaçao_Paciente` (`Internaçao_Paciente`),
  CONSTRAINT `internaçao_ibfk_1` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_2` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_3` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_4` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_5` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_6` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_7` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_8` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `internaçao_ibfk_9` FOREIGN KEY (`Internaçao_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Internaçao`
--

LOCK TABLES `Internaçao` WRITE;
/*!40000 ALTER TABLE `Internaçao` DISABLE KEYS */;
/*!40000 ALTER TABLE `Internaçao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicos`
--

DROP TABLE IF EXISTS `Medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medicos` (
  `ID_Medico` int NOT NULL AUTO_INCREMENT,
  `Nome_Medico` varchar(200) NOT NULL,
  `CRM_Medico` int NOT NULL,
  `Tipo_Medico` varchar(200) NOT NULL,
  `Receita_Medico` int NOT NULL,
  `Especialidade_Medico` varchar(200) NOT NULL,
  `Consulta_Medico` int NOT NULL,
  PRIMARY KEY (`ID_Medico`,`CRM_Medico`,`Consulta_Medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicos`
--

LOCK TABLES `Medicos` WRITE;
/*!40000 ALTER TABLE `Medicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pacientes`
--

DROP TABLE IF EXISTS `Pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pacientes` (
  `ID_Paciente` int NOT NULL AUTO_INCREMENT,
  `Nome_Paciente` varchar(200) NOT NULL,
  `Endereço_Paciente` varchar(200) NOT NULL,
  `DataNascimento_Paciente` date NOT NULL,
  `CPF_Paciente` int NOT NULL,
  `Email_Paciente` varchar(200) NOT NULL,
  `Consulta_Paciente` int NOT NULL,
  `Receita_Paciente` int NOT NULL,
  `Conevenio_Paciente` int NOT NULL,
  `Quarto_Paciente` int NOT NULL,
  `Internaçao_Paciente` int NOT NULL,
  `Enfermeiro_Paciente` int NOT NULL,
  PRIMARY KEY (`ID_Paciente`,`CPF_Paciente`,`Consulta_Paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pacientes`
--

LOCK TABLES `Pacientes` WRITE;
/*!40000 ALTER TABLE `Pacientes` DISABLE KEYS */;
INSERT INTO `Pacientes` VALUES (1,'Maria Alice','Rua Mario Quitanda','2004-01-02',411474148,'_maria_alice@email.com',1,1,1,1,1,1);
/*!40000 ALTER TABLE `Pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quarto`
--

DROP TABLE IF EXISTS `Quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quarto` (
  `ID_Quarto` int NOT NULL AUTO_INCREMENT,
  `Numero_Quarto` int NOT NULL,
  `Tipo_Quarto` varchar(100) NOT NULL,
  `Quarto_Paciente` int NOT NULL,
  PRIMARY KEY (`ID_Quarto`,`Numero_Quarto`),
  KEY `Quarto_Paciente` (`Quarto_Paciente`),
  CONSTRAINT `quarto_ibfk_1` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `quarto_ibfk_2` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `quarto_ibfk_3` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `quarto_ibfk_4` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `quarto_ibfk_5` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `quarto_ibfk_6` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `quarto_ibfk_7` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `quarto_ibfk_8` FOREIGN KEY (`Quarto_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quarto`
--

LOCK TABLES `Quarto` WRITE;
/*!40000 ALTER TABLE `Quarto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Receitas`
--

DROP TABLE IF EXISTS `Receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Receitas` (
  `ID_Receita` int NOT NULL AUTO_INCREMENT,
  `Nome_Remedio` varchar(200) NOT NULL,
  `Quantidade_Remedio` int NOT NULL,
  `Hora_Remedio` int NOT NULL,
  `Tipo_Remedio` varchar(200) NOT NULL,
  `Medico_Receitas` int NOT NULL,
  `Receita_Paciente` int NOT NULL,
  PRIMARY KEY (`ID_Receita`),
  KEY `Medico_Receitas` (`Medico_Receitas`),
  KEY `Receita_Paciente` (`Receita_Paciente`),
  CONSTRAINT `receitas_ibfk_1` FOREIGN KEY (`Medico_Receitas`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `receitas_ibfk_2` FOREIGN KEY (`Receita_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `receitas_ibfk_3` FOREIGN KEY (`Medico_Receitas`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `receitas_ibfk_4` FOREIGN KEY (`Receita_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `receitas_ibfk_5` FOREIGN KEY (`Medico_Receitas`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `receitas_ibfk_6` FOREIGN KEY (`Receita_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `receitas_ibfk_7` FOREIGN KEY (`Medico_Receitas`) REFERENCES `Medicos` (`ID_Medico`),
  CONSTRAINT `receitas_ibfk_8` FOREIGN KEY (`Receita_Paciente`) REFERENCES `Pacientes` (`ID_Paciente`),
  CONSTRAINT `receitas_ibfk_9` FOREIGN KEY (`Medico_Receitas`) REFERENCES `Medicos` (`ID_Medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Receitas`
--

LOCK TABLES `Receitas` WRITE;
/*!40000 ALTER TABLE `Receitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Receitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipo_Quarto`
--

DROP TABLE IF EXISTS `Tipo_Quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tipo_Quarto` (
  `Valor_Quarto` float NOT NULL,
  `ID_TipoQuarto` int NOT NULL AUTO_INCREMENT,
  `Descrição_Quarto` varchar(100) NOT NULL,
  `Tipo_Quarto` int NOT NULL,
  PRIMARY KEY (`ID_TipoQuarto`),
  KEY `Tipo_Quarto` (`Tipo_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_1` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_2` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_3` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_4` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_5` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_6` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_7` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`),
  CONSTRAINT `tipoquarto_ibfk_8` FOREIGN KEY (`Tipo_Quarto`) REFERENCES `Quarto` (`ID_Quarto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipo_Quarto`
--

LOCK TABLES `Tipo_Quarto` WRITE;
/*!40000 ALTER TABLE `Tipo_Quarto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tipo_Quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Hospital_Fundamental'
--

--
-- Dumping routines for database 'Hospital_Fundamental'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16 20:18:01
