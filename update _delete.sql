use edunovawp8;

select * from smjerovi where sifra=2;

--update naredba

update smjerovi
set aktivan=1
where sifra=2;

update smjerovi set 
cijena=1000,
datumpokretanja='2024-02-29'
where sifra=3;

update smjerovi set cijena=1000 where cijena is null;

select * from smjerovi;

-- naredba za podizanje cijene za 12%
update smjerovi set cijena = cijena * 1.12

-- naredba za smanjivanje cijene za 10%

update smjerovi set cijena = cijena * 0.90;

--popust na smjerove u iznosu 100 eura

update smjerovi set cijena = cijena - 100;

--delete naredba

select * from smjerovi;

delete smjerovi where sifra=1;
delete grupe where smjer=1;
delete clanovi where grupa in (select sifra from grupe where smjer=1);