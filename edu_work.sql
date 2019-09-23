CREATE TABLE students (
  username varchar(50) PRIMARY KEY,
  pswrd varchar(20),
  sex char(1),
  dob date
);

CREATE TABLE history (
  access_date date,
  video varchar(100),
  video_category varchar(20),
  access_time time
);

CREATE TABLE recommendations (
  arts_and_humanities number(4,2),
  bussiness number(4,2),
  computer_science number(4,2),
  data_science number(4,2),
  information_technology number(4,2),
  health number(4,2),
  math_and_logic number(4,2),
  personal_developement number(4,2),
  physical_science_and_engineering number(4,2),
  social_sciences number(4,2),
  language_learning number(4,2)
);

CREATE TABLE subjects (
  username varchar(50),
  arts_and_humanities number(1),
  bussiness number(1),
  computer_science number(1),
  data_science number(1),
  information_technology number(1),
  health number(1),
  math_and_logic number(1),
  personal_developement number(1),
  physical_science_and_engineering number(1),
  social_sciences number(1),
  language_learning number(1)
);

CREATE TABLE videos (
  video_name varchar(100),
  link varchar(300),
  video_category varchar(20)
);

ALTER TABLE history ADD FOREIGN KEY (video) REFERENCES videos (video_name);

ALTER TABLE history ADD FOREIGN KEY (video_category) REFERENCES videos (video_category);

ALTER TABLE students ADD FOREIGN KEY (username) REFERENCES subjects (username);

