/*
    Title: whatabook_db_init.sql
    Author: Samantha Lawrence
    Date: 18JUL2022
    Description: whatbook database initialization script.
*/

-- drop test user if exists 
DROP USER IF EXISTS 'whatabook_user'@'localhost';


-- create whatabook_user and grant them all privileges to the whatabook database 
CREATE USER 'whatabook_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Password';

-- grant all privileges to the whatabook database to user whatabook_user on localhost 
GRANT ALL PRIVILEGES ON whatabook.* TO'whatabook_user'@'localhost';


-- drop tables if they are present
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS wishlist;
DROP TABLE IF EXISTS store;
GRANT ALL PRIVILEGES ON whatabook.* TO'whatabook_user'@'localhost';

-- create user table
CREATE TABLE user (
    user_id        INT            NOT NULL        AUTO_INCREMENT,
    first_name     VARCHAR(75)    NOT NULL,
    last_name      VARCHAR(75)    NOT NULL,
    PRIMARY KEY(user_id)
); 

-- create book table
CREATE TABLE book (
    book_id        INT            NOT NULL        AUTO_INCREMENT,
    book_name      VARCHAR(200)   NOT NULL,
    details        VARCHAR(500)   NOT NULL,
    author         VARCHAR(200)   NOT NULL,
    PRIMARY KEY(book_id)
);

-- create wishlist table
CREATE TABLE wishlist (
    wishlist_id    INT            NOT NULL        AUTO_INCREMENT,
    user_id        INT            NOT NULL,
    book_id        INT            NOT NULL,
    PRIMARY KEY(wishlist_id),
    CONSTRAINT book 
    FOREIGN KEY(book_id)
        REFERENCES book(book_id)
);

-- create store table
CREATE TABLE store (
    store_id       INT            NOT NULL,
    locale         VARCHAR(500)   NOT NULL,
    PRIMARY KEY(store_id)
);

-- insert store records
INSERT INTO store(store_id, locale)
    VALUES('1', '4 Privet Dr, Little Whinging, Surrey');

INSERT INTO store(store_id, locale)
    VALUES('2', '12 Picket Post Close, Bracknell, Berkshire');

INSERT INTO store(store_id, locale)
    VALUES('3', '12 Grimmauld Place, Borough of Islington, London');

-- insert book records
INSERT INTO book(book_id, book_name, details, author)
    VALUES('1', 'Standard Books of Spells', 'The big book of any spell any witch or wizard will ever need!','Miranda Goshawk');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('2', 'The Dark Forces: A Guide to Self-Protection','Learn how to take down He-Who-Must-Not-Be-Named on your own, since The Boy Who Lived can not figure out how out how to break a horcrux on his own!','Quentin Trimble');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('3', 'Break with a Banshee', 'The corageous feat of banishing the Bandon Banshee! What? No. The witch with the hairy chin did not do this, and I did not erase her memory.','Gilderoy Lockhart');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('4', 'One Thousand Magical Herbs and Fungi','It really is one thousand. Count them yourself.','Phyllida Spore');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('5', 'A History of Magic','I can write about this, because I was alive when magic was created.','Bathilda Bagshot');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('6', 'Advanced Potion Making','Potter, quit stealing Boomslang Skin from the office of Professor Snape. Or do break in, not like we can stop you.','Libatius Borage');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('7', 'A Beginners Guide to Transfiguration','Learn how to turn Malfoy into the snake that he is.','Emeric Switch');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('8', 'Fantastic Beasts and Where to Find Them','New York is considerably more interesting than I expected','Newt Scamander');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('9', 'The Wonder of Wigtown Wanderers, He Flew Like a Madman','I divide my time between my home in Nottinghamshire and where the Wigtown Wanderers are playing this week.','Kennilworthy Whisp');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('10', 'Unfogging the Future','Because you probably should ... just not ... trust Trelawney','Cassandra Vablatsky');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('11', 'The Philosophy of the Mundane: Why the Muggles Prefer Not to Know','The life story of the Dursley family','Professor Mordicus Egg');

INSERT INTO book(book_id, book_name, details, author)
    VALUES('12', 'Magical Drafts and Potions','Yup, Potter is still breaking into offices to steal potion ingredients.','Arsenic Jigger');

-- insert user records
INSERT INTO user(user_id, first_name, last_name)
    VALUES('1', 'Harry','Potter');

INSERT INTO user(user_id, first_name, last_name)
    VALUES('2', 'Ronald','Weasely');

INSERT INTO user(user_id, first_name, last_name)
    VALUES('3', 'Hermione','Granger');

INSERT INTO user(user_id, first_name, last_name)
    VALUES('4', 'Neville','Longbottom');

INSERT INTO user(user_id, first_name, last_name)
    VALUES('5', 'Luna','Lovegood');

-- don't insert wishlist values, make this an ability in the program :)
