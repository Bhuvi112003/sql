create database dataset0;
use dataset0;

create table author (id int,author_name varchar(200),birth_year int,death_year int);
insert into author values(01,"marcella cole",1983,null); 
insert into author values(02,"lisa mullins",1819,1950);
insert into author values(03,"dennis mullins",1935,1950);
insert into author values(04,"randolph vasquez",1957,2004);
select * from author;

create table book(id int,author_id int,title varchar(202),publish_year int,publishing_house varchar(205),rating float);
insert into book values(1,null,"soulless girl",2008,"golden albatros",4.3);
insert into book values(2,null,"weak heart",1980,"dimrmyd inc",38);
insert into book values(3,4,"faith of light",1995,"white cloud press",4.3);
insert into book values(4,null,"memory of hope",2000,"rutis enterprises",2.7);
select * from book;

create table adaptation(book_id int,type varchar(100),title varchar(100),release_year int,rating float);
insert into adaptation values(1,"movie","Gone With The Wolves",2008,3);
insert into adaptation values(3,"movie","companions of tomorrow",2001,4.2);
insert into adaptation values(5,"movie","homeless warrior",2008,4);
insert into adaptation values(2,"movie","blacksmith with silver",2014,4.3);
insert into adaptation values(4,"movie","patrons and bearers",2004,3.2);
select * from adaptation ;

create table book_review(book_id int,review varchar(500),author varchar(200));
insert into book_review values(1,"an incredible book","sylvia jones");
insert into book_review values(1,"Great, although it has some flaws","jssica parker");
insert into book_review values(2,"it takes the reader for a ride full of emotions","thomas green");
insert into book_review values(3,"Incredible craftsmanship of the author","martin freeman");
insert into book_review values(4,"Not the best book by this author","jude falth");
insert into book_review values(5,"Claudia Johnson at her best!","joe marqiz");
select * from book_review;

select * from author;
select * from book;
select * from adaptation;
select * from book_review;

-- inner join--

select author_name,book.title,book.publish_year from author inner join book on book.id=author.id; 


SELECT author_name,title,publish_year FROM author JOIN book ON author.id = book.author_id
WHERE publish_year > 1990;



SELECT book.title AS book_title,adaptation.title AS adaptation_title,book.publish_year,adaptation.release_year 
from book JOIN adaptation ON book.id = adaptation.book_id WHERE adaptation.release_year - book.publish_year <= 8
AND book.rating < adaptation.rating;


-- left join--

SELECT book.title,adaptation.title,adaptation.release_year FROM book LEFT JOIN adaptation
ON book.id = adaptation.book_id;


SELECT book.title,publishing_house,adaptation.title,adaptation.type FROM book
LEFT JOIN adaptation ON book.id = adaptation.book_id WHERE type = 'movie'OR type IS NULL;


-- full join --

SELECT title,name FROM book FULL JOIN author ON book.author_id = author.id;







