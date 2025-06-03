select b.naziv as smjer, a.naziv as grupa, a.predavac
from grupe a inner join smjerovi b
on a.smjer=b.sifra;

select * from smjerovi;