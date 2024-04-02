CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
	
	DESC admin;

	SELECT * FROM users;
	
INSERT INTO `users` (`username`, `password`, `level`) VALUES
('admin', 'admin123', 'admin'),
('user1', 'user123', 'user'),
('user2', 'user456', 'user');

DROP TABLE users;

CREATE TABLE marvel_movies (
    id_film INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255) NOT NULL,
    year INT,
    image VARCHAR(255)
);

INSERT INTO marvel_movies (title, year, director, cast, image) VALUES
('Iron Man', 2008, 'Jon Favreau', 'Robert Downey Jr., Gwyneth Paltrow, Jeff Bridges', 'https://cdn.marvel.com/content/1x/ironman_lob_crd_01_3.jpg'),
('The Incredible Hulk', 2008, 'Louis Leterrier', 'Edward Norton, Liv Tyler, Tim Roth', 'https://cdn.marvel.com/content/1x/theincrediblehulk_lob_crd_03.jpg'),
('Iron Man 2', 2010, 'Jon Favreau', 'Robert Downey Jr., Gwyneth Paltrow, Don Cheadle', 'https://cdn.marvel.com/content/1x/ironman2_lob_crd_01_3.jpg'),
('Thor', 2011, 'Kenneth Branagh', 'Chris Hemsworth, Natalie Portman, Tom Hiddleston', 'https://cdn.marvel.com/content/1x/thor_lob_crd_01.jpg'),
('Captain America: The First Avenger', 2011, 'Joe Johnston', 'Chris Evans, Hayley Atwell, Hugo Weaving', 'https://cdn.marvel.com/content/1x/captainamerica_lob_crd_01.jpg'),
('The Avengers', 2012, 'Joss Whedon', 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 'https://cdn.marvel.com/content/1x/theavengers_lob_crd_03.jpg'),
('Iron Man 3', 2013, 'Shane Black', 'Robert Downey Jr., Gwyneth Paltrow, Ben Kingsley', 'https://cdn.marvel.com/content/1x/ironman3_lob_crd_01_10.jpg'),
('Thor: The Dark World', 2013, 'Alan Taylor', 'Chris Hemsworth, Natalie Portman, Tom Hiddleston', 'https://cdn.marvel.com/content/1x/thorthedarkworld_lob_crd_02_1.jpg'),
('Captain America: The Winter Soldier', 2014, 'Anthony Russo, Joe Russo', 'Chris Evans, Scarlett Johansson, Sebastian Stan', 'https://cdn.marvel.com/content/1x/captainamericathewintersoldier_lob_crd_01_1.jpg'),
('Guardians of the Galaxy', 2014, 'James Gunn', 'Chris Pratt, Zoe Saldana, Dave Bautista', 'https://cdn.marvel.com/content/1x/guardiansofthegalaxy_lob_crd_03.jpg'),
('Avengers: Age of Ultron', 2015, 'Joss Whedon', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', 'https://cdn.marvel.com/content/1x/avengersageofultron_lob_crd_03.jpg'),
('Ant-Man', 2015, 'Peyton Reed', 'Paul Rudd, Michael Douglas, Evangeline Lilly', 'https://cdn.marvel.com/content/1x/ant-man_lob_crd_01_8.jpg'),
('Captain America: Civil War', 2016, 'Anthony Russo, Joe Russo', 'Chris Evans, Robert Downey Jr., Scarlett Johansson', 'https://cdn.marvel.com/content/1x/captainamericacivilwar_lob_crd_01_9.jpg'),
('Doctor Strange', 2016, 'Scott Derrickson', 'Benedict Cumberbatch, Chiwetel Ejiofor, Rachel McAdams', 'https://cdn.marvel.com/content/1x/doctorstrange_lob_crd_01_6.jpg'),
('Guardians of the Galaxy Vol. 2', 2017, 'James Gunn', 'Chris Pratt, Zoe Saldana, Dave Bautista', 'https://cdn.marvel.com/content/1x/guardiansofthegalaxyvol.2_lob_crd_01.jpg'),
('Spider-Man: Homecoming', 2017, 'Jon Watts', 'Tom Holland, Michael Keaton, Zendaya', 'https://cdn.marvel.com/content/1x/spider-manhomecoming_lob_crd_02.jpg'),
('Thor: Ragnarok', 2017, 'Taika Waititi', 'Chris Hemsworth, Tom Hiddleston, Cate Blanchett', 'https://cdn.marvel.com/content/1x/thorragnarok_lob_crd_03.jpg'),
('Black Panther', 2018, 'Ryan Coogler', 'Chadwick Boseman, Michael B. Jordan, Lupita Nyong''o', 'https://cdn.marvel.com/content/1x/blackpanther_lob_crd_01_4.jpg'),
('Avengers: Infinity War', 2018, 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', 'https://cdn.marvel.com/content/1x/avengersinfinitywar_lob_crd_02_1.jpg'),
('Ant-Man and The Wasp', 2018, 'Peyton Reed', 'Paul Rudd, Evangeline Lilly, Michael Peña', 'https://cdn.marvel.com/content/1x/ant-manthewasp_lob_crd_01.jpg'),
('Captain Marvel', 2019, 'Anna Boden, Ryan Fleck', 'Brie Larson, Samuel L. Jackson, Jude Law', 'https://cdn.marvel.com/content/1x/captainmarvel_lob_crd_06.jpg'),
('Avengers: Endgame', 2019, 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 'https://cdn.marvel.com/content/1x/avengersendgame_lob_crd_05_2.jpg'),
('Spider-Man: Far From Home', 2019, 'Jon Watts', 'Tom Holland, Zendaya, Jake Gyllenhaal', 'https://cdn.marvel.com/content/1x/spider-manfarfromhome_lob_crd_04_3.jpg'),
('Black Widow', 2021, 'Cate Shortland', 'Scarlett Johansson, Florence Pugh, David Harbour', 'https://cdn.marvel.com/content/1x/blackwidow_lob_crd_06.jpg'),
('Shang-Chi and the Legend of the Ten Rings', 2021, 'Destin Daniel Cretton', 'Simu Liu, Awkwafina, Tony Leung', 'https://cdn.marvel.com/content/1x/shangchi_lob_crd_07.jpg'),
('Eternals', 2021, 'Chloé Zhao', 'Gemma Chan, Richard Madden, Angelina Jolie', 'https://cdn.marvel.com/content/1x/eternals_lob_crd_06.jpg'),
('Spider-Man: No Way Home', 2021, 'Jon Watts', 'Tom Holland, Zendaya, Willem Dafoe', 'https://cdn.marvel.com/content/1x/spider-mannowayhome_lob_crd_03.jpg'),
('Doctor Strange in the Multiverse of Madness', 2022, 'Sam Raimi', 'Benedict Cumberbatch, Elizabeth Olsen, Benedict Wong', 'https://cdn.marvel.com/content/1x/doctorstrangeinthemultiverseofmadness_lob_crd_02_3.jpg'),
('Thor: Love and Thunder', 2022, 'Taika Waititi', 'Chris Hemsworth, Natalie Portman, Tessa Thompson', 'https://cdn.marvel.com/content/1x/thorloveandthunder_lob_crd_04.jpg'),
('Black Panther: Wakanda Forever', 2022, 'Ryan Coogler', 'Letitia Wright, Danai Gurira, Martin Freeman', 'https://cdn.marvel.com/content/1x/blackpantherwakandaforever_lob_crd_06.jpg'),
('Ant-Man and The Wasp: Quantumania', 2023, 'Peyton Reed', 'Paul Rudd, Evangeline Lilly, Michael Douglas', 'https://cdn.marvel.com/content/1x/antmanandthewaspquantumania_lob_crd_03.jpg'),
('Guardians of the Galaxy Vol. 3', 2023, 'James Gunn', 'Chris Pratt, Karen Gillan, Pom Klementieff, Sean Gunn', 'https://cdn.marvel.com/content/1x/guardiansofthegalaxyvolume3_lob_crd_03.jpg'),
('The Marvels', 2023, 'Nia DaCosta', 'Brie Larson, Teyonah Parris, Iman Vellani', 'https://cdn.marvel.com/content/1x/themarvels_lob_crd_05.jpg'),
('Deadpool & Wolverine', 2024, 'Shawn Levy', 'Ryan Reynolds, Hugh Jackman, Emma Corrin', 'https://cdn.marvel.com/content/1x/deadpoolandwolverine_lob_crd_02.jpg'),
('Captain America: Brave New World', 2025, 'Julius Onah', 'Anthony Mackie, Carl Lumbly, Danny Ramirez', 'https://cdn.marvel.com/content/1x/captainamericabravenewworld_lob_crd_01.jpg');




SELECT * FROM marvel_movies;
