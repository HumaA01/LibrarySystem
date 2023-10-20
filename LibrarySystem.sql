-- create database books;
use books;
create table book 
(
	id int not null primary key auto_increment,
    title varchar(250)
);

create table genre
(
	id int not null primary key auto_increment,
	title varchar(100)
);

create table author
(
	id int not null primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50)
);

create table lib_user 
(
	id int not null primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50)
);

create table genre_book
(
	id int not null primary key auto_increment,
    book_id int,
    foreign key (book_id) references book(id),
    genre_id int,
    foreign key (genre_id) references genre(id)
);

create table author_book
(
	id int not null primary key auto_increment,
    book_id int,
    foreign key (book_id) references book(id),
    author_id int,
    foreign key (author_id) references author(id)
);

create table loan_system
(
	id int not null primary key auto_increment,
    user_id int,
    foreign key (user_id) references lib_user(id),
    book_id int,
    foreign key (book_id) references book(id),
    start_date date,
    end_date date,
    return_date date
    
);

drop table user_book;





