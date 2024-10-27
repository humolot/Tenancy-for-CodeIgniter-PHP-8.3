-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/10/2024 às 07:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `c3saas`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2o7qvij6l6ag96rmcvfeu3im14jpabr8', '::1', 1587854604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538373835343438383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
('t967raurjesqafbmmhk2u7m5vi9r1rgf', '::1', 1729996942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939363934323b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
('4u32sgpnn10f94h1evakbfgmuuvir90g', '::1', 1729997253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939373235333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
('ie51555fa3dd6883n9o8r6hch82ec6to', '::1', 1729997595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939373539353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
('dr0sqic0hqrrk37bh72hk905e3uv6ou9', '::1', 1729998028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939383032383b),
('qh8uaboncqofgg55vmtpglbvdf619dts', '::1', 1729998024, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939383032343b),
('0otof7pejt08np9et24jo0hki9gq90h6', '::1', 1729997595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939373539353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
('3qvgft91jj24gjcugb2v19suro2pr5gb', '::1', 1729998593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939383539333b),
('nalp72ua85fqr3qnhod4hk8h5i75l70u', '::1', 1729998349, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939383334393b),
('9mutu9a5oaqetr301e1fh7kvk4sbm1c2', '::1', 1729998588, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939383334393b),
('7uac5pmu3opt98jmkahhm4gqrr5vuvmc', '::1', 1729999245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939393234353b),
('av797spndg2u5acu5t3gaortaq3uvqam', '::1', 1729999724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732393939393732343b),
('oqrfthd2o8e99e6248pceklo386p3j55', '::1', 1730000179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030303137393b),
('7qdnq03pvd1are0vc71p7s0e2sfskp8a', '::1', 1730001440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030313434303b),
('u612f2l1tdejgr34qt92ihh61kcart5b', '::1', 1730002273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030323237333b),
('gndaoarg2oj601g3vqj6l0fithk2r6n5', '::1', 1730007109, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030373130393b),
('6rd6mofkhhkdqnqgu48mt8ubdcrtbep4', '::1', 1730009814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030393831343b),
('gdmc1aboo5kftno4oaar0l1tp7491n61', '::1', 1730007638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030373633383b),
('j3l2pj74c900r90570o84fsivl56ur3m', '::1', 1730008218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030383231383b),
('u81ll95i5fourarpfpiun4g7933o7gm9', '::1', 1730008820, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030383832303b),
('dqadlk10jsi7i1r8o6nrhehtrqgduero', '::1', 1730009123, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030393132333b),
('pgj5ouo3a2sbinhncium1cfge0ia6824', '::1', 1730009596, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030393539363b),
('plbj7j8d6a4trbeb4jf59pji1jhr732u', '::1', 1730009180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030393138303b),
('hmnmkorpb5sl52uqhq1iiffltt78nveb', '::1', 1730009811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303030393539363b),
('lk2c7o8o8cjcpk7dirp4hsp63cattu99', '::1', 1730010650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303031303635303b),
('9ucfoehp4qkb6u72v14jgmqdpih0cnnd', '::1', 1730010650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303031303635303b);

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_archive`
--

CREATE TABLE `email_archive` (
  `id` int(10) UNSIGNED NOT NULL,
  `to` text NOT NULL,
  `bcc` text NOT NULL,
  `subject` text NOT NULL,
  `message` blob NOT NULL,
  `headers` blob NOT NULL,
  `data` mediumblob NOT NULL,
  `failed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `to` text NOT NULL,
  `bcc` text NOT NULL,
  `subject` text NOT NULL,
  `message` blob NOT NULL,
  `headers` blob NOT NULL,
  `data` mediumblob NOT NULL,
  `failed` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext DEFAULT NULL,
  `english` longtext DEFAULT NULL,
  `bengali` longtext DEFAULT NULL,
  `spanish` longtext DEFAULT NULL,
  `arabic` longtext DEFAULT NULL,
  `dutch` longtext DEFAULT NULL,
  `russian` longtext DEFAULT NULL,
  `chinese` longtext DEFAULT NULL,
  `turkish` longtext DEFAULT NULL,
  `portuguese` longtext DEFAULT NULL,
  `hungarian` longtext DEFAULT NULL,
  `french` longtext DEFAULT NULL,
  `greek` longtext DEFAULT NULL,
  `german` longtext DEFAULT NULL,
  `italian` longtext DEFAULT NULL,
  `thai` longtext DEFAULT NULL,
  `urdu` longtext DEFAULT NULL,
  `hindi` longtext DEFAULT NULL,
  `latin` longtext DEFAULT NULL,
  `indonesian` longtext DEFAULT NULL,
  `japanese` longtext DEFAULT NULL,
  `korean` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`) VALUES
(1, 'home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `last_modified` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `role`
--

INSERT INTO `role` (`id`, `name`, `date_added`, `last_modified`) VALUES
(1, 'Admin', 1234567890, 1234567890),
(2, 'User', 1234567890, 1234567890);

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'language', 'en');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tenants`
--

CREATE TABLE `tenants` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `database_name` varchar(100) DEFAULT NULL,
  `use_db` enum('0','1') DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tenants`
--

INSERT INTO `tenants` (`id`, `name`, `domain`, `hostname`, `username`, `password`, `database_name`, `use_db`, `created_at`, `updated_at`) VALUES
(1, 'Empresa A', 'empresa.localhost', 'localhost', 'root', NULL, 'facebio', '0', '2024-10-27 02:33:47', '2024-10-27 03:10:04'),
(2, 'Empresa B', 'empresab.localhost', 'localhost', 'root', NULL, 'empresa_b_db', '0', '2024-10-27 02:33:58', '2024-10-27 03:10:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(10) NOT NULL,
  `oauth_provider` enum('','facebook','google','twitter') NOT NULL,
  `oauth_uid` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `activation_code` varchar(50) NOT NULL,
  `forgot_pass_identity` varchar(36) NOT NULL,
  `activated` enum('0','1') NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') NOT NULL,
  `is_deleted` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Índices de tabela `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domain` (`domain`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
