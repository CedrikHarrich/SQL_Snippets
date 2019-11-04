create table K (
	KNr int primary key,
    KName varchar(50) not null,
    Ansprechpartner varchar(50)
);

create table T (
	TNr int primary key,
    TLeiter varchar(50) not null,
    TGröße int unsigned,
    Studensatz decimal(5,2)
);

create table L (
	LNr int primary key,
    Bezeichnung varchar(50) not null,
    Komplexität int,
    check (Komplexität <= 10)
);

create table KTL (
	KNr int,
    TNr int,
    LNr int,
    Volumen float,
    Datum char(10),
    primary key (KNr, TNr, LNr),
    foreign key (KNr) references K,
    foreign key (TNr) references T,
    foreign key (LNr) references L
);

alter table K add Branche varchar(30) default 'Automobil';
alter table T drop Teamgröße;
alter table KTL modify Volumen int unsigned;
drop table KTL;
drop table K;
drop table T;
drop table L;

