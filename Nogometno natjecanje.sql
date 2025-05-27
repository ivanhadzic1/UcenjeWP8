use master;
go
drop database if exists nogometnonatjecanje;
go
create database nogometnonatjecanje collate Croatian_CI_AS;
go
use nogometnonatjecanje;

create table natjecanje(
sifra int not null primary key identity (1000,1),
naziv varchar (50) not null,
mjesto varchar (50) not null,
);

create table ekipa(
sifra int not null primary key identity (1,1),
naziv varchar(50) not null,
brojigraca int not null,
kapetan varchar(50) not null,
mjesto varchar(50) not null
);

create table utakmica(
sifra int not null primary key identity (1,1),
datumivrijeme datetime not null,
domacin int not null references ekipa (sifra),
gost int not null references ekipa (sifra),
);

create table igrac (
sifra int not null primary key identity(100,1),
ime varchar(50) not null,
prezime varchar(50) not null,
brojdresa int not null,
ekipa int not null references ekipa (sifra)
);