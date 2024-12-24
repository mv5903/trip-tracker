
CREATE TABLE IF NOT EXISTS pin (
    id SERIAL PRIMARY KEY,
    created_date DATE NOT NULL,
    label TEXT NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    notes TEXT
);

CREATE TABLE IF NOT EXISTS segment (
    id SERIAL PRIMARY KEY,
    pin_from INT NOT NULL,
    pin_to INT NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (pin_from) REFERENCES pin(id),
    FOREIGN KEY (pin_to) REFERENCES pin(id)
);

INSERT INTO pin (created_date, label, latitude, longitude, notes) VALUES 
('2020-03-26', 'Pin_1', 67.739379, 52.561407, 'Notes for Pin_1'),
('2020-08-29', 'Pin_2', -53.27231, 66.422139, 'Notes for Pin_2'),
('2020-08-17', 'Pin_3', 2.559722, -161.48938, 'Notes for Pin_3'),
('2021-01-07', 'Pin_4', 72.407381, 14.474102, 'Notes for Pin_4'),
('2020-07-02', 'Pin_5', 83.624934, -87.463338, 'Notes for Pin_5'),
('2021-07-14', 'Pin_6', -77.13125, -51.50889, 'Notes for Pin_6'),
('2021-10-21', 'Pin_7', 76.691358, -120.56495, 'Notes for Pin_7'),
('2021-06-21', 'Pin_8', -6.916714, 134.493378, 'Notes for Pin_8'),
('2023-02-19', 'Pin_9', -85.395126, 110.917182, 'Notes for Pin_9'),
('2020-01-15', 'Pin_10', 40.197553, 124.886248, 'Notes for Pin_10'),
('2023-05-03', 'Pin_11', 10.273944, -93.347278, 'Notes for Pin_11'),
('2021-08-14', 'Pin_12', 43.347676, 152.170509, 'Notes for Pin_12'),
('2021-02-18', 'Pin_13', 55.356893, 106.314074, 'Notes for Pin_13'),
('2021-10-29', 'Pin_14', -70.593306, 46.256633, 'Notes for Pin_14'),
('2023-04-05', 'Pin_15', 10.845215, -94.452406, 'Notes for Pin_15'),
('2021-11-30', 'Pin_16', 17.493953, 159.976964, 'Notes for Pin_16'),
('2021-05-27', 'Pin_17', -82.268113, -49.713572, 'Notes for Pin_17'),
('2023-08-14', 'Pin_18', -73.382821, -157.799851, 'Notes for Pin_18'),
('2021-01-23', 'Pin_19', 12.964416, 43.004577, 'Notes for Pin_19'),
('2021-06-06', 'Pin_20', 77.255049, 99.250929, 'Notes for Pin_20'),
('2020-01-04', 'Pin_21', 65.082101, -93.041014, 'Notes for Pin_21'),
('2022-09-12', 'Pin_22', -3.311694, 18.059787, 'Notes for Pin_22'),
('2022-02-16', 'Pin_23', 54.393886, -26.333813, 'Notes for Pin_23'),
('2022-02-21', 'Pin_24', -6.933437, -131.684522, 'Notes for Pin_24'),
('2021-04-30', 'Pin_25', -75.528903, 68.041934, 'Notes for Pin_25'),
('2021-06-30', 'Pin_26', -13.108278, -168.752276, 'Notes for Pin_26'),
('2022-04-25', 'Pin_27', -8.666587, 19.800211, 'Notes for Pin_27'),
('2023-11-21', 'Pin_28', 26.323721, 94.482448, 'Notes for Pin_28'),
('2023-02-28', 'Pin_29', -16.523461, -142.066148, 'Notes for Pin_29'),
('2023-12-12', 'Pin_30', -49.84425, 9.56359, 'Notes for Pin_30'),
('2020-01-12', 'Pin_31', 69.441291, -49.598988, 'Notes for Pin_31'),
('2023-10-16', 'Pin_32', -17.220587, -69.316481, 'Notes for Pin_32'),
('2020-04-24', 'Pin_33', 65.85126, -64.217245, 'Notes for Pin_33'),
('2021-03-20', 'Pin_34', -29.017022, -91.016125, 'Notes for Pin_34'),
('2020-04-11', 'Pin_35', 80.260714, 96.32546, 'Notes for Pin_35'),
('2021-01-31', 'Pin_36', 12.275387, -72.86215, 'Notes for Pin_36'),
('2021-09-25', 'Pin_37', -10.359651, -70.699934, 'Notes for Pin_37'),
('2020-09-16', 'Pin_38', -43.650699, 15.389981, 'Notes for Pin_38'),
('2021-05-28', 'Pin_39', 29.94972, -111.217933, 'Notes for Pin_39'),
('2020-03-17', 'Pin_40', 68.52358, -28.654367, 'Notes for Pin_40'),
('2020-07-28', 'Pin_41', 64.8806, -30.406132, 'Notes for Pin_41'),
('2021-05-31', 'Pin_42', -85.719396, 164.779034, 'Notes for Pin_42'),
('2021-06-10', 'Pin_43', 64.992241, 75.722042, 'Notes for Pin_43'),
('2021-09-12', 'Pin_44', 4.422655, 50.429453, 'Notes for Pin_44'),
('2022-09-05', 'Pin_45', -51.564326, -143.145249, 'Notes for Pin_45'),
('2021-12-29', 'Pin_46', -47.198407, 37.577493, 'Notes for Pin_46'),
('2022-11-09', 'Pin_47', 84.776554, -17.398384, 'Notes for Pin_47'),
('2020-06-12', 'Pin_48', 21.770385, 130.430167, 'Notes for Pin_48'),
('2020-01-17', 'Pin_49', -29.835814, -24.751552, 'Notes for Pin_49'),
('2023-08-16', 'Pin_50', -85.757245, 2.607941, 'Notes for Pin_50');

INSERT INTO segment (pin_from, pin_to, from_date, to_date) VALUES 
(49, 33, '2021-09-29', '2023-11-01'),
(9, 35, '2023-05-28', '2023-08-14'),
(13, 10, '2020-11-22', '2022-09-08'),
(17, 9, '2021-06-30', '2021-10-30'),
(46, 37, '2020-04-13', '2022-09-12'),
(46, 8, '2020-07-25', '2023-12-11'),
(22, 44, '2022-12-19', '2023-07-31'),
(14, 40, '2021-09-07', '2022-12-12'),
(18, 29, '2022-04-22', '2022-11-14'),
(26, 45, '2020-01-15', '2022-12-09'),
(15, 32, '2020-11-21', '2023-07-27'),
(36, 30, '2021-10-18', '2023-05-25'),
(43, 32, '2021-09-22', '2023-07-09'),
(47, 44, '2020-01-29', '2020-08-26'),
(32, 16, '2023-05-31', '2023-12-15'),
(5, 9, '2023-04-30', '2023-12-25'),
(30, 13, '2020-11-02', '2020-11-12'),
(15, 1, '2021-07-17', '2022-04-16'),
(15, 34, '2020-01-17', '2020-04-07'),
(29, 37, '2021-10-19', '2022-08-02'),
(48, 9, '2023-05-15', '2023-09-21'),
(11, 19, '2020-03-05', '2020-09-06'),
(45, 40, '2020-12-13', '2022-09-08'),
(26, 8, '2021-05-16', '2021-07-18'),
(31, 21, '2021-07-20', '2023-08-28');
