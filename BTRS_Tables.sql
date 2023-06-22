CREATE TABLE btrs_stops (
  stop_id   char(4) PRIMARY KEY,
  stop_name varchar(100)
);


INSERT INTO btrs_stops (stop_id, stop_name)
VALUES
  ('VSKP', 'Visakhapatnam'),
  ('VJA', 'Vijayawada'),
  ('KHM', 'Khammam'),
  ('HYD', 'Hyderabad'),
  ('TPT', 'Tirupati'),
  ('CTR', 'Chittoor'),
  ('KLR', 'Kolar'),
  ('BLR', 'Bengaluru'),
  ('KUR', 'Kurnool'),
  ('KDP', 'Kadapa'),
  ('HSR', 'Hosur'),
  ('KRI', 'Krishnagiri'),
  ('VLR', 'Vellore'),
  ('RJY', 'Rajahmundry'),
  ('OGL', 'Ongole'),
  ('NLR', 'Nellore'),
  ('CHN', 'Chennai'),
  ('ATP', 'Anantapur');


select * from btrs_stops

CREATE TABLE btrs_stp_distances (
  source char(4),
  destination char(4),
  distance decimal(10, 2),
  PRIMARY KEY (source, destination),
  FOREIGN KEY (source) REFERENCES btrs_stops(stop_id),
  FOREIGN KEY (destination) REFERENCES btrs_stops(stop_id)
);

select * from btrs_stp_distances

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('VSKP', 'VJA', 350.50),
  ('VSKP', 'KHM', 450.75),
  ('VSKP', 'HYD', 600.25),
  ('VSKP', 'TPT', 750.30),
  ('VSKP', 'BLR', 850.80),
  ('VSKP', 'VLR', 950.20),
  ('VSKP', 'CHN', 950.50),
  ('VSKP', 'KLR', 900.40),
  ('VSKP', 'KUR', 750.90),
  ('VSKP', 'KDP', 700.60),
  ('VSKP', 'CTR', 650.75),
  ('VSKP', 'KRI', 550.50),
  ('VSKP', 'HSR', 500.80),
  ('VSKP', 'RJY', 400.60),
  ('VSKP', 'OGL', 350.75),
  ('VSKP', 'NLR', 350.20),
  ('VSKP', 'ATP', 500.60)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('VJA', 'VSKP', 350.50),
  ('VJA', 'KHM', 300.25),
  ('VJA', 'HYD', 350.75),
  ('VJA', 'TPT', 450.30),
  ('VJA', 'CTR', 550.80),
  ('VJA', 'KLR', 600.50),
  ('VJA', 'BLR', 650.20),
  ('VJA', 'KUR', 700.50),
  ('VJA', 'KDP', 650.40),
  ('VJA', 'HSR', 550.90),
  ('VJA', 'KRI', 500.60),
  ('VJA', 'VLR', 450.75),
  ('VJA', 'RJY', 150.80),
  ('VJA', 'OGL', 250.60),
  ('VJA', 'NLR', 300.75),
  ('VJA', 'CHN', 350.20),
  ('VJA', 'ATP', 450.60)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('KHM', 'VSKP', 450.75),
  ('KHM', 'VJA', 300.25),
  ('KHM', 'HYD', 150.50),
  ('KHM', 'TPT', 300.80),
  ('KHM', 'CTR', 400.30),
  ('KHM', 'KLR', 450.25),
  ('KHM', 'BLR', 500.75),
  ('KHM', 'KUR', 550.40),
  ('KHM', 'KDP', 500.75),
  ('KHM', 'HSR', 400.20),
  ('KHM', 'KRI', 350.90),
  ('KHM', 'VLR', 300.50),
  ('KHM', 'RJY', 450.40),
  ('KHM', 'OGL', 350.60),
  ('KHM', 'NLR', 400.75),
  ('KHM', 'CHN', 450.50),
  ('KHM', 'ATP', 500.60)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('HYD', 'VSKP', 600.25),
  ('HYD', 'VJA', 350.75),
  ('HYD', 'KHM', 150.50),
  ('HYD', 'TPT', 200.30),
  ('HYD', 'CTR', 300.80),
  ('HYD', 'KLR', 350.75),
  ('HYD', 'BLR', 400.50),
  ('HYD', 'KUR', 450.90),
  ('HYD', 'KDP', 400.75),
  ('HYD', 'HSR', 300.20),
  ('HYD', 'KRI', 250.60),
  ('HYD', 'VLR', 200.50),
  ('HYD', 'RJY', 350.60),
  ('HYD', 'OGL', 250.75),
  ('HYD', 'NLR', 300.20),
  ('HYD', 'CHN', 350.50),
  ('HYD', 'ATP', 400.60)
  
  INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('TPT', 'VSKP', 750.30),
  ('TPT', 'VJA', 450.30),
  ('TPT', 'KHM', 300.80),
  ('TPT', 'HYD', 200.30),
  ('TPT', 'CTR', 100.50),
  ('TPT', 'KLR', 150.75),
  ('TPT', 'BLR', 200.90),
  ('TPT', 'KUR', 250.75),
  ('TPT', 'KDP', 200.20),
  ('TPT', 'HSR', 100.60),
  ('TPT', 'KRI', 150.50),
  ('TPT', 'VLR', 200.60),
  ('TPT', 'RJY', 450.60),
  ('TPT', 'OGL', 350.75),
  ('TPT', 'NLR', 400.20),
  ('TPT', 'CHN', 450.50),
  ('TPT', 'ATP', 500.60)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('CTR', 'VSKP', 850.80),
  ('CTR', 'VJA', 550.80),
  ('CTR', 'KHM', 400.30),
  ('CTR', 'HYD', 300.80),
  ('CTR', 'TPT', 100.50),
  ('CTR', 'KLR', 50.75),
  ('CTR', 'BLR', 100.90),
  ('CTR', 'KUR', 150.75),
  ('CTR', 'KDP', 100.20),
  ('CTR', 'HSR', 200.60),
  ('CTR', 'KRI', 250.50),
  ('CTR', 'VLR', 300.60),
  ('CTR', 'RJY', 550.60),
  ('CTR', 'OGL', 450.75),
  ('CTR', 'NLR', 500.20),
  ('CTR', 'CHN', 550.50),
  ('CTR', 'ATP', 600.60)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('KLR', 'VSKP', 900.50),
  ('KLR', 'VJA', 600.50),
  ('KLR', 'KHM', 450.25),
  ('KLR', 'HYD', 350.75),
  ('KLR', 'TPT', 150.75),
  ('KLR', 'CTR', 50.75),
  ('KLR', 'BLR', 50.90),
  ('KLR', 'KUR', 100.75),
  ('KLR', 'KDP', 150.50),
  ('KLR', 'HSR', 250.25),
  ('KLR', 'KRI', 300.10),
  ('KLR', 'VLR', 350.60),
  ('KLR', 'RJY', 600.60),
  ('KLR', 'OGL', 500.75),
  ('KLR', 'NLR', 550.20),
  ('KLR', 'CHN', 600.50),
  ('KLR', 'ATP', 650.60)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('BLR', 'VSKP', 950.75),
  ('BLR', 'VJA', 650.75),
  ('BLR', 'KHM', 500.75),
  ('BLR', 'HYD', 400.50),
  ('BLR', 'TPT', 200.90),
  ('BLR', 'CTR', 100.90),
  ('BLR', 'KLR', 50.90),
  ('BLR', 'KUR', 50.85),
  ('BLR', 'KDP', 100.60),
  ('BLR', 'HSR', 200.35),
  ('BLR', 'KRI', 250.20),
  ('BLR', 'VLR', 300.70),
  ('BLR', 'RJY', 550.70),
  ('BLR', 'OGL', 450.85),
  ('BLR', 'NLR', 500.30),
  ('BLR', 'CHN', 550.60),
  ('BLR', 'ATP', 600.70)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('KUR', 'VSKP', 1000.90),
  ('KUR', 'VJA', 700.90),
  ('KUR', 'KHM', 550.90),
  ('KUR', 'HYD', 450.90),
  ('KUR', 'TPT', 250.75),
  ('KUR', 'CTR', 150.75),
  ('KUR', 'KLR', 100.75),
  ('KUR', 'BLR', 50.85),
  ('KUR', 'KDP', 100.50),
  ('KUR', 'HSR', 200.15),
  ('KUR', 'KRI', 250.10),
  ('KUR', 'VLR', 300.60),
  ('KUR', 'RJY', 550.60),
  ('KUR', 'OGL', 450.75),
  ('KUR', 'NLR', 500.20),
  ('KUR', 'CHN', 550.50),
  ('KUR', 'ATP', 600.60)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('KDP', 'VSKP', 950.30),
  ('KDP', 'VJA', 650.30),
  ('KDP', 'KHM', 500.80),
  ('KDP', 'HYD', 400.30),
  ('KDP', 'TPT', 200.20),
  ('KDP', 'CTR', 100.20),
  ('KDP', 'KLR', 150.50),
  ('KDP', 'BLR', 200.60),
  ('KDP', 'KUR', 100.50),
  ('KDP', 'HSR', 200.20),
  ('KDP', 'KRI', 250.10),
  ('KDP', 'VLR', 300.20),
  ('KDP', 'RJY', 550.30),
  ('KDP', 'OGL', 450.50),
  ('KDP', 'NLR', 500.40),
  ('KDP', 'CHN', 550.30),
  ('KDP', 'ATP', 600.40)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('HSR', 'VSKP', 1050.60),
  ('HSR', 'VJA', 750.60),
  ('HSR', 'KHM', 600.60),
  ('HSR', 'HYD', 500.35),
  ('HSR', 'TPT', 300.25),
  ('HSR', 'CTR', 200.60),
  ('HSR', 'KLR', 250.25),
  ('HSR', 'BLR', 200.35),
  ('HSR', 'KUR', 150.15),
  ('HSR', 'KDP', 200.20),
  ('HSR', 'KRI', 250.10),
  ('HSR', 'VLR', 300.50),
  ('HSR', 'RJY', 550.50),
  ('HSR', 'OGL', 450.75),
  ('HSR', 'NLR', 500.20),
  ('HSR', 'CHN', 550.35),
  ('HSR', 'ATP', 600.40)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('KRI', 'VSKP', 1100.50),
  ('KRI', 'VJA', 800.50),
  ('KRI', 'KHM', 650.50),
  ('KRI', 'HYD', 550.20),
  ('KRI', 'TPT', 350.10),
  ('KRI', 'CTR', 250.20),
  ('KRI', 'KLR', 300.10),
  ('KRI', 'BLR', 250.20),
  ('KRI', 'KUR', 200.10),
  ('KRI', 'KDP', 250.10),
  ('KRI', 'HSR', 250.10),
  ('KRI', 'VLR', 300.40),
  ('KRI', 'RJY', 550.40),
  ('KRI', 'OGL', 450.55),
  ('KRI', 'NLR', 500.10),
  ('KRI', 'CHN', 550.40),
  ('KRI', 'ATP', 600.50)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('RJY', 'VSKP', 1300.50),
  ('RJY', 'VJA', 1000.50),
  ('RJY', 'KHM', 850.50),
  ('RJY', 'HYD', 750.25),
  ('RJY', 'TPT', 550.15),
  ('RJY', 'CTR', 450.50),
  ('RJY', 'KLR', 500.15),
  ('RJY', 'BLR', 450.25),
  ('RJY', 'KUR', 400.15),
  ('RJY', 'KDP', 500.10),
  ('RJY', 'HSR', 550.50),
  ('RJY', 'KRI', 550.40),
  ('RJY', 'VLR', 550.50),
  ('RJY', 'OGL', 350.75),
  ('RJY', 'NLR', 400.20),
  ('RJY', 'CHN', 450.35),
  ('RJY', 'ATP', 500.40)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('OGL', 'VSKP', 1250.55),
  ('OGL', 'VJA', 950.55),
  ('OGL', 'KHM', 800.55),
  ('OGL', 'HYD', 700.30),
  ('OGL', 'TPT', 500.20),
  ('OGL', 'CTR', 400.30),
  ('OGL', 'KLR', 450.20),
  ('OGL', 'BLR', 400.30),
  ('OGL', 'KUR', 350.20),
  ('OGL', 'KDP', 450.15),
  ('OGL', 'HSR', 500.55),
  ('OGL', 'KRI', 450.55),
  ('OGL', 'VLR', 450.75),
  ('OGL', 'RJY', 350.75),
  ('OGL', 'NLR', 250.15),
  ('OGL', 'CHN', 300.50),
  ('OGL', 'ATP', 350.55)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('NLR', 'VSKP', 1300.10),
  ('NLR', 'VJA', 1000.10),
  ('NLR', 'KHM', 850.10),
  ('NLR', 'HYD', 750.20),
  ('NLR', 'TPT', 550.10),
  ('NLR', 'CTR', 450.10),
  ('NLR', 'KLR', 500.20),
  ('NLR', 'BLR', 450.30),
  ('NLR', 'KUR', 400.20),
  ('NLR', 'KDP', 500.15),
  ('NLR', 'HSR', 550.10),
  ('NLR', 'KRI', 550.20),
  ('NLR', 'VLR', 500.10),
  ('NLR', 'RJY', 400.20),
  ('NLR', 'OGL', 250.15),
  ('NLR', 'CHN', 50.10),
  ('NLR', 'ATP', 100.20)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('CHN', 'VSKP', 1350.30),
  ('CHN', 'VJA', 1050.30),
  ('CHN', 'KHM', 900.30),
  ('CHN', 'HYD', 800.45),
  ('CHN', 'TPT', 600.35),
  ('CHN', 'CTR', 500.45),
  ('CHN', 'KLR', 550.35),
  ('CHN', 'BLR', 500.45),
  ('CHN', 'KUR', 450.35),
  ('CHN', 'KDP', 550.30),
  ('CHN', 'HSR', 600.45),
  ('CHN', 'KRI', 600.35),
  ('CHN', 'VLR', 550.35),
  ('CHN', 'RJY', 450.35),
  ('CHN', 'OGL', 300.50),
  ('CHN', 'NLR', 50.10),
  ('CHN', 'ATP', 150.45)

INSERT INTO btrs_stp_distances (source, destination, distance)
VALUES
  ('ATP', 'VSKP', 1450.40),
  ('ATP', 'VJA', 1150.40),
  ('ATP', 'KHM', 1000.40),
  ('ATP', 'HYD', 900.55),
  ('ATP', 'TPT', 700.45),
  ('ATP', 'CTR', 600.55),
  ('ATP', 'KLR', 650.45),
  ('ATP', 'BLR', 600.55),
  ('ATP', 'KUR', 550.45),
  ('ATP', 'KDP', 650.40),
  ('ATP', 'HSR', 700.55),
  ('ATP', 'KRI', 700.45),
  ('ATP', 'VLR', 650.45),
  ('ATP', 'RJY', 550.45),
  ('ATP', 'OGL', 400.55),
  ('ATP', 'NLR', 100.20),
  ('ATP', 'CHN', 150.45)


CREATE TABLE btrs_distance_fares (
  distance_limit FLOAT NOT NULL,
  fare FLOAT NOT NULL
);


INSERT INTO btrs_distance_fares (distance_limit, fare)
VALUES
  (50, 30.00),
  (100, 50.00),
  (150, 70.00),
  (200, 75.00),
  (250, 90.00),
  (300, 100.00),
  (350, 115.00),
  (400, 125.00),
  (450, 140.00),
  (500, 150.00),
  (550, 165.00),
  (600, 175.00),
  (650, 190.00),
  (700, 200.00),
  (750, 215.00),
  (800, 225.00),
  (850, 240.00),
  (900, 250.00),
  (950, 265.00),
  (1000, 275.00),
  (1050, 290.00),
  (1100, 300.00),
  (1150, 315.00),
  (1200, 325.00),
  (1250, 340.00),
  (1300, 350.00),
  (1350, 365.00),
  (1400, 375.00),
  (1450, 390.00),
  (1500, 400.00);

CREATE TABLE btrs_bustypes (
  bsty_id SERIAL PRIMARY KEY,
  bsty_title VARCHAR(50),
  bsty_desc VARCHAR(100),
  bsty_farefactor NUMERIC
);


INSERT INTO btrs_bustypes (bsty_title, bsty_desc, bsty_farefactor)
VALUES
  ('Deluxe', 'Seater, Berth', 2),
  ('Ultra Deluxe', 'Seater, Berth, AC', 5),
  ('Luxury', 'Recliner-Seats, Berth', 3.5),
  ('Super Luxury', 'Recliner-Seats, Berth, AC', 8);


CREATE TABLE btrs_amenities (
  amenity_id SERIAL PRIMARY KEY,
  amenity VARCHAR(50)
);


INSERT INTO btrs_amenities (amenity)
VALUES
  ('Seater'),
  ('Berth'),
  ('AC'),
  ('Recliner-Seats');


CREATE TABLE btrs_types_amenities (
  type_id INT,
  amenity_id INT,
  FOREIGN KEY (type_id) REFERENCES btrs_bustypes (bsty_id),
  FOREIGN KEY (amenity_id) REFERENCES btrs_amenities (amenity_id)
);


INSERT INTO btrs_types_amenities (type_id, amenity_id)
VALUES
  (1, 1), -- Deluxe - Seater
  (1, 2), -- Deluxe - Berth
  (2, 1), -- Ultra Deluxe - Seater
  (2, 2), -- Ultra Deluxe - Berth
  (2, 3), -- Ultra Deluxe - AC
  (3, 4), -- Luxury - Recliner-Seats
  (3, 2), -- Luxury - Berth
  (4, 4), -- Super Luxury - Recliner-Seats
  (4, 2), -- Super Luxury - Berth
  (4, 3); -- Super Luxury - AC


CREATE TABLE btrs_buses (
  bus_id INT PRIMARY KEY,
  regno VARCHAR(10) UNIQUE,
  type_id INT,
  bus_no_seats SMALLINT,
  bus_status CHAR(20),
  FOREIGN KEY (type_id) REFERENCES btrs_bustypes (bsty_id)
);

INSERT INTO btrs_buses (bus_id, regno, type_id, bus_no_seats, bus_status)
VALUES
  (1, 'AP31AA0001', 1, 32, 'Alloted'),
  (2, 'AP31BB0002', 2, 32, 'Not Alloted'),
  (3, 'AP31CC0003', 3, 32, 'Alloted'),
  (4, 'AP31DD0004', 4, 32, 'Not Alloted'),
  (5, 'AP31EE0005', 1, 32, 'Alloted'),
  (6, 'AP31FF0006', 2, 32, 'Not Alloted'),
  (7, 'AP31GG0007', 3, 32, 'Alloted'),
  (8, 'AP31HH0008', 4, 32, 'Not Alloted'),
  (9, 'AP31II0009', 1, 32, 'Alloted'),
  (10, 'AP31JJ0010', 2, 32, 'Not Alloted'),
  (11, 'AP31KK0011', 3, 32, 'Alloted'),
  (12, 'AP31LL0012', 4, 32, 'Not Alloted'),
  (13, 'AP31MM0013', 1, 32, 'Alloted'),
  (14, 'AP31NN0014', 2, 32, 'Not Alloted'),
  (15, 'AP31OO0015', 3, 32, 'Alloted'),
  (16, 'AP31PP0016', 4, 32, 'Not Alloted'),
  (17, 'AP31QQ0017', 1, 32, 'Alloted'),
  (18, 'AP31RR0018', 2, 32, 'Not Alloted'),
  (19, 'AP31SS0019', 3, 32, 'Alloted'),
  (20, 'AP31TT0020', 4, 32, 'Not Alloted');


INSERT INTO btrs_buses (bus_id, regno, type_id, bus_no_seats, bus_status)
VALUES
  (21, 'AP31UU0021', 1, 32, 'Alloted'),
  (22, 'AP31VV0022', 2, 32, 'Not Alloted'),
  (23, 'AP31WW0023', 3, 32, 'Alloted'),
  (24, 'AP31XX0024', 4, 32, 'Not Alloted'),
  (25, 'AP31YY0025', 1, 32, 'Alloted'),
  (26, 'AP31ZZ0026', 2, 32, 'Not Alloted'),
  (27, 'AP31AA0027', 3, 32, 'Alloted'),
  (28, 'AP31BB0028', 4, 32, 'Not Alloted'),
  (29, 'AP31CC0029', 1, 32, 'Alloted'),
  (30, 'AP31DD0030', 2, 32, 'Not Alloted'),
  (31, 'AP31EE0031', 3, 32, 'Alloted'),
  (32, 'AP31FF0032', 4, 32, 'Not Alloted'),
  (33, 'AP31GG0033', 1, 32, 'Alloted'),
  (34, 'AP31HH0034', 2, 32, 'Not Alloted'),
  (35, 'AP31II0035', 3, 32, 'Alloted'),
  (36, 'AP31JJ0036', 4, 32, 'Not Alloted'),
  (37, 'AP31KK0037', 1, 32, 'Alloted'),
  (38, 'AP31LL0038', 2, 32, 'Not Alloted'),
  (39, 'AP31MM0039', 3, 32, 'Alloted'),
  (40, 'AP31NN0040', 4, 32, 'Not Alloted');

INSERT INTO btrs_buses (bus_id, regno, type_id, bus_no_seats, bus_status)
VALUES
  (41, 'AP31OO0041', 1, 32, 'Alloted'),
  (42, 'AP31PP0042', 2, 32, 'Not Alloted'),
  (43, 'AP31QQ0043', 3, 32, 'Alloted'),
  (44, 'AP31RR0044', 4, 32, 'Not Alloted'),
  (45, 'AP31SS0045', 1, 32, 'Alloted'),
  (46, 'AP31TT0046', 2, 32, 'Not Alloted'),
  (47, 'AP31UU0047', 3, 32, 'Alloted'),
  (48, 'AP31VV0048', 4, 32, 'Not Alloted'),
  (49, 'AP31WW0049', 1, 32, 'Alloted'),
  (50, 'AP31XX0050', 2, 32, 'Not Alloted'),
  (51, 'AP31YY0051', 3, 32, 'Alloted'),
  (52, 'AP31ZZ0052', 4, 32, 'Not Alloted'),
  (53, 'AP31AA0053', 1, 32, 'Alloted'),
  (54, 'AP31BB0054', 2, 32, 'Not Alloted'),
  (55, 'AP31CC0055', 3, 32, 'Alloted'),
  (56, 'AP31DD0056', 4, 32, 'Not Alloted'),
  (57, 'AP31EE0057', 1, 32, 'Alloted'),
  (58, 'AP31FF0058', 2, 32, 'Not Alloted'),
  (59, 'AP31GG0059', 3, 32, 'Alloted'),
  (60, 'AP31HH0060', 4, 32, 'Not Alloted');

INSERT INTO btrs_buses (bus_id, regno, type_id, bus_no_seats, bus_status)
VALUES
  (61, 'AP31II0061', 1, 32, 'Not Alloted'),
  (62, 'AP31JJ0062', 2, 32, 'Alloted'),
  (63, 'AP31KK0063', 3, 32, 'Not Alloted'),
  (64, 'AP31LL0064', 4, 32, 'Alloted'),
  (65, 'AP31MM0065', 1, 32, 'Not Alloted'),
  (66, 'AP31NN0066', 2, 32, 'Alloted'),
  (67, 'AP31OO0067', 3, 32, 'Not Alloted'),
  (68, 'AP31PP0068', 4, 32, 'Alloted'),
  (69, 'AP31QQ0069', 1, 32, 'Not Alloted'),
  (70, 'AP31RR0070', 2, 32, 'Alloted'),
  (71, 'AP31SS0071', 3, 32, 'Not Alloted'),
  (72, 'AP31TT0072', 4, 32, 'Alloted'),
  (73, 'AP31UU0073', 1, 32, 'Not Alloted'),
  (74, 'AP31VV0074', 2, 32, 'Alloted'),
  (75, 'AP31WW0075', 3, 32, 'Not Alloted'),
  (76, 'AP31XX0076', 4, 32, 'Alloted'),
  (77, 'AP31YY0077', 1, 32, 'Not Alloted'),
  (78, 'AP31ZZ0078', 2, 32, 'Alloted'),
  (79, 'AP31AA0079', 3, 32, 'Not Alloted'),
  (80, 'AP31BB0080', 4, 32, 'Alloted');

INSERT INTO btrs_buses (bus_id, regno, type_id, bus_no_seats, bus_status)
VALUES
  (81, 'AP31CC0081', 1, 32, 'Not Alloted'),
  (82, 'AP31DD0082', 2, 32, 'Alloted'),
  (83, 'AP31EE0083', 3, 32, 'Not Alloted'),
  (84, 'AP31FF0084', 4, 32, 'Alloted'),
  (85, 'AP31GG0085', 1, 32, 'Not Alloted'),
  (86, 'AP31HH0086', 2, 32, 'Alloted'),
  (87, 'AP31II0087', 3, 32, 'Not Alloted'),
  (88, 'AP31JJ0088', 4, 32, 'Alloted'),
  (89, 'AP31KK0089', 1, 32, 'Not Alloted'),
  (90, 'AP31LL0090', 2, 32, 'Alloted'),
  (91, 'AP31MM0091', 3, 32, 'Not Alloted'),
  (92, 'AP31NN0092', 4, 32, 'Alloted'),
  (93, 'AP31OO0093', 1, 32, 'Not Alloted'),
  (94, 'AP31PP0094', 2, 32, 'Alloted'),
  (95, 'AP31QQ0095', 3, 32, 'Not Alloted'),
  (96, 'AP31RR0096', 4, 32, 'Alloted'),
  (97, 'AP31SS0097', 1, 32, 'Not Alloted'),
  (98, 'AP31TT0098', 2, 32, 'Alloted'),
  (99, 'AP31UU0099', 3, 32, 'Not Alloted'),
  (100, 'AP31VV0100', 4, 32, 'Alloted');

select * from btrs_bustypes

CREATE TABLE btrs_services (
  service_id SERIAL PRIMARY KEY,
  source CHAR(4) REFERENCES btrs_stops (stop_id),
  destination CHAR(4) REFERENCES btrs_stops (stop_id),
  departure TIME,
  arrival TIME,
  bus_type INT REFERENCES btrs_bustypes (bsty_id),
  inter_stops SMALLINT
);


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1001, 'VSKP', 'HYD', '06:00', '18:00', 1, 3),
  (1002, 'VSKP', 'HYD', '12:00', '00:00', 2, 3),
  (1003, 'VSKP', 'HYD', '18:00', '06:00', 3, 3),
  (1004, 'VSKP', 'HYD', '00:00', '12:00', 4, 3);

INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1005, 'HYD', 'VSKP', '06:00', '18:00', 1, 3),
  (1006, 'HYD', 'VSKP', '12:00', '00:00', 2, 3),
  (1007, 'HYD', 'VSKP', '18:00', '06:00', 3, 3),
  (1008, 'HYD', 'VSKP', '00:00', '12:00', 4, 3);
 
CREATE TABLE btrs_service_stops (
  service_id int,
  stop_id char(4),
  stop_index smallint,
  stop_time time,
  FOREIGN KEY (service_id) REFERENCES btrs_services (service_id),
  FOREIGN KEY (stop_id) REFERENCES btrs_stops (stop_id)
);

INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1001, 'VSKP', 0, '06:00'),
  (1001, 'VJA', 1, '12:00'),
  (1001, 'KHM', 2, '15:00'),
  (1001, 'HYD', 3, '18:00'),
  
  (1002, 'VSKP', 0, '12:00'),
  (1002, 'VJA', 1, '18:00'),
  (1002, 'KHM', 2, '21:00'),
  (1002, 'HYD', 3, '00:00'),
  
  (1003, 'VSKP', 0, '18:00'),
  (1003, 'VJA', 1, '00:00'),
  (1003, 'KHM', 2, '03:00'),
  (1003, 'HYD', 3, '06:00'),
  
  (1004, 'VSKP', 0, '00:00'),
  (1004, 'VJA', 1, '06:00'),
  (1004, 'KHM', 2, '09:00'),
  (1004, 'HYD', 3, '12:00');


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1005, 'HYD', 0, '06:00'),
  (1005, 'KHM', 1, '09:00'),
  (1005, 'VJA', 2, '12:00'),
  (1005, 'VSKP', 3, '18:00'),

  (1006, 'HYD', 0, '12:00'),
  (1006, 'KHM', 1, '15:00'),
  (1006, 'VJA', 2, '18:00'),
  (1006, 'VSKP', 3, '00:00'),

  (1007, 'HYD', 0, '18:00'),
  (1007, 'KHM', 1, '21:00'),
  (1007, 'VJA', 2, '00:00'),
  (1007, 'VSKP', 3, '06:00'),

  (1008, 'HYD', 0, '00:00'),
  (1008, 'KHM', 1, '03:00'),
  (1008, 'VJA', 2, '06:00'),
  (1008, 'VSKP', 3, '12:00');


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1009, 'TPT', 'BLR', '06:00', '11:30', 1, 2),
  (1010, 'TPT', 'BLR', '12:00', '17:30', 2, 2),
  (1011, 'TPT', 'BLR', '18:00', '23:30', 3, 2),
  (1012, 'TPT', 'BLR', '00:00', '05:30', 4, 2);


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1013, 'BLR', 'TPT', '06:00', '11:30', 1, 2),
  (1014, 'BLR', 'TPT', '12:00', '17:30', 2, 2),
  (1015, 'BLR', 'TPT', '18:00', '23:30', 3, 2),
  (1016, 'BLR', 'TPT', '00:00', '05:30', 4, 2);


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1009, 'TPT', 0, '06:00'),
  (1009, 'CTR', 1, '07:10'),
  (1009, 'KLR', 2, '09:50'),
  (1009, 'BLR', 3, '11:30'),
  (1010, 'TPT', 0, '12:00'),
  (1010, 'CTR', 1, '13:10'),
  (1010, 'KLR', 2, '15:50'),
  (1010, 'BLR', 3, '17:30'),
  (1011, 'TPT', 0, '18:00'),
  (1011, 'CTR', 1, '19:10'),
  (1011, 'KLR', 2, '21:50'),
  (1011, 'BLR', 3, '23:30'),
  (1012, 'TPT', 0, '00:00'),
  (1012, 'CTR', 1, '01:10'),
  (1012, 'KLR', 2, '03:50'),
  (1012, 'BLR', 3, '05:30');


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1013, 'BLR', 0, '06:00'),
  (1013, 'KLR', 1, '08:30'),
  (1013, 'CTR', 2, '10:40'),
  (1013, 'TPT', 3, '11:30'),
  (1014, 'BLR', 0, '12:00'),
  (1014, 'KLR', 1, '14:30'),
  (1014, 'CTR', 2, '16:40'),
  (1014, 'TPT', 3, '17:30'),
  (1015, 'BLR', 0, '18:00'),
  (1015, 'KLR', 1, '20:30'),
  (1015, 'CTR', 2, '22:40'),
  (1015, 'TPT', 3, '23:30'),
  (1016, 'BLR', 0, '00:00'),
  (1016, 'KLR', 1, '02:30'),
  (1016, 'CTR', 2, '04:40'),
  (1016, 'TPT', 3, '05:30');


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1017, 'HYD', 'TPT', '06:00', '17:00', 1, 2),
  (1018, 'HYD', 'TPT', '12:00', '23:00', 2, 2),
  (1019, 'HYD', 'TPT', '18:00', '05:00', 3, 2),
  (1020, 'HYD', 'TPT', '00:00', '11:00', 4, 2);


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1021, 'TPT', 'HYD', '06:00', '17:00', 1, 2),
  (1022, 'TPT', 'HYD', '12:00', '23:00', 2, 2),
  (1023, 'TPT', 'HYD', '18:00', '05:00', 3, 2),
  (1024, 'TPT', 'HYD', '00:00', '11:00', 4, 2);


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1017, 'HYD', 0, '06:00'),
  (1017, 'KUR', 1, '10:00'),
  (1017, 'KDP', 2, '13:00'),
  (1017, 'TPT', 3, '17:00'),
  (1018, 'HYD', 0, '12:00'),
  (1018, 'KUR', 1, '16:00'),
  (1018, 'KDP', 2, '19:00'),
  (1018, 'TPT', 3, '23:00'),
  (1019, 'HYD', 0, '18:00'),
  (1019, 'KUR', 1, '22:00'),
  (1019, 'KDP', 2, '01:00'),
  (1019, 'TPT', 3, '05:00'),
  (1020, 'HYD', 0, '00:00'),
  (1020, 'KUR', 1, '04:00'),
  (1020, 'KDP', 2, '07:00'),
  (1020, 'TPT', 3, '11:00');


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1021, 'TPT', 0, '06:00'),
  (1021, 'KDP', 1, '10:00'),
  (1021, 'KUR', 2, '13:00'),
  (1021, 'HYD', 3, '17:00'),
  (1022, 'TPT', 0, '12:00'),
  (1022, 'KDP', 1, '16:00'),
  (1022, 'KUR', 2, '19:00'),
  (1022, 'HYD', 3, '23:00'),
  (1023, 'TPT', 0, '18:00'),
  (1023, 'KDP', 1, '22:00'),
  (1023, 'KUR', 2, '01:00'),
  (1023, 'HYD', 3, '05:00'),
  (1024, 'TPT', 0, '00:00'),
  (1024, 'KDP', 1, '04:00'),
  (1024, 'KUR', 2, '07:00'),
  (1024, 'HYD', 3, '11:00');


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1025, 'CHN', 'BLR', '06:00', '12:35', 1, 3),
  (1026, 'CHN', 'BLR', '12:00', '18:35', 2, 3),
  (1027, 'CHN', 'BLR', '18:00', '00:35', 3, 3),
  (1028, 'CHN', 'BLR', '00:00', '06:35', 4, 3);


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1025, 'CHN', 0, '06:00'),
  (1025, 'VLR', 1, '07:30'),
  (1025, 'KRI', 2, '08:40'),
  (1025, 'HSR', 3, '09:30'),
  (1025, 'BLR', 4, '12:35'),
  
  (1026, 'CHN', 0, '12:00'),
  (1026, 'VLR', 1, '13:30'),
  (1026, 'KRI', 2, '14:40'),
  (1026, 'HSR', 3, '15:30'),
  (1026, 'BLR', 4, '18:35'),
  
  (1027, 'CHN', 0, '18:00'),
  (1027, 'VLR', 1, '19:30'),
  (1027, 'KRI', 2, '20:40'),
  (1027, 'HSR', 3, '21:30'),
  (1027, 'BLR', 4, '00:35'),
  
  (1028, 'CHN', 0, '00:00'),
  (1028, 'VLR', 1, '01:30'),
  (1028, 'KRI', 2, '02:40'),
  (1028, 'HSR', 3, '03:30'),
  (1028, 'BLR', 4, '06:35');


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1029, 'BLR', 'CHN', '06:00', '12:35', 1, 3),
  (1030, 'BLR', 'CHN', '12:00', '18:35', 2, 3),
  (1031, 'BLR', 'CHN', '18:00', '00:35', 3, 3),
  (1032, 'BLR', 'CHN', '00:00', '06:35', 4, 3);

INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1029, 'BLR', 0, '06:00'),
  (1029, 'HSR', 1, '08:00'),
  (1029, 'KRI', 2, '08:50'),
  (1029, 'VLR', 3, '10:00'),
  (1029, 'CHN', 4, '12:35'),
  (1030, 'BLR', 0, '12:00'),
  (1030, 'HSR', 1, '14:00'),
  (1030, 'KRI', 2, '14:50'),
  (1030, 'VLR', 3, '16:00'),
  (1030, 'CHN', 4, '18:35'),
  (1031, 'BLR', 0, '18:00'),
  (1031, 'HSR', 1, '20:00'),
  (1031, 'KRI', 2, '20:50'),
  (1031, 'VLR', 3, '22:00'),
  (1031, 'CHN', 4, '00:35'),
  (1032, 'BLR', 0, '00:00'),
  (1032, 'HSR', 1, '02:00'),
  (1032, 'KRI', 2, '02:50'),
  (1032, 'VLR', 3, '04:00'),
  (1032, 'CHN', 4, '06:35');

select * from btrs_services


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1033, 'VSKP', 'CHN', '17:00', '08:30', 1, 4),
  (1034, 'VSKP', 'CHN', '17:30', '09:00', 2, 4),
  (1035, 'VSKP', 'CHN', '18:00', '10:00', 3, 4),
  (1036, 'VSKP', 'CHN', '19:00', '11:00', 4, 4);

INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1033, 'VSKP', 0, '17:00'),
  (1033, 'VJA', 1, '23:30'),
  (1033, 'OGL', 2, '02:00'),
  (1033, 'NLR', 3, '04:30'),
  (1033, 'CHN', 4, '08:30'),
  (1034, 'VSKP', 0, '17:30'),
  (1034, 'VJA', 1, '00:00'),
  (1034, 'OGL', 2, '02:30'),
  (1034, 'NLR', 3, '05:00'),
  (1034, 'CHN', 4, '09:00'),
  (1035, 'VSKP', 0, '18:00'),
  (1035, 'VJA', 1, '00:30'),
  (1035, 'OGL', 2, '03:00'),
  (1035, 'NLR', 3, '05:30'),
  (1035, 'CHN', 4, '10:00'),
  (1036, 'VSKP', 0, '19:00'),
  (1036, 'VJA', 1, '02:00'),
  (1036, 'OGL', 2, '04:30'),
  (1036, 'NLR', 3, '07:00'),
  (1036, 'CHN', 4, '11:00');

INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1037, 'CHN', 'VSKP', '06:00', '21:30', 1, 3),
  (1038, 'CHN', 'VSKP', '10:30', '02:00', 2, 3),
  (1039, 'CHN', 'VSKP', '12:00', '03:30', 3, 3),
  (1040, 'CHN', 'VSKP', '17:00', '09:00', 4, 3);


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1037, 'CHN', 0, '06:00'),
  (1037, 'NLR', 1, '10:00'),
  (1037, 'OGL', 2, '13:30'),
  (1037, 'VJA', 3, '15:30'),
  (1037, 'VSKP', 4, '21:30'),
  (1038, 'CHN', 0, '10:30'),
  (1038, 'NLR', 1, '14:30'),
  (1038, 'OGL', 2, '17:00'),
  (1038, 'VJA', 3, '19:30'),
  (1038, 'VSKP', 4, '02:00'),
  (1039, 'CHN', 0, '12:00'),
  (1039, 'NLR', 1, '16:00'),
  (1039, 'OGL', 2, '18:30'),
  (1039, 'VJA', 3, '21:00'),
  (1039, 'VSKP', 4, '03:30'),
  (1040, 'CHN', 0, '17:00'),
  (1040, 'NLR', 1, '21:00'),
  (1040, 'OGL', 2, '23:30'),
  (1040, 'VJA', 3, '02:00'),
  (1040, 'VSKP', 4, '09:00');


INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1041, 'HYD', 'BLR', '06:00', '16:00', 1, 2),
  (1042, 'HYD', 'BLR', '12:00', '22:00', 2, 2),
  (1043, 'HYD', 'BLR', '18:00', '04:00', 3, 2),
  (1044, 'HYD', 'BLR', '00:00', '10:00', 4, 2);


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1041, 'HYD', 0, '06:00'),
  (1041, 'KUR', 1, '10:00'),
  (1041, 'ATP', 2, '12:00'),
  (1041, 'BLR', 3, '16:00'),
  (1042, 'HYD', 0, '12:00'),
  (1042, 'KUR', 1, '16:00'),
  (1042, 'ATP', 2, '18:00'),
  (1042, 'BLR', 3, '22:00'),
  (1043, 'HYD', 0, '18:00'),
  (1043, 'KUR', 1, '22:00'),
  (1043, 'ATP', 2, '00:00'),
  (1043, 'BLR', 3, '04:00'),
  (1044, 'HYD', 0, '00:00'),
  (1044, 'KUR', 1, '04:00'),
  (1044, 'ATP', 2, '06:00'),
  (1044, 'BLR', 3, '10:00');

INSERT INTO btrs_services (service_id, source, destination, departure, arrival, bus_type, inter_stops)
VALUES
  (1045, 'BLR', 'HYD', '06:00', '16:00', 1, 2),
  (1046, 'BLR', 'HYD', '12:00', '22:00', 2, 2),
  (1047, 'BLR', 'HYD', '18:00', '04:00', 3, 2),
  (1048, 'BLR', 'HYD', '00:00', '10:00', 4, 2);


INSERT INTO btrs_service_stops (service_id, stop_id, stop_index, stop_time)
VALUES
  (1045, 'BLR', 0, '06:00'),
  (1045, 'ATP', 1, '10:00'),
  (1045, 'KUR', 2, '12:00'),
  (1045, 'HYD', 3, '16:00'),
  (1046, 'BLR', 0, '12:00'),
  (1046, 'ATP', 1, '16:00'),
  (1046, 'KUR', 2, '18:00'),
  (1046, 'HYD', 3, '22:00'),
  (1047, 'BLR', 0, '18:00'),
  (1047, 'ATP', 1, '22:00'),
  (1047, 'KUR', 2, '00:00'),
  (1047, 'HYD', 3, '04:00'),
  (1048, 'BLR', 0, '00:00'),
  (1048, 'ATP', 1, '04:00'),
  (1048, 'KUR', 2, '06:00'),
  (1048, 'HYD', 3, '10:00');


CREATE TABLE btrs_schedule (
  schedule_id serial PRIMARY KEY,
  service_id INT,
  trip_date DATE,
  seats_booked INT,
  FOREIGN KEY (service_id) REFERENCES btrs_services(service_id),
  CONSTRAINT unique_service_date UNIQUE (service_id, trip_date)
);



select * from btrs_services

INSERT INTO btrs_schedule (schedule_id, service_id, trip_date, seats_booked)
VALUES
(1, 1001, '2023-06-05', 32),
(2, 1002, '2023-06-05', 32),
(3, 1003, '2023-06-05', 32),
(4, 1004, '2023-06-05', 32),
(5, 1005, '2023-06-05', 32),
(6, 1006, '2023-06-05', 32),
(7, 1007, '2023-06-05', 32),
(8, 1008, '2023-06-05', 32),
(9, 1009, '2023-06-05', 32),
(10, 1010, '2023-06-05', 32),
(11, 1011, '2023-06-05', 32),
(12, 1012, '2023-06-05', 32),
(13, 1013, '2023-06-05', 32),
(14, 1014, '2023-06-05', 32),
(15, 1015, '2023-06-05', 32),
(16, 1016, '2023-06-05', 32),
(17, 1017, '2023-06-05', 32),
(18, 1018, '2023-06-05', 32),
(19, 1019, '2023-06-05', 32),
(20, 1020, '2023-06-05', 32),
(21, 1021, '2023-06-05', 32),
(22, 1022, '2023-06-05', 32),
(23, 1023, '2023-06-05', 32),
(24, 1024, '2023-06-05', 32),
(25, 1025, '2023-06-05', 32),
(26, 1026, '2023-06-05', 32),
(27, 1027, '2023-06-05', 32),
(28, 1028, '2023-06-05', 32),
(29, 1029, '2023-06-05', 32),
(30, 1030, '2023-06-05', 32),
(31, 1031, '2023-06-05', 32),
(32, 1032, '2023-06-05', 32),
(33, 1033, '2023-06-05', 32),
(34, 1034, '2023-06-05', 32),
(35, 1035, '2023-06-05', 32),
(36, 1036, '2023-06-05', 32),
(37, 1037, '2023-06-05', 32),
(38, 1038, '2023-06-05', 32),
(39, 1039, '2023-06-05', 32),
(40, 1040, '2023-06-05', 32),
(41, 1041, '2023-06-05', 32),
(42, 1042, '2023-06-05', 32),
(43, 1043, '2023-06-05', 32),
(44, 1044, '2023-06-05', 32),
(45, 1045, '2023-06-05', 32),
(46, 1046, '2023-06-05', 32),
(47, 1047, '2023-06-05', 32),
(48, 1048, '2023-06-05', 32);


CREATE OR REPLACE PROCEDURE insert_btrs_schedule(date_param DATE)
AS $$
BEGIN
  INSERT INTO btrs_schedule (service_id, trip_date, seats_booked)
  VALUES
  (1001, date_param, 32),
  (1002, date_param, 32),
  (1003, date_param, 32),
  (1004, date_param, 32),
  (1005, date_param, 32),
  (1006, date_param, 32),
  (1007, date_param, 32),
  (1008, date_param, 32),
  (1009, date_param, 32),
  (1010, date_param, 32),
  (1011, date_param, 32),
  (1012, date_param, 32),
  (1013, date_param, 32),
  (1014, date_param, 32),
  (1015, date_param, 32),
  (1016, date_param, 32),
  (1017, date_param, 32),
  (1018, date_param, 32),
  (1019, date_param, 32),
  (1020, date_param, 32),
  (1021, date_param, 32),
  (1022, date_param, 32),
  (1023, date_param, 32),
  (1024, date_param, 32),
  (1025, date_param, 32),
  (1026, date_param, 32),
  (1027, date_param, 32),
  (1028, date_param, 32),
  (1029, date_param, 32),
  (1030, date_param, 32),
  (1031, date_param, 32),
  (1032, date_param, 32),
  (1033, date_param, 32),
  (1034, date_param, 32),
  (1035, date_param, 32),
  (1036, date_param, 32),
  (1037, date_param, 32),
  (1038, date_param, 32),
  (1039, date_param, 32),
  (1040, date_param, 32),
  (1041, date_param, 32),
  (1042, date_param, 32),
  (1043, date_param, 32),
  (1044, date_param, 32),
  (1045, date_param, 32),
  (1046, date_param, 32),
  (1047, date_param, 32),
  (1048, date_param, 32);
END;
$$ LANGUAGE plpgsql;

select * from btrs_schedule

truncate table btrs_schedule

CREATE OR REPLACE PROCEDURE insert_btrs_schedule_loop_30(start_date DATE)
AS $$
DECLARE
  i INT := 1;
  curr_date DATE := start_date;
  s_id INT;
BEGIN
  SELECT MAX(schedule_id) INTO s_id FROM btrs_schedule;
  
  WHILE i <= 30 LOOP
    INSERT INTO btrs_schedule (schedule_id, service_id, trip_date, seats_booked)
    VALUES
      (s_id + 1, 1001, curr_date, 32),
      (s_id + 2, 1002, curr_date, 32),
      (s_id + 3, 1003, curr_date, 32),
      (s_id + 4, 1004, curr_date, 32),
      (s_id + 5, 1005, curr_date, 32),
      (s_id + 6, 1006, curr_date, 32),
      (s_id + 7, 1007, curr_date, 32),
      (s_id + 8, 1008, curr_date, 32),
      (s_id + 9, 1009, curr_date, 32),
      (s_id + 10, 1010, curr_date, 32),
      (s_id + 11, 1011, curr_date, 32),
      (s_id + 12, 1012, curr_date, 32),
      (s_id + 13, 1013, curr_date, 32),
      (s_id + 14, 1014, curr_date, 32),
      (s_id + 15, 1015, curr_date, 32),
      (s_id + 16, 1016, curr_date, 32),
      (s_id + 17, 1017, curr_date, 32),
      (s_id + 18, 1018, curr_date, 32),
      (s_id + 19, 1019, curr_date, 32),
      (s_id + 20, 1020, curr_date, 32),
      (s_id + 21, 1021, curr_date, 32),
      (s_id + 22, 1022, curr_date, 32),
      (s_id + 23, 1023, curr_date, 32),
      (s_id + 24, 1024, curr_date, 32),
      (s_id + 25, 1025, curr_date, 32),
      (s_id + 26, 1026, curr_date, 32),
      (s_id + 27, 1027, curr_date, 32),
      (s_id + 28, 1028, curr_date, 32),
      (s_id + 29, 1029, curr_date, 32),
      (s_id + 30, 1030, curr_date, 32),
      (s_id + 31, 1031, curr_date, 32),
      (s_id + 32, 1032, curr_date, 32),
      (s_id + 33, 1033, curr_date, 32),
      (s_id + 34, 1034, curr_date, 32),
      (s_id + 35, 1035, curr_date, 32),
      (s_id + 36, 1036, curr_date, 32),
      (s_id + 37, 1037, curr_date, 32),
      (s_id + 38, 1038, curr_date, 32),
      (s_id + 39, 1039, curr_date, 32),
      (s_id + 40, 1040, curr_date, 32),
      (s_id + 41, 1041, curr_date, 32),
      (s_id + 42, 1042, curr_date, 32),
      (s_id + 43, 1043, curr_date, 32),
      (s_id + 44, 1044, curr_date, 32),
      (s_id + 45, 1045, curr_date, 32),
      (s_id + 46, 1046, curr_date, 32),
      (s_id + 47, 1047, curr_date, 32),
      (s_id + 48, 1048, curr_date, 32);

    curr_date := curr_date + INTERVAL '1' DAY;
    i := i + 1;
    s_id := s_id + 48;
  END LOOP;
END;
$$ LANGUAGE plpgsql;


select * from btrs_schedule

CALL insert_btrs_schedule_loop_30('2023-06-06');





CREATE TABLE btrs_users (
  user_id SERIAL PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  full_name VARCHAR(255) NOT NULL,
  age INTEGER,
  gender VARCHAR(10),
  cashback DECIMAL(10, 2),
  wallet DECIMAL(10, 2)
);



select * from btrs_users


select * from btrs_services



CREATE TABLE btrs_routes (
    route_id serial PRIMARY KEY,
    source varchar(4) REFERENCES btrs_stops(stop_id),
    destination varchar(4) REFERENCES btrs_stops(stop_id)
);



insert into btrs_routes values(911,'VSKP','HYD')
insert into btrs_routes values(912,'HYD','VSKP')

insert into btrs_routes values(921,'TPT','BLR');
insert into btrs_routes values(922,'BLR','TPT');

insert into btrs_routes values(931,'HYD','TPT');
insert into btrs_routes values(932,'TPT','HYD');

insert into btrs_routes values(941,'BLR','CHN');
insert into btrs_routes values(942,'CHN','BLR');

insert into btrs_routes values(951,'VSKP','CHN');
insert into btrs_routes values(952,'CHN','VSKP');

insert into btrs_routes values(961,'HYD','BLR');
insert into btrs_routes values(962,'BLR','HYD');


select * from btrs_routes

ALTER TABLE btrs_services RENAME TO btrs_trips;

ALTER TABLE btrs_trips RENAME COLUMN service_id TO trip_id;

ALTER TABLE btrs_schedule RENAME TO btrs_services;

ALTER TABLE btrs_services RENAME COLUMN service_id TO trip_id;

ALTER TABLE btrs_services RENAME COLUMN schedule_id TO service_id;

ALTER TABLE btrs_trips
ADD COLUMN route_id integer REFERENCES btrs_routes(route_id);


update btrs_trips set route_id=911 where source='VSKP' and destination='HYD'
update btrs_trips set route_id=912 where source='HYD' and destination='VSKP'

update btrs_trips set route_id=921 where source='TPT' and destination='BLR';
update btrs_trips set route_id=922 where source='BLR' and destination='TPT';

update btrs_trips set route_id=931 where source='HYD' and destination='TPT';
update btrs_trips set route_id=932 where source='TPT' and destination='HYD';

update btrs_trips set route_id=941 where source='BLR' and destination='CHN';
update btrs_trips set route_id=942 where source='CHN' and destination='BLR';

update btrs_trips set route_id=951 where source='VSKP' and destination='CHN';
update btrs_trips set route_id=952 where source='CHN' and destination='VSKP';

update btrs_trips set route_id=961 where source='HYD' and destination='BLR';
update btrs_trips set route_id=962 where source='BLR' and destination='HYD';



select * from btrs_trips

select * from btrs_services


SELECT COUNT(*) FROM Service


select * from btrs_trip_stops


alter table btrs_service_stops  RENAME COLUMN service_id TO trip_id;

alter table btrs_service_stops  RENAME to btrs_trip_stops;


SELECT conname, contype, conrelid::regclass AS table_name, conkey, confrelid::regclass AS referenced_table_name, confkey
FROM pg_constraint
WHERE conrelid = 'btrs_services'::regclass;

select * from btrs_bustypes

select t2.service_id, t4.stop_name as source, t5.stop_name as destination,departure,arrival,t2.trip_date, bus_type,t3.route_id,t2.collection,seats_available,(32-seats_available) as seats_booked, t6.bsty_title, t6.bsty_desc from

(select * from btrs_trips) t1, 
(select * from btrs_services where service_id=1)t2,
(select * from btrs_routes)t3,
btrs_stops t4, btrs_stops t5,
btrs_bustypes t6
where t1.trip_id=t2.trip_id and t1.route_id=t3.route_id and t4.stop_id=t3.source and t5.stop_id=t3.destination and t1.bus_type=t6.bsty_id



select * from btrs_routes


select * from btrs_stops where stop_id in(

select distinct t3.stop_id,t3.stop_name from
(select * from btrs_trips where route_id=912)t1,
(select * from btrs_trip_stops order by stop_index)t2,btrs_stops t3
where t1.trip_id=t2.trip_id and t1.source<>t2.stop_id and t1.destination<>t2.stop_id and t2.stop_id=t3.stop_id


    
    
    
SELECT (t6.fare*bsty_farefactor) as seat_fare,((t6.fare*bsty_farefactor)+((t6.fare*bsty_farefactor)/2)) as seat_fare,t1.service_id, t1.trip_id, t2.source, t2.destination, t2.departure, t2.arrival, t1.trip_date, t1.seats_available, t4.bsty_title, t4.bsty_desc
FROM btrs_services t1,
    (SELECT ts1.trip_id AS trip_id, ts1.stop_id AS source, ts2.stop_id AS destination, ts1.stop_time AS departure, ts2.stop_time AS arrival
    FROM btrs_trip_stops ts1, btrs_trip_stops ts2
    WHERE ts1.trip_id = ts2.trip_id AND ts1.stop_id = 'VSKP' AND ts2.stop_id = 'HYD' AND ts1.stop_index < ts2.stop_index) t2,
    btrs_trips t3, btrs_bustypes t4,
    
    (select * from btrs_distance_fares where distance_limit>(select distance from btrs_stp_distances where source='VSKP' and destination='HYD') limit 1)t6
WHERE (t1.trip_id = t2.trip_id AND t1.trip_id = t3.trip_id AND t1.trip_date = '2023-06-16' AND t3.bus_type = t4.bsty_id AND t1.seats_available > 0 AND t1.trip_date <> now()::date AND t4.bsty_id = 1)
    OR
    (t1.trip_id = t2.trip_id AND t1.trip_id = t3.trip_id AND t1.trip_date = '2023-06-16' AND t3.bus_type = t4.bsty_id AND t1.seats_available > 0 AND t1.trip_date = now()::date AND t2.departure > now()::time AND t4.bsty_id = 1);

    
    
    
    
SELECT (t6.fare*bsty_farefactor) as seat_fare,((t6.fare*bsty_farefactor)+((t6.fare*bsty_farefactor)/2)) as seat_fare,t1.service_id, t1.trip_id, t2.source, t2.destination, t2.departure, t2.arrival, t1.trip_date, t1.seats_available, t4.bsty_title, t4.bsty_desc
FROM btrs_services t1,
(SELECT ts1.trip_id AS trip_id, ts1.stop_id AS source, ts2.stop_id AS destination, ts1.stop_time AS departure, ts2.stop_time AS arrival
FROM btrs_trip_stops ts1, btrs_trip_stops ts2
WHERE ts1.trip_id = ts2.trip_id AND ts1.stop_id = ? AND ts2.stop_id = ? AND ts1.stop_index < ts2.stop_index) t2,
btrs_trips t3, btrs_bustypes t4,
(select * from btrs_distance_fares where distance_limit>(select distance from btrs_stp_distances where source=? and destination=?) limit 1)t6
WHERE (t1.trip_id = t2.trip_id AND t1.trip_id = t3.trip_id AND t1.trip_date = ? AND t3.bus_type = t4.bsty_id AND t1.seats_available > 0 AND t1.trip_date <> now()::date AND t4.bsty_id = ?)
OR
(t1.trip_id = t2.trip_id AND t1.trip_id = t3.trip_id AND t1.trip_date = ? AND t3.bus_type = t4.bsty_id AND t1.seats_available > 0 AND t1.trip_date = now()::date AND t2.departure > now()::time AND t4.bsty_id = ?);


    
    ? - vskp
    ? - hyd
    ? - vskp
    ? - hyd
    ? - date
    ? - type
    ? - date
	? - type
    
    
select * from btrs_bustypes
select * from btrs_stp_distances where source='VSKP' and destination='HYD'
select * from btrs_distance_fares where distance_limit>(select distance from btrs_stp_distances where source='VSKP' and destination='HYD') limit 1
    
    
    
    
    
    
    
    
    
    
    
select  (t5.fare*bsty_farefactor) as seat_fare,((t5.fare*bsty_farefactor)+((t5.fare*bsty_farefactor)/2)) as berth_fare,t1.service_id, t1.trip_id, t2.source, t2.destination , t2.depature , t2.arrival,t1.trip_date,
t1.seats_available,t4.bsty_title, t4.bsty_desc from btrs_services t1,
(select ts1.trip_id as trip_id ,ts1.stop_id as source , ts2.stop_id as destination , ts1.stop_time as Depature ,
ts2.stop_time as arrival from btrs_trip_stops ts1, btrs_trip_stops ts2 
where ts1.trip_id=ts2.trip_id and ts1.stop_id='VSKP' and ts2.stop_id='HYD' and ts1.stop_index<ts2.stop_index ) t2,
btrs_trips t3, btrs_bustypes t4,
(select * from btrs_distance_fares where distance_limit>(select distance from btrs_stp_distances where source='VSKP' and destination='HYD') limit 1)t5
where (t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = '2023-06-19' 
and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date <> now()::date and t4.bsty_id=1)
or (t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = '2023-06-19'
and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date = now()::date  and t2.depature>now()  :: time and t4.bsty_id=1)
    
    
    ?-vskp
    ?-hyd
    ?-vskp
    ?-hyd
    ?-date
    ?-type
    ?-date
    ?type
    
    
    
select  (t5.fare*bsty_farefactor) as seat_fare,((t5.fare*bsty_farefactor)+((t5.fare*bsty_farefactor)/2)) as berth_fare,t1.service_id, t1.trip_id, t2.source, t2.destination , t2.depature , t2.arrival,t1.trip_date,
t1.seats_available,t4.bsty_title, t4.bsty_desc from btrs_services t1,
(select ts1.trip_id as trip_id ,ts1.stop_id as source , ts2.stop_id as destination , ts1.stop_time as Depature ,
ts2.stop_time as arrival from btrs_trip_stops ts1, btrs_trip_stops ts2 
where ts1.trip_id=ts2.trip_id and ts1.stop_id=? and ts2.stop_id=? and ts1.stop_index<ts2.stop_index ) t2,
btrs_trips t3, btrs_bustypes t4,
(select * from btrs_distance_fares where distance_limit>(select distance from btrs_stp_distances where source=? and destination=?) limit 1)t5
where (t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ? 
and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date <> now()::date and t4.bsty_id=?)
or (t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ?
and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date = now()::date  and t2.depature>now()  :: time and t4.bsty_id=?)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
select  (t5.fare*bsty_farefactor) as seat_fare,((t5.fare*bsty_farefactor)+((t5.fare*bsty_farefactor)/2)) as berth_fare,t1.service_id, t1.trip_id, t2.source, t2.destination , t2.depature , t2.arrival,t1.trip_date,
t1.seats_available,t4.bsty_title, t4.bsty_desc from btrs_services t1,
(select ts1.trip_id as trip_id ,ts1.stop_id as source , ts2.stop_id as destination , ts1.stop_time as Depature ,
ts2.stop_time as arrival from btrs_trip_stops ts1, btrs_trip_stops ts2
where ts1.trip_id=ts2.trip_id and ts1.stop_id=? and ts2.stop_id=? and ts1.stop_index<ts2.stop_index ) t2,
btrs_trips t3, btrs_bustypes t4,
(select * from btrs_distance_fares where distance_limit>(select distance from btrs_stp_distances where source=? and destination=?) limit 1)t5
where (t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ?
and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date <> now()::date ) or
(t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ?
and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date = now()::date  and t2.depature>now()  :: time)
    
    
    select * from btrs_users
    
select * from btrs_bus_seats
    
select * from btrs_tickets
    
    
    CREATE TABLE btrs_seat_book (
  service_id INTEGER,
  seat_id INTEGER,
  status VARCHAR(20),
  gender VARCHAR(10),
  FOREIGN KEY (service_id) REFERENCES btrs_services(service_id),
  FOREIGN KEY (seat_id) REFERENCES btrs_bus_seats(seat_id)
);

    
    CREATE TABLE btrs_tickets (
  booking_id varchar(50) PRIMARY KEY,
  payment_id varchar(20),
  user_id INTEGER,
  booking_date DATE DEFAULT current_date,
  booking_time TIME DEFAULT current_time,
  route_id INTEGER,
  trip_id INTEGER,
  service_id INTEGER,
  payment_mode VARCHAR(20),
  total_fare Integer,
  status VARCHAR(20),
  no_of_seats_booked INTEGER,
  FOREIGN KEY (user_id) REFERENCES btrs_users(user_id),
  FOREIGN KEY (route_id) REFERENCES btrs_routes(route_id),
  FOREIGN KEY (trip_id) REFERENCES btrs_trips(trip_id),
  FOREIGN KEY (service_id) REFERENCES btrs_services(service_id)
);

    CREATE TABLE btrs_ticket_passengers (
  booking_id varchar(50),
  passenger_index INTEGER,
  passenger_name VARCHAR(50),
  age INTEGER,
  gender VARCHAR(10),
  seat_no INTEGER,
  p_fare numeric,
  PRIMARY KEY (booking_id, passenger_index),
  FOREIGN KEY (booking_id) REFERENCES btrs_tickets(booking_id),
  FOREIGN KEY (seat_no) REFERENCES btrs_bus_seats(seat_id)
);
    
    
    CREATE TABLE btrs_user_passengers (
  user_id INTEGER,
  passenger_id INTEGER,
  passenger_name VARCHAR(50),
  age INTEGER,
  gender VARCHAR(10),
  PRIMARY KEY (user_id, passenger_id),
  UNIQUE (passenger_name, age, gender),
  FOREIGN KEY (user_id) REFERENCES btrs_users(user_id)
);


    
    select * from btrs_users
    
    select * from btrs_admin
    
    
    select * from btrs_users
    

	select * from btrs_bus_seats
    
    insert into btrs_user_passengers values(1,1,'Streak',22,'Male');
    insert into btrs_user_passengers values(1,2,'Imran',22,'Male')
    
    insert into btrs_user_passengers values(9,1,'Vamsi',69,'Other');
    insert into btrs_user_passengers values(9,2,'Vamsi',22,'Female');
    insert into btrs_user_passengers values(9,3,'M. Vamsi',22,'Female');
    insert into btrs_user_passengers values(9,4,'Vamsi. M',22,'Female')
    
    
    select * from btrs_seat_book
    
    insert into btrs_seat_book values(532,23,'booked','Male');
    insert into btrs_seat_book values(532,24,'booked','Male');
    
    insert into btrs_seat_book values(532,1,'booked','Other');
    insert into btrs_seat_book values(532,2,'booked','Female');
    insert into btrs_seat_book values(532,8,'booked','Female');
    insert into btrs_seat_book values(532,19,'booked','Female');
    
    
    insert into btrs_tickets values('100453220230614153425123','dummy_payment',1,current_date,current_time,911,1004,532,'card',1140,'confirmed',2);
    insert into btrs_tickets values('100453220230614113425123','dummy_payment',9,current_date,current_time,911,1004,532,'card',1710,'confirmed',4);


    
    insert into btrs_ticket_passengers values('100453220230614153425123',1,'Streak',22,'Male',23,570);
    insert into btrs_ticket_passengers values('100453220230614153425123',2,'Imran',22,'Male',24,570);
    
    insert into btrs_ticket_passengers values('100453220230614113425123',1,'Vamsi',69,'Other',1,380);
    insert into btrs_ticket_passengers values('100453220230614113425123',2,'Vamsi',22,'Female',2,380);
    insert into btrs_ticket_passengers values('100453220230614113425123',3,'M. Vamsi',22,'Female',8,380);
    insert into btrs_ticket_passengers values('100453220230614113425123',4,'Vamsi. M',22,'Female',19,570);
    
    select * from btrs_services
    
    UPDATE btrs_services
SET seats_available=seats_available-2, collection=570*2
WHERE service_id=532;
    
    UPDATE btrs_services
SET seats_available=seats_available-4, collection=(380*2)+570
WHERE service_id=532;
    
    
    
    select * from btrs_ticket_passengers
    
    
    select* from btrs_tickets


    
    select* from btrs_user_passengers
	
	
	
	
	
	
	
	
	CREATE TABLE btrs_user_passengers (
  user_id INT,
  passenger_name VARCHAR(50),
  age INT,
  gender VARCHAR(10),
  PRIMARY KEY (user_id, passenger_name, age, gender),
  FOREIGN KEY (user_id) REFERENCES btrs_users(user_id)
);

DROP TABLE btrs_user_passengers


 insert into btrs_user_passengers values(1,'Streak',22,'Male');
    insert into btrs_user_passengers values(1,'Imran',22,'Male');
    
    insert into btrs_user_passengers values(9,'Vamsi',69,'Other');
    insert into btrs_user_passengers values(9,'Vamsi',22,'Female');
    insert into btrs_user_passengers values(9,'M. Vamsi',22,'Female');
    insert into btrs_user_passengers values(9,'Vamsi. M',22,'Female')
    
    




































//ak  17th june codes
select * from btrs_amenities

select * from btrs_types_amenities

select * from btrs_bustypes

select * from btrs_buses

select * from btrs_routes

select * from btrs_trips

select * from btrs_services order by collection desc;

select * from btrs_stops

select * from btrs_stp_distances

select * from btrs_bus_seats

select * from btrs_trip_stops

select * from btrs_users

select * from btrs_distance_fares

/*drop table btrs_schedule*/
select * from btrs_schedule

select * from btrs_seat_book

/*drop table btrs_seats_booked*/
select * from btrs_seats_booked

select * from btrs_ticket_passengers

select * from btrs_tickets

select * from btrs_user_passengers




























/////////////////////////////////////////////////////////////////////////
/* This is just to update seats count in services table*/
CREATE OR REPLACE FUNCTION auto_update_seats_count()
RETURNS TRIGGER AS $$

BEGIN
    IF NEW.status = 'true' THEN
		update btrs_services set seats_available=seats_available-1 where btrs_services.service_id=new.service_id;
  END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_seats_count
AFTER INSERT ON btrs_seat_book
FOR EACH ROW
EXECUTE FUNCTION auto_update_seats_count();
////////////////////////////////////////////////////////////////////////
/* This is just to update collection in services table*/
CREATE OR REPLACE FUNCTION auto_update_collection()
RETURNS TRIGGER AS $$

BEGIN
    IF NEW.status = 'confirmed' THEN
		update btrs_services set collection=collection+new.total_fare where btrs_services.service_id=new.service_id;
  END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_collection
AFTER INSERT ON btrs_tickets
FOR EACH ROW
EXECUTE FUNCTION auto_update_collection();
////////////////////////////////////////////////////////////////

select * from btrs_seat_book
select * from btrs_services order by collection desc;
select * from btrs_tickets
select * from btrs_ticket_passengers

insert into btrs_tickets values(102514652023617123456789,'dummy_payment',8,date '2023-06-17',now()::time,942,1025,1465,'card',1320,'confirmed',4)

insert into btrs_ticket_passengers values(102514652023617123456789,1,'Arun',22,'Male',3,330);
insert into btrs_ticket_passengers values(102514652023617123456789,2,'Venkat',20,'Male',5,330);
insert into btrs_ticket_passengers values(102514652023617123456789,3,'Imran',21,'Male',5,330);
insert into btrs_ticket_passengers values(102514652023617123456789,4,'Rabin',24,'Male',6,330);

/*delete from btrs_ticket_passengers where booking_id='102514652023617123456789';*/
insert into btrs_seat_book values(1465,3,true,'Male');
insert into btrs_seat_book values(1465,4,true,'Male');
insert into btrs_seat_book values(1465,5,true,'Male');
insert into btrs_seat_book values(1465,6,true,'Male');



//////////////////////////////////////////////////////////////////
CREATE OR REPLACE FUNCTION auto_update_female_logic()
RETURNS TRIGGER AS $$
DECLARE
    v_service_id INT;
    curr_seat_no int;
    curr_seat_status boolean;
    curr_seat_gender varchar;
    beside_seat_no int;
    beside_seat_status boolean;
    beside_seat_gender varchar;
BEGIN

    SELECT service_id INTO v_service_id
    FROM btrs_tickets
    WHERE booking_id = NEW.booking_id;
    
    
    curr_seat_no:=new.seat_no;
    
    SELECT status, gender
    INTO curr_seat_status, curr_seat_gender
    FROM btrs_seat_book
    WHERE seat_id = curr_seat_no AND service_id = v_service_id;

    RAISE NOTICE 'curr_seat_no: % curr_seat_status: %, curr_seat_gender: %',curr_seat_no,curr_seat_status, curr_seat_gender;
IF NEW.gender = 'Female' THEN
    			IF NEW.seat_no<=24 THEN
                		IF curr_seat_status=false and curr_seat_gender='Female' THEN
                        		update btrs_seat_book set status=true where service_id=v_service_id and seat_id=new.seat_no;
                		ELSIF NEW.seat_no%2 =0 THEN
                        		beside_seat_no=new.seat_no-1;
                                select status,gender into beside_seat_status,beside_seat_gender from btrs_seat_book
                                where seat_id=beside_seat_no and service_id=v_service_id;
                                insert into btrs_seat_book values(v_service_id,new.seat_no,true,'Female');
                                 RAISE NOTICE 'beside seat status %s number%s gender %s',beside_seat_status,beside_seat_no,beside_seat_gender;
                             	IF (beside_seat_status is null) THEN                       		
                                     insert into btrs_seat_book values(v_service_id,beside_seat_no,false,'Female');
                                END IF;
                        ELSIF NEW.seat_no%2 !=0 THEN
                        		beside_seat_no=new.seat_no+1;
                                select status,gender into beside_seat_status,beside_seat_gender from btrs_seat_book
                                where seat_id=beside_seat_no and service_id=v_service_id;
                                insert into btrs_seat_book values(v_service_id,new.seat_no,true,'Female');
                                 RAISE NOTICE 'beside seat status %s number%s gender %s',beside_seat_status,beside_seat_no,beside_seat_gender;
                             	IF (beside_seat_status is null) THEN                       		
                                     insert into btrs_seat_book values(v_service_id,beside_seat_no,false,'Female');
                                END IF;
                        END IF;
                 ELSIF 	(NEW.seat_no>24 and NEW.seat_no<=32) THEN
                        insert into btrs_seat_book values(v_service_id,new.seat_no,true,'Female');
				 END IF;
     ELSE
                 insert into btrs_seat_book values(v_service_id,new.seat_no,true,NEW.gender);
     END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;



CREATE TRIGGER female_logic_trigger
AFTER INSERT ON btrs_ticket_passengers
FOR EACH ROW
EXECUTE FUNCTION auto_update_female_logic();

////////////////////////////////////////////////////////////////////////////////////////////

insert into btrs_ticket_passengers values(102514652023617123456789,5,'Dharani',22,'Female',7,330);
insert into btrs_ticket_passengers values(102514652023617123456789,6,'Dhana',11,'Female',15,330);
insert into btrs_ticket_passengers values(102514652023617123456789,7,'Indu',24,'Female',20,495);
insert into btrs_ticket_passengers values(102514652023617123456789,8,'Rink',24,'Other',28,495);
insert into btrs_ticket_passengers values(102514652023617123456789,9,'Indira',24,'Female',29,495);
insert into btrs_ticket_passengers values(102514652023617123456789,10,'Indra',24,'Male',1,495);

insert into btrs_ticket_passengers values(102514652023617123456789,11,'Chiru',24,'Female',2,495);

insert into btrs_ticket_passengers values(102514652023617123456789,11,'Chiru',24,'Female',2,495);
insert into btrs_ticket_passengers values(102514652023617123456789,12,'Laxmi',24,'Female',22,495);
insert into btrs_ticket_passengers values(102514652023617123456789,14,'Prasanna',24,'Female',23,495);
insert into btrs_ticket_passengers values(102514652023617123456789,15,'Prasanna',24,'Female',13,495);
insert into btrs_ticket_passengers values(102514652023617123456789,16,'Prasanna',24,'Female',14,495);
insert into btrs_ticket_passengers values(102514652023617123456789,17,'Prasanna',24,'Female',19,495);
insert into btrs_ticket_passengers values(102514652023617123456789,17,'Prasanna',24,'Female',19,495);


insert into btrs_ticket_passengers values(102514652023617123456789,18,'Prasanna',24,'Female',16,495);
insert into btrs_ticket_passengers values(102514652023617123456789,19,'Prasanna',24,'Female',10,495);
insert into btrs_ticket_passengers values(102514652023617123456789,20,'Prasanna',24,'Female',11,495);

insert into btrs_ticket_passengers values(102514652023617123456789,21,'Prasanna',24,'Female',9,495);
insert into btrs_ticket_passengers values(102514652023617123456789,22,'Prasanna',24,'Female',18,495);
insert into btrs_ticket_passengers values(102514652023617123456789,23,'Prasanna',24,'Female',17,495);
insert into btrs_ticket_passengers values(102514652023617123456789,24,'Prasanna',24,'Male',31,495);
insert into btrs_ticket_passengers values(102514652023617123456789,26,'Prasanna',24,'Male',8,495);
insert into btrs_ticket_passengers values(102514652023617123456789,27,'Prasanna',24,'Male',24,495);





select * from btrs_seat_book where service_id='1465';

select * from btrs_services where service_id='1465'

select * from btrs_ticket_passengers where booking_id='102514652023617123456789';

select * from btrs_tickets where booking_id='102514652023617123456789';





// auto update the user passengers trigger by imran,arun

CREATE OR REPLACE FUNCTION auto_insert_user_passengers()
RETURNS TRIGGER AS $$
DECLARE 
	flag1 BOOLEAN;
	userId INT;
	passengerCount INT;
BEGIN
	flag1 := TRUE;

	SELECT user_id INTO userId FROM btrs_tickets WHERE booking_id = NEW.booking_id;

	RAISE NOTICE 'The new inserting passenger is for %', userId;

	SELECT COUNT(*) INTO passengerCount FROM btrs_user_passengers
	WHERE user_id = userId
	AND passenger_name = NEW.passenger_name
	AND gender = NEW.gender
	AND age = NEW.age;

	IF passengerCount > 0 THEN
		flag1 := FALSE;
	END IF;

	IF flag1 THEN
		INSERT INTO btrs_user_passengers VALUES (userId, NEW.passenger_name, NEW.age, NEW.gender);
	END IF;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER auto_insert_user_passengers_trigger
AFTER INSERT ON btrs_ticket_passengers
FOR EACH ROW
EXECUTE FUNCTION auto_insert_user_passengers();









select * from btrs_ticket_passengers where booking_id='844102820236191687158033650';

select * from btrs_tickets where booking_id='844102820236191687158033650';


select * from btrs_user_passengers where user_id=9;

insert into btrs_ticket_passengers values('844102820236191687158033650',5,'BTRS',12,'Other',32,100);






/////////Auto update collection and seat_count in service upon ticket cancellation



CREATE OR REPLACE FUNCTION auto_update_collection_cancel()
RETURNS TRIGGER AS $$

BEGIN
    IF NEW.status = 'cancelled' THEN
		update btrs_services set collection=collection-old.total_fare where btrs_services.service_id=old.service_id;
        update btrs_services set seats_available=seats_available+old.no_of_seats_booked where btrs_services.service_id=old.service_id;
  END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_collection_cancel
AFTER UPDATE ON btrs_tickets
FOR EACH ROW
EXECUTE FUNCTION auto_update_collection_cancel();


