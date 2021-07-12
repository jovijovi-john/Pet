-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Jul-2021 às 14:26
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: bd_seletivo
--
CREATE DATABASE IF NOT EXISTS bd_seletivo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE bd_seletivo;

-- --------------------------------------------------------

--
-- Estrutura da tabela noticias
--

DROP TABLE IF EXISTS noticias;
CREATE TABLE noticias (
  codigo int(11) NOT NULL,
  titulo varchar(100) NOT NULL,
  resumo varchar(300) NOT NULL,
  data_publicacao date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela noticias
--

INSERT INTO noticias (codigo, titulo, resumo, data_publicacao) VALUES
(1, 'Seleção de Novos Integrantes', 'Encontra-se aberta a inscrição para a seleção de novos não bolsistas para o Programa de Educação Tutorial de Computação. Os requisitos dos discentes que desejarem se inscrever na seleção são as seguintes: Ser aluno e estar cursando Ciência da Computação', '0000-00-00'),
(2, 'Novos Integrantes', 'O Programa de Ensino Tutorial do Curso de Ciência da Computação (PET Ciência da Computação – PETComp) da Universidade Federal do Maranhão (UFMA) vem comunicar o resultado do seletivo para novos integrantes. Obrigado por sua participação e interesse no PET', '0000-00-00'),
(3, 'Seleção de Integrantes!', 'Encontra-se aberta a inscrição para a seleção de novos não bolsistas para o Programa de Educação Tutorial de Computação. Os requisitos dos discentes que desejarem se inscrever na seleção são as seguintes: Ser aluno e estar cursando Ciência da Computação', '0000-00-00'),
(4, 'Seminários PETCOMP', 'O PETCOMP realizará a apresentação de tópicos especiais de Computação de acordo com as pesquisas desenvolvidas pelo grupo. Os assuntos serão:   Título: Mineração e visualização de dados aplicados à base de monografias da UFMA Autor: Vinícius Augusto Cardoso Reis', '0000-00-00'),
(5, 'Seminários de Pesquisa PETCOMP', 'O PETCOMP realizará a apresentação de tópicos especiais de Computação de acordo com as pesquisas desenvolvidas pelo grupo. Os assuntos serão:   Título: Support Vector Machine (SVM) Autor: Eduardo Roger Silva Nascimento Resumo: O presente trabalho começa com uma breve', '0000-00-00'),
(6, 'III LABTOUR', 'A recepção de calouros mais famosa do CCET já tem data marcada, acontecerá no dia 27 de março às 15h40. O ponto de encontro será exclusivamente em frente ao LAB 3 !!!!!!!!! O LABTOUR tem o intuito de mostrar ao discente...', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela publicacoes
--

DROP TABLE IF EXISTS publicacoes;
CREATE TABLE publicacoes (
  codigo int(11) NOT NULL,
  titulo varchar(200) NOT NULL,
  autores varchar(200) NOT NULL,
  link_publicacao varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela publicacoes
--

INSERT INTO publicacoes (codigo, titulo, autores, link_publicacao) VALUES
(1, 'De Veteranos para os Novatos: Avaliação das Atividades de Recepção aos Calouros Organizado pelo Grupo PETComp', 'Daniel Pinto, Eduarda Chagas, Gabriel Costa, Kennedy Nunes, Ricardo Anchieta, Simara Rocha, Anselmo Paiva, Luis Rivero', 'https://sol.sbc.org.br/index.php/wei/article/view/11130/11001'),
(2, 'Identificando as Atividades dos Grupos do Programa de Educação Tutorial na Área de Computação no Apoio à Inclusão e Alfabetização Digital', 'Emily Costa, Antônio Pinto, José Ribamar Durand Rodrigues Junior, Alana Araújo, Ednara Pereira, Geraldo Braz Junior, Rodrigo Santos, Luis Rivero', 'https://br-ie.org/pub/index.php/wie/article/view/8594'),
(3, 'Identificação das Expectativas e Dificuldades de Alunos de Graduação no Ensino de Engenharia de Software', 'Jéssica Mendes, Yandson Costa, Kastney Frazão, Rodrigo Santos, Davi Santos, Luis Rivero', 'https://sol.sbc.org.br/index.php/wei/article/view/6640/6536'),
(4, 'Educação Tutorial em Computação: Uma Análise Retrospectiva das Atividades Realizadas para a Formação Pessoal e Profissional de Cientistas da Computação', 'Fernando Leite, Gabriel Cardoso, Yandson Costa, Igor Estrela, Antônio Pinto, Ednara Pereira, Geraldo Braz Júnior, Luis Rivero', 'https://sol.sbc.org.br/index.php/wei/article/view/6621/6517'),
(5, 'SIEPET: Uma proposta de remodelagem de um sistema para novas necessidades acadêmicas', 'Gabriel Silva Monteles, Eduardo Roger Silva Nascimento, Diego da Silva Oliveira, Vinícius Augusto Cardoso Reis, Geraldo Braz Júnior', 'http://pet.ufma.br/comp/wp-content/uploads/sites/1/2017/11/Resumo-MARAPET.pdf'),
(6, 'Impacto da Análise de Sentimentos em redes sociais na sociedade moderna', 'Lucas Reis Abreu, Simara Vieira da Rocha, Geraldo Braz Júnior', 'http://pet.ufma.br/comp/wp-content/uploads/sites/1/2017/11/Impacto-da-An%C3%A1lise-de-Sentimentos-em');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela noticias
--
ALTER TABLE noticias
  ADD PRIMARY KEY (codigo);

--
-- Índices para tabela publicacoes
--
ALTER TABLE publicacoes
  ADD PRIMARY KEY (codigo);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela noticias
--
ALTER TABLE noticias
  MODIFY codigo int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela publicacoes
--
ALTER TABLE publicacoes
  MODIFY codigo int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
