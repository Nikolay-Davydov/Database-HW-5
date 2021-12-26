create table if not exists music_genre (
	id serial primary key,
	name_genre varchar(15) unique not null
);

create table if not exists executor (
	id serial primary key,
	nickname varchar(100) not null	
);

create table if not exists definition_genre (
	id serial primary key,
	music_genre_id integer references music_genre(id),
	executor_id integer references executor(id)
);

create table if not exists music_album (
	id serial primary key,
	nickname varchar(100) not null,
	year_of_relise integer not null	
);

create table if not exists definition_album (
	id serial primary key,
	music_album_id integer references music_album(id),
	executor_id integer references executor(id)
);

create table if not exists track (
	id serial primary key,
	name varchar(100) not null,
	time numeric(5,2) not null check(time > 0),
	music_album_id integer references music_album(id)
);

create table if not exists collection (
	id serial primary key,
	nickname varchar(100) not null,
	year_of_relise integer not null
);

create table if not exists definition_collection (
	id serial primary key,
	collection_id integer references collection(id),
	track_id integer references track(id)
);