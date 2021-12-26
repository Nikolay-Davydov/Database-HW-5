INSERT INTO music_genre (name_genre)
	VALUES ('Rock'), ('Rap'), ('Pop'), ('Classic'), ('Club');
	
INSERT INTO executor (nickname)
	VALUES ('Nirvana'),
	('Alestorm'),
	('Rammstein'),
	('Snoop Dogg'),
	('50Cent'),
	('Michael Jackson'),
	('The Beatles'),
	('Bach'),
	('Tiesto');

INSERT INTO music_album (nickname, year_of_relise)
	VALUES ('Nevermind', 1999),
	('No Grave But The Sea', 2018),
	('Rammstein', 2019),
	('From tha Streets 2 tha Suites', 2021),
	('Come and Get You', 2018), ('Bad', 1987),
	('Please Please Me', 1963),
	('2 music book', 1730),
	('The London Sessions', 2020);
	
INSERT INTO collection (nickname, year_of_relise)
	VALUES ('All Rock', 2019),
	('Pop & Rap', 2020),
	('The Best', 2021),
	('Classic 2000', 2019),
	('Golden', 2004),
	('only Rap',2021),
	('Eternal', 2000),
	('Pop & Club', 2020);
	
INSERT INTO definition_genre (music_genre_id, executor_id)
	VALUES ((select id from music_genre where name_genre = 'Rock'), (select id from executor where nickname = 'Nirvana')),
	((select id from music_genre where name_genre = 'Rock'), (select id from executor where nickname = 'Alestorm')),
	((select id from music_genre where name_genre = 'Rock'), (select id from executor where nickname = 'Rammstein')),
	((select id from music_genre where name_genre = 'Rap'), (select id from executor where nickname = 'SnoopDogg')),
	((select id from music_genre where name_genre = 'Rap'), (select id from executor where nickname = '50Cent')),
	((select id from music_genre where name_genre = 'Pop'), (select id from executor where nickname = 'Michael Jackson')),
	((select id from music_genre where name_genre = 'Pop'), (select id from executor where nickname = 'The Beatles')),
	((select id from music_genre where name_genre = 'Classic'), (select id from executor where nickname = 'Bach')),
	((select id from music_genre where name_genre = 'Club'), (select id from executor where nickname = 'Tiesto'));

INSERT INTO track (name, time, music_album_id)
	VALUES ('My Polly', 2.5, (select id from music_album where nickname = 'Nevermind')),
	('Breed', 3.0, (select id from music_album where nickname = 'Nevermind')),
	('Drain You', 3.45, (select id from music_album where nickname = 'Nevermind')),
	('Mexico', 3.10, (select id from music_album where nickname = 'No Grave But The Sea')),
	('Alestorm', 3.00, (select id from music_album where nickname = 'No Grave But The Sea')),
	('Man the Pumps', 3.45, (select id from music_album where nickname = 'No Grave But The Sea')),
	('Radio', 4.37, (select id from music_album where nickname = 'Rammstein')),
	('Tatto', 4.11, (select id from music_album where nickname = 'Rammstein')),
	('My Deutschland', 5.23, (select id from music_album where nickname = 'Rammstein')),	
	('CEO', 1.15, (select id from music_album where nickname = 'From tha Streets 2 tha Suites')),
	('Look Around', 2.05, (select id from music_album where nickname = 'From tha Streets 2 tha Suites')),
	('In da club', 4.11, (select id from music_album where nickname = 'Come and Get You')),
	('My world', 5.01, (select id from music_album where nickname = 'Come and Get You')),	
	('Fly Away', 3.39, (select id from music_album where nickname = 'Bad')),
	('Leave Me Alone', 4.39, (select id from music_album where nickname = 'Bad')),
	('Boys', 2.26, (select id from music_album where nickname = 'Please Please Me')),
	('Ask Me Why', 3.25, (select id from music_album where nickname = 'Please Please Me')),	
	('BIST DU BEI MIR', 17.20, (select id from music_album where nickname = '2 music book')),	
	('Blue', 2.51, (select id from music_album where nickname = 'The London Sessions'));
	
INSERT INTO definition_album (executor_id, music_album_id)
	VALUES ((select id from executor where nickname = 'Nirvana'), (select id  from music_album where nickname = 'Nevermind')),
	((select id from executor where nickname = 'Alestorm'), (select id  from music_album where nickname = 'No Grave But The Sea')),
	((select id from executor where nickname = 'Rammstein'), (select id  from music_album where nickname = 'Rammstein')),
	((select id from executor where nickname = 'Snoop Dogg'), (select id  from music_album where nickname = 'From tha Streets 2 tha Suites')),
	((select id from executor where nickname = '50Cent'), (select id  from music_album where nickname = 'Come and Get You')),
	((select id from executor where nickname = 'Michael Jackson'), (select id  from music_album where nickname = 'Bad')),
	((select id from executor where nickname = 'The Beatles'), (select id  from music_album where nickname = 'Please Please Me')),
	((select id from executor where nickname = 'Bach'), (select id  from music_album where nickname = '2 music book')),
	((select id from executor where nickname = 'Tiesto'), (select id  from music_album where nickname = 'The London Sessions'));

INSERT INTO definition_collection (collection_id, track_id)
	VALUES ((select id from collection where nickname = 'All Rock'), (select id from track where name = 'My Polly')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'Breed')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'Drain You')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'Mexico')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'Alestorm')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'Man the Pumps')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'Radio')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'Tatto')),
	((select id from collection where nickname = 'All Rock'), (select id from track where name = 'My Deutschland')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'Fly Away')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'Leave Me Alone')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'Boys')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'Ask Me Why')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'CEO')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'Look Around')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'In da club')),
	((select id from collection where nickname = 'Pop & Rap'), (select id from track where name = 'My world')),
	((select id from collection where nickname = 'The Best'), (select id from track where name = 'Drain You')),
	((select id from collection where nickname = 'The Best'), (select id from track where name = 'Boys')),
	((select id from collection where nickname = 'Classic 2000'), (select id from track where name = 'Blue')),
	((select id from collection where nickname = 'Golden'), (select id from track where name = 'Boys')),
	((select id from collection where nickname = 'Golden'), (select id from track where name = 'Ask Me Why')),
	((select id from collection where nickname = 'only Rap'), (select id from track where name = 'CEO')),
	((select id from collection where nickname = 'only Rap'), (select id from track where name = 'Look Around')),
	((select id from collection where nickname = 'only Rap'), (select id from track where name = 'In da club')),
	((select id from collection where nickname = 'only Rap'), (select id from track where name = 'My world')),
	((select id from collection where nickname = 'Eternal'), (select id from track where name = 'BIST DU BEI MIR')),
	((select id from collection where nickname = 'Pop & Club'), (select id from track where name = 'Fly Away')),
	((select id from collection where nickname = 'Pop & Club'), (select id from track where name = 'Leave Me Alone')),
	((select id from collection where nickname = 'Pop & Club'), (select id from track where name = 'Boys')),
	((select id from collection where nickname = 'Pop & Club'), (select id from track where name = 'Ask Me Why')),
	((select id from collection where nickname = 'Pop & Club'), (select id from track where name = 'Blue'));
	
	
	
	
	
	