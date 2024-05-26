CREATE DATABASE car_dealers
	CHARACTER SET utf8mb4
	COLLATE utf8mb4_hungarian_ci;

USE car_dealers;

CREATE TABLE car_dealers.owners (
  id INT(11) NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 819,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_hungarian_ci;

CREATE TABLE car_dealers.cars (
  id INT(11) NOT NULL,
  brand VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  registration_date DATETIME NOT NULL,
  owner_id INT(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_hungarian_ci;

ALTER TABLE car_dealers.cars 
  ADD CONSTRAINT FK_cars_owners_id FOREIGN KEY (owner_id)
    REFERENCES car_dealers.owners(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

INSERT INTO car_dealers.owners(id, name, address) VALUES
(101, 'John Doe', '123 Main St, Anytown, USA'),
(102, 'Jane Smith', '456 Oak St, Sometown, USA'),
(103, 'Emily Johnson', '789 Pine St, Othertown, USA'),
(104, 'Michael Brown', '101 Maple St, Anycity, USA'),
(105, 'Jessica Williams', '202 Elm St, Somecity, USA'),
(106, 'Daniel Taylor', '303 Cedar St, Thistown, USA'),
(107, 'Sarah Wilson', '404 Birch St, Thatcity, USA'),
(108, 'Matthew Moore', '505 Walnut St, Anothercity, USA'),
(109, 'Ashley Martin', '606 Spruce St, Thiscity, USA'),
(110, 'Joshua Thompson', '707 Cherry St, Yourtown, USA'),
(111, 'Olivia Martinez', '808 Palm St, Theirtown, USA'),
(112, 'Sophia Anderson', '909 Redwood St, Mytown, USA'),
(113, 'James White', '1010 Hickory St, Heretown, USA'),
(114, 'Benjamin Harris', '1111 Magnolia St, Theircity, USA'),
(115, 'Elizabeth Clark', '1212 Cypress St, Thistown, USA'),
(116, 'David Lewis', '1313 Poplar St, Thatcity, USA'),
(117, 'Emily Lee', '1414 Aspen St, Herecity, USA'),
(118, 'Daniel Walker', '1515 Willow St, Therecity, USA'),
(119, 'Sophia Young', '1616 Ash St, Yourcity, USA'),
(120, 'Michael King', '1717 Beech St, Theirplace, USA');

INSERT INTO car_dealers.cars(id, brand, model, registration_date, owner_id) VALUES
(1, 'Toyota', 'Corolla', '2020-03-15 00:00:00', 101),
(2, 'Honda', 'Civic', '2018-07-22 00:00:00', 102),
(3, 'Ford', 'Mustang', '2019-11-30 00:00:00', 103),
(4, 'Tesla', 'Model S', '2021-05-14 00:00:00', 104),
(5, 'BMW', 'X5', '2017-09-18 00:00:00', 105),
(6, 'Toyota', 'Camry', '2019-08-01 00:00:00', 106),
(7, 'Honda', 'Accord', '2016-11-21 00:00:00', 107),
(8, 'Ford', 'Explorer', '2020-01-10 00:00:00', 108),
(9, 'Tesla', 'Model 3', '2021-09-05 00:00:00', 109),
(10, 'BMW', '3 Series', '2018-04-23 00:00:00', 110),
(11, 'Toyota', 'Highlander', '2019-03-15 00:00:00', 111),
(12, 'Honda', 'Pilot', '2017-07-22 00:00:00', 112),
(13, 'Ford', 'F-150', '2021-11-30 00:00:00', 113),
(14, 'Tesla', 'Model X', '2022-05-14 00:00:00', 114),
(15, 'BMW', '5 Series', '2017-09-18 00:00:00', 115),
(16, 'Toyota', 'RAV4', '2019-08-01 00:00:00', 116),
(17, 'Honda', 'CR-V', '2016-11-21 00:00:00', 117),
(18, 'Ford', 'Escape', '2020-01-10 00:00:00', 118),
(19, 'Tesla', 'Model Y', '2021-09-05 00:00:00', 119),
(20, 'BMW', 'X3', '2018-04-23 00:00:00', 120),
(21, 'Toyota', 'Avalon', '2020-03-15 00:00:00', 101),
(22, 'Honda', 'Odyssey', '2018-07-22 00:00:00', 102),
(23, 'Ford', 'Edge', '2019-11-30 00:00:00', 103),
(24, 'Tesla', 'Cybertruck', '2021-05-14 00:00:00', 104),
(25, 'BMW', 'Z4', '2017-09-18 00:00:00', 105),
(26, 'Toyota', '4Runner', '2019-08-01 00:00:00', 106),
(27, 'Honda', 'HR-V', '2016-11-21 00:00:00', 107),
(28, 'Ford', 'Bronco', '2020-01-10 00:00:00', 108),
(29, 'Tesla', 'Roadster', '2021-09-05 00:00:00', 109),
(30, 'BMW', '7 Series', '2018-04-23 00:00:00', 110),
(31, 'Toyota', 'Sequoia', '2019-03-15 00:00:00', 111),
(32, 'Honda', 'Ridgeline', '2017-07-22 00:00:00', 112),
(33, 'Ford', 'Ranger', '2021-11-30 00:00:00', 113),
(34, 'Tesla', 'Semi', '2022-05-14 00:00:00', 114),
(35, 'BMW', 'M3', '2017-09-18 00:00:00', 115),
(36, 'Toyota', 'Tacoma', '2019-08-01 00:00:00', 116),
(37, 'Honda', 'Insight', '2016-11-21 00:00:00', 117),
(38, 'Ford', 'Fusion', '2020-01-10 00:00:00', 118),
(39, 'Tesla', 'Model 3', '2021-09-05 00:00:00', 119),
(40, 'BMW', 'X7', '2018-04-23 00:00:00', 120),
(41, 'Toyota', 'Prius', '2020-03-15 00:00:00', 101),
(42, 'Honda', 'Crosstour', '2018-07-22 00:00:00', 102),
(43, 'Ford', 'Taurus', '2019-11-30 00:00:00', 103),
(44, 'Tesla', 'Model Y', '2021-05-14 00:00:00', 104),
(45, 'BMW', 'i8', '2017-09-18 00:00:00', 105),
(46, 'Toyota', 'Venza', '2019-08-01 00:00:00', 106),
(47, 'Honda', 'Passport', '2016-11-21 00:00:00', 107),
(48, 'Ford', 'Fiesta', '2020-01-10 00:00:00', 108),
(49, 'Tesla', 'Model S', '2021-09-05 00:00:00', 109),
(50, 'BMW', 'X6', '2018-04-23 00:00:00', 110);