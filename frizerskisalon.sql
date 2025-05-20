use master;
go
drop database if exists frizerskisalon;
go
create database frizerskisalon;
go
use frizerskisalon

create table djelatnici(
sifra int not null primary key identity(1,1),
ime varchar(50) not null,
prezime varchar(50) not null
);

create table usluge (
sifra int not null primary key identity(1,1),
naziv varchar(50) not null,
cijena decimal (10,2) not null,
);

create table korisnici (
usluga int not null references usluge(sifra),
djelatnik int not null references djelatnici(sifra),
);