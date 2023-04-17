create database VideoGames;
use VideoGames;

create table Company(
ID int primary key,
name varchar(255),
Headquarter varchar(255)
);

create table Console(
name varchar(255) primary key,
Company varchar(255),
units decimal(8,2),
year int,
CompanyID int not null,
Foreign key(CompanyID) references Company(ID)
);

create table Games(
name varchar(255) primary key,
Console varchar(255) not null,
Company varchar(255),
units decimal(8,2),
year int,
CompanyID int,
Foreign key (Console) references Console(name)
);
Alter table  Games
Drop column CompanyID;

Insert into Company()
values(1,'Nintendo','Kyoto,Japan'),
(2,'Sony','Tokyo,Japan');

insert into Company()
values(3,'Microsoft','Redmond,WA'),
(4,'Sega','Shinagawa City,Tokyo,Japan');

select*from Company;

Insert into Console()
Values('Nintendo Switch','Nintendo','122.55',2017,1);

Insert into Console()
Values('PlayStation 5','Sony',4.5,2020,2),
('Xbox Series X','Microsoft',18.5,2020,3),
('Sega Genesis','Sega',2.24,1989,4);

Update Console
set units=18.0
where name='Sega Genesis';

select* from Console 
inner join Company
on Company.ID=Console.CompanyID;

Select Console.name,Console.year,units,Company.name as'Company',Company.ID
from Console 
inner join Company on Company.ID=Console.CompanyID;

insert into Games()
values('Kirby and the Forgotten Land','Nintendo Switch','HAL Labortory/Nintendo',6.12,2022);

insert into Games()
Values('God of War Ragnarök','PlayStation 4','Santa Monica Studio/Sony',11.0,2022),
('Forza Horizon 5','Xbox Series X', 'Playground Games/Xbox Games Studio',4.0,2021),
('Sonic The Hedgehog', 'Sega Genesis','Sonic Team/Sega',15.0,1991);

Select* from Games where Console like '%nintendo%';