-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 14 2018 г., 19:18
-- Версия сервера: 5.7.16
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dneprGarage`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adress`
--

CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_city` int(11) NOT NULL,
  `id_street` int(11) NOT NULL,
  `id_number_of_house` int(11) NOT NULL,
  `id_number_of_flat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `adress`
--

INSERT INTO `adress` (`id`, `id_country`, `id_city`, `id_street`, `id_number_of_house`, `id_number_of_flat`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 2, 1, 1, 2, 1),
(3, 3, 1, 2, 3, 3),
(4, 1, 2, 3, 1, 88),
(5, 3, 3, 3, 3, 3),
(6, 1, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `brand_of_machine`
--

CREATE TABLE `brand_of_machine` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brand_of_machine`
--

INSERT INTO `brand_of_machine` (`id`, `brand_name`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Nissan');

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `city`) VALUES
(1, 'Washington'),
(2, 'Toronto'),
(3, 'Kiev'),
(4, 'Dnepr');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `id_client_last_name` int(11) NOT NULL,
  `id_client_first_name` int(11) NOT NULL,
  `id_service_name` int(11) NOT NULL,
  `id_brand_of_car` int(11) NOT NULL,
  `id_year_of_car` int(4) NOT NULL,
  `id_adress` int(11) NOT NULL,
  `id_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `id_client_last_name`, `id_client_first_name`, `id_service_name`, `id_brand_of_car`, `id_year_of_car`, `id_adress`, `id_phone`) VALUES
(1, 1, 2, 1, 1, 3, 1, 1),
(2, 1, 2, 2, 2, 1, 2, 2),
(3, 3, 3, 3, 1, 2, 3, 3),
(4, 4, 2, 2, 2, 1, 4, 4),
(5, 5, 5, 3, 3, 2, 5, 5),
(6, 2, 1, 1, 1, 3, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `clients_telephone`
--

CREATE TABLE `clients_telephone` (
  `id` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients_telephone`
--

INSERT INTO `clients_telephone` (`id`, `telephone`) VALUES
(1, '380671111111'),
(2, '380972222222'),
(3, '380632222222'),
(4, '123456789012'),
(5, '888888888888');

-- --------------------------------------------------------

--
-- Структура таблицы `client_first_name`
--

CREATE TABLE `client_first_name` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client_first_name`
--

INSERT INTO `client_first_name` (`id`, `name`) VALUES
(1, 'Ivan'),
(2, 'Peter'),
(3, 'Bob'),
(4, 'Aleks'),
(5, 'Anna');

-- --------------------------------------------------------

--
-- Структура таблицы `client_last_name`
--

CREATE TABLE `client_last_name` (
  `id` int(11) NOT NULL,
  `last_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client_last_name`
--

INSERT INTO `client_last_name` (`id`, `last_name`) VALUES
(1, 'Ivanov'),
(2, 'Petrov'),
(3, 'Sidorov'),
(4, 'Alekseev'),
(5, 'Iziumskaya');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `country`) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'Ukraine');

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`) VALUES
(1, 'UAH'),
(2, 'USD'),
(3, 'EUR');

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(45) NOT NULL,
  `value` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`id`, `service_name`, `value`, `id_currency`) VALUES
(1, 'car engine repair', 1, 1),
(2, 'repair of brake system', 2, 2),
(3, 'change of oil', 3, 1),
(4, 'machine diagnostics', 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `streets`
--

CREATE TABLE `streets` (
  `id` int(11) NOT NULL,
  `street` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `streets`
--

INSERT INTO `streets` (`id`, `street`) VALUES
(1, 'Miracle'),
(2, 'Sweet Dreams'),
(3, 'Number One');

-- --------------------------------------------------------

--
-- Структура таблицы `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `value`
--

INSERT INTO `value` (`id`, `value`) VALUES
(1, 10000),
(2, 5000),
(3, 1000),
(4, 2000);

-- --------------------------------------------------------

--
-- Структура таблицы `year_of_car`
--

CREATE TABLE `year_of_car` (
  `id` int(11) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `year_of_car`
--

INSERT INTO `year_of_car` (`id`, `year`) VALUES
(1, 1990),
(2, 2014),
(3, 2017);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_country_idx` (`id_country`),
  ADD KEY `fk_city_idx` (`id_city`),
  ADD KEY `fk_street_idx` (`id_street`);

--
-- Индексы таблицы `brand_of_machine`
--
ALTER TABLE `brand_of_machine`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_last_name_idx` (`id_client_last_name`),
  ADD KEY `fk_first_name_idx` (`id_client_first_name`),
  ADD KEY `fk_service_idx` (`id_service_name`),
  ADD KEY `1_idx` (`id_brand_of_car`),
  ADD KEY `fk_year_of_car_idx` (`id_year_of_car`),
  ADD KEY `1_idx1` (`id_year_of_car`),
  ADD KEY `fk_adress_idx` (`id_adress`),
  ADD KEY `fk_idx` (`id_phone`),
  ADD KEY `1_idx2` (`id_phone`);

--
-- Индексы таблицы `clients_telephone`
--
ALTER TABLE `clients_telephone`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `client_first_name`
--
ALTER TABLE `client_first_name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `client_last_name`
--
ALTER TABLE `client_last_name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1_idx` (`value`),
  ADD KEY `fk_currency_idx` (`id_currency`),
  ADD KEY `fk_curr_idx` (`id_currency`);

--
-- Индексы таблицы `streets`
--
ALTER TABLE `streets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `year_of_car`
--
ALTER TABLE `year_of_car`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adress`
--
ALTER TABLE `adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `brand_of_machine`
--
ALTER TABLE `brand_of_machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `clients_telephone`
--
ALTER TABLE `clients_telephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `client_first_name`
--
ALTER TABLE `client_first_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `client_last_name`
--
ALTER TABLE `client_last_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `streets`
--
ALTER TABLE `streets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `year_of_car`
--
ALTER TABLE `year_of_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `fk_city` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_country` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_street` FOREIGN KEY (`id_street`) REFERENCES `streets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `fk_adress` FOREIGN KEY (`id_adress`) REFERENCES `adress` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_brand_of_car` FOREIGN KEY (`id_brand_of_car`) REFERENCES `brand_of_machine` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_first_name` FOREIGN KEY (`id_client_first_name`) REFERENCES `client_first_name` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_last_name` FOREIGN KEY (`id_client_last_name`) REFERENCES `client_last_name` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phone` FOREIGN KEY (`id_phone`) REFERENCES `clients_telephone` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_service` FOREIGN KEY (`id_service_name`) REFERENCES `service` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_year_of_car` FOREIGN KEY (`id_year_of_car`) REFERENCES `year_of_car` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_curr` FOREIGN KEY (`id_currency`) REFERENCES `currencies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_val` FOREIGN KEY (`value`) REFERENCES `value` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
