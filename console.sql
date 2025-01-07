
CREATE TABLE events(
    id int auto_increment primary key,
    title varchar(255) not null,
    description text,
    url varchar(255),
    start_date date not null,
    end_date date,
    start_time time,
    location varchar(255),
    image varchar(255));

SELECT * from events;
DROP TABLE events;

INSERT INTO events(title,start_date) values ('Event 1','2020-12-15');
INSERT INTO events(title,start_date) values ('Event 1','2020-12-18');
INSERT INTO events(title,start_date) values ('Event 1','2020-12-15');
INSERT INTO events(title,start_date) values ('Event 1','2020-12-15');

CREATE TABLE locations(
    id int auto_increment primary key,
    name  varchar(255) not null null ,
    description text,
    street varchar(255),
    city varchar(255)
);

CREATE TABLE categories(
    id int auto_increment primary key,
    name  varchar(255) not null null
);

INSERT INTO categories(name) values ('funeral');
INSERT INTO categories(name) values ('marrage');



alter table categories
 add column categories_id int,
 add constraint fk_location_id
 foreign key (categories_id) references categories(id);

 alter table categories
  drop column ;

select * from categories;




 alter table events
 add column location_id int,
 add constraint fk_location_id
 foreign key (location_id) references locations(id);

 alter table events
 drop column location;

select * from events;