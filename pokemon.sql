drop table if exists pokemon, categorie, talent, type, faiblesse;

create table pokemon (
                         numero integer primary key,
                         nom varchar(15),
                         taille float,
                         poids float,
                         type1 integer,
                         type2 integer
);

create table categorie (
                           id_categorie integer primary key,
                           nom_categorie varchar(15)
);

create table talent (
                        id_talent integer primary key,
                        nom_talent varchar(15)
);

create table type (
                      id_type integer primary key,
                      nom_type varchar(15)
);

create table faiblesse (
                           type_def integer,
                           type_off integer,
                           efficacite integer,
                           primary key (type_def, type_off),
                           constraint foreign key (type_def) references type(id_type),
                           constraint foreign key (type_off) references type(id_type)
);

insert into pokemon (numero, nom, taille, poids) values (1, 'Bulbizarre', 0.7, 6.9);
insert into pokemon (numero, nom, taille, poids) values (2, 'Herbizarre', 1, 13);
insert into pokemon (numero, nom, taille, poids) values (3, 'Florizarre', 2, 100);

insert into categorie (id_categorie, nom_categorie) values (1, 'Graine');
insert into categorie (id_categorie, nom_categorie) values (2, 'Lézard');
insert into categorie (id_categorie, nom_categorie) values (3, 'Flamme');
insert into categorie (id_categorie, nom_categorie) values (4, 'Minitortue');
insert into categorie (id_categorie, nom_categorie) values (5, 'Tortue');
insert into categorie (id_categorie, nom_categorie) values (6, 'Carapace');
insert into categorie (id_categorie, nom_categorie) values (7, 'Ver');
insert into categorie (id_categorie, nom_categorie) values (8, 'Cocon');
insert into categorie (id_categorie, nom_categorie) values (9, 'Papillon');
insert into categorie (id_categorie, nom_categorie) values (10, 'Insectopic');
insert into categorie (id_categorie, nom_categorie) values (11, 'Guêpoison');
insert into categorie (id_categorie, nom_categorie) values (12, 'Minoiseau');
insert into categorie (id_categorie, nom_categorie) values (13, 'Oiseau');
insert into categorie (id_categorie, nom_categorie) values (14, 'Souris');
insert into categorie (id_categorie, nom_categorie) values (15, 'Bec-Oiseau');
insert into categorie (id_categorie, nom_categorie) values (16, 'Serpent');
insert into categorie (id_categorie, nom_categorie) values (17, 'Cobra');
insert into categorie (id_categorie, nom_categorie) values (18, 'Statik');
insert into categorie (id_categorie, nom_categorie) values (19, 'Vénépic');
insert into categorie (id_categorie, nom_categorie) values (20, 'Perceur');
insert into categorie (id_categorie, nom_categorie) values (21, 'Fée');
insert into categorie (id_categorie, nom_categorie) values (22, 'Renard');
insert into categorie (id_categorie, nom_categorie) values (23, 'Bouboule');
insert into categorie (id_categorie, nom_categorie) values (24, 'Chovsouris');
insert into categorie (id_categorie, nom_categorie) values (25, 'Racine');
insert into categorie (id_categorie, nom_categorie) values (26, 'Fleur');
insert into categorie (id_categorie, nom_categorie) values (27, 'Champignon');
insert into categorie (id_categorie, nom_categorie) values (28, 'Vermine');
insert into categorie (id_categorie, nom_categorie) values (29, 'Papipoison');
insert into categorie (id_categorie, nom_categorie) values (30, 'Taupe');
insert into categorie (id_categorie, nom_categorie) values (31, 'Chadégout');
insert into categorie (id_categorie, nom_categorie) values (32, 'Chadeville');
insert into categorie (id_categorie, nom_categorie) values (33, 'Canard');
insert into categorie (id_categorie, nom_categorie) values (34, 'Porsinge');
insert into categorie (id_categorie, nom_categorie) values (35, 'Chiot');
insert into categorie (id_categorie, nom_categorie) values (36, 'Légendaire');
insert into categorie (id_categorie, nom_categorie) values (37, 'Têtard');
insert into categorie (id_categorie, nom_categorie) values (38, 'Psy');
insert into categorie (id_categorie, nom_categorie) values (39, 'Colosse');

insert into talent (id_talent, nom_talent) values (1, 'Engrais');
insert into talent (id_talent, nom_talent) values (2, 'Brasier');
insert into talent (id_talent, nom_talent) values (3, 'Torrent');
insert into talent (id_talent, nom_talent) values (4, 'Écran Poudre');
insert into talent (id_talent, nom_talent) values (5, 'Mue');
insert into talent (id_talent, nom_talent) values (6, 'Oeil Composé');
insert into talent (id_talent, nom_talent) values (7, 'Essaim');
insert into talent (id_talent, nom_talent) values (8, 'Regard Vif');
insert into talent (id_talent, nom_talent) values (9, 'Pieds Confus');
insert into talent (id_talent, nom_talent) values (10, 'Fuite');
insert into talent (id_talent, nom_talent) values (11, 'Cran');
insert into talent (id_talent, nom_talent) values (12, 'Intimidation');
insert into talent (id_talent, nom_talent) values (13, 'Voile Sable');
insert into talent (id_talent, nom_talent) values (14, 'Point Poison');
insert into talent (id_talent, nom_talent) values (15, 'Rivalité');
insert into talent (id_talent, nom_talent) values (16, 'Joli Sourire');
insert into talent (id_talent, nom_talent) values (17, 'Garde Magik');
insert into talent (id_talent, nom_talent) values (18, 'Torche');
insert into talent (id_talent, nom_talent) values (19, 'Battant');
insert into talent (id_talent, nom_talent) values (20, 'Attention');
insert into talent (id_talent, nom_talent) values (21, 'Chlorophylle');
insert into talent (id_talent, nom_talent) values (22, 'Pose Spore');
insert into talent (id_talent, nom_talent) values (23, 'Peau Sèche');
insert into talent (id_talent, nom_talent) values (24, 'Lentiteintée');
insert into talent (id_talent, nom_talent) values (25, 'Piège');
insert into talent (id_talent, nom_talent) values (26, 'Ramassage');
insert into talent (id_talent, nom_talent) values (27, 'Technicien');
insert into talent (id_talent, nom_talent) values (28, 'Échauffement');
insert into talent (id_talent, nom_talent) values (29, 'Moiteur');
insert into talent (id_talent, nom_talent) values (30, 'Ciel Gris');
insert into talent (id_talent, nom_talent) values (31, 'Esprit Vital');
insert into talent (id_talent, nom_talent) values (32, 'Colérique');
insert into talent (id_talent, nom_talent) values (33, 'Absorb Eau');
insert into talent (id_talent, nom_talent) values (34, 'Synchro');
insert into talent (id_talent, nom_talent) values (35, 'Cran');
insert into talent (id_talent, nom_talent) values (36, 'Annule Garde');

insert into type (id_type, nom_type) values (1, 'Plante');
insert into type (id_type, nom_type) values (2, 'Poison');
insert into type (id_type, nom_type) values (3, 'Feu');
insert into type (id_type, nom_type) values (4, 'Vol');
insert into type (id_type, nom_type) values (5, 'Eau');
insert into type (id_type, nom_type) values (6, 'Insecte');
insert into type (id_type, nom_type) values (7, 'Normal');
insert into type (id_type, nom_type) values (8, 'Électrik');
insert into type (id_type, nom_type) values (9, 'Sol');
insert into type (id_type, nom_type) values (10, 'Fée');
insert into type (id_type, nom_type) values (11, 'Combat');
insert into type (id_type, nom_type) values (12, 'Psy');
insert into type (id_type, nom_type) values (13, 'Roche');
insert into type (id_type, nom_type) values (14, 'Acier');
insert into type (id_type, nom_type) values (15, 'Glace');
insert into type (id_type, nom_type) values (16, 'Spectre');
insert into type (id_type, nom_type) values (17, 'Dragon');
insert into type (id_type, nom_type) values (18, 'Ténèbre');

insert into pokemon (numero, nom, taille, poids) values (4, 'Salamèche', 0.6, 8.5);
insert into pokemon (numero, nom, taille, poids) values (5, 'Reptincel', 1.1, 19);
insert into pokemon (numero, nom, taille, poids) values (6, 'Dracaufeu', 1.7, 90.5);
insert into pokemon (numero, nom, taille, poids) values (7, 'Carapuce', 0.5, 9.0);
insert into pokemon (numero, nom, taille, poids) values (8, 'Carabaffe', 1, 22.5);
insert into pokemon (numero, nom, taille, poids) values (9, 'Tortank', 1.6, 85.5);
insert into pokemon (numero, nom, taille, poids) values (10, 'Chenipan', 0.3, 2.9);
insert into pokemon (numero, nom, taille, poids) values (11, 'Chrysacier', 0.7, 9.9);
insert into pokemon (numero, nom, taille, poids) values (12, 'Papilusion', 1.1, 32);
insert into pokemon (numero, nom, taille, poids) values (13, 'Aspicot', 0.3, 3.2);
insert into pokemon (numero, nom, taille, poids) values (14, 'Coconfort', 0.6, 10);
insert into pokemon (numero, nom, taille, poids) values (15, 'Dardagnan', 1, 29.5);
insert into pokemon (numero, nom, taille, poids) values (16, 'Roucool', 0.3, 1.8);
insert into pokemon (numero, nom, taille, poids) values (17, 'Roucoups', 1.1, 30);
insert into pokemon (numero, nom, taille, poids) values (18, 'Roucarnage', 1.5, 39.5);
insert into pokemon (numero, nom, taille, poids) values (19, 'Rattata', 0.3, 3.5);
insert into pokemon (numero, nom, taille, poids) values (20, 'Rattatac', 0.7, 18.5);
insert into pokemon (numero, nom, taille, poids) values (21, 'Piafabec', 0.3, 2);
insert into pokemon (numero, nom, taille, poids) values (22, 'Rapasdepic', 1.2, 38);
insert into pokemon (numero, nom, taille, poids) values (23, 'Abo', 2, 6.9);
insert into pokemon (numero, nom, taille, poids) values (24, 'Arbok', 3.5, 65);
insert into pokemon (numero, nom, taille, poids) values (25, 'Pikachu', 0.4, 6);
insert into pokemon (numero, nom, taille, poids) values (26, 'Raichu', 0.8, 30);
insert into pokemon (numero, nom, taille, poids) values (27, 'Sabelette', 0.6, 12);
insert into pokemon (numero, nom, taille, poids) values (28, 'Sablaireau', 1, 29.5);
insert into pokemon (numero, nom, taille, poids) values (29, 'Nidoran♀', 0.4, 7);
insert into pokemon (numero, nom, taille, poids) values (30, 'Nidorina', 0.8, 20);
insert into pokemon (numero, nom, taille, poids) values (31, 'Nidoqueen', 1.3, 60);
insert into pokemon (numero, nom, taille, poids) values (32, 'Nidoran♂', 0.5, 9);
insert into pokemon (numero, nom, taille, poids) values (33, 'Nidorino', 0.9, 19.5);
insert into pokemon (numero, nom, taille, poids) values (34, 'Nidoking', 1.4, 62);
insert into pokemon (numero, nom, taille, poids) values (35, 'Mélofée', 0.6, 7.5);
insert into pokemon (numero, nom, taille, poids) values (36, 'Melodelfe', 1.3, 40);
insert into pokemon (numero, nom, taille, poids) values (37, 'Goupix', 0.6, 9.9);
insert into pokemon (numero, nom, taille, poids) values (38, 'Feunard', 1.1, 19.9);
insert into pokemon (numero, nom, taille, poids) values (39, 'Rondoudou', 0.5, 5.5);
insert into pokemon (numero, nom, taille, poids) values (40, 'Grodoudou', 1, 12);
insert into pokemon (numero, nom, taille, poids) values (41, 'Nosferapti', 0.8, 7.5);
insert into pokemon (numero, nom, taille, poids) values (42, 'Nosferalto', 1.6, 55);
insert into pokemon (numero, nom, taille, poids) values (43, 'Mystherbe', 0.5, 5.4);
insert into pokemon (numero, nom, taille, poids) values (44, 'Ortide', 0.8, 8.6);
insert into pokemon (numero, nom, taille, poids) values (45, 'Rafflesia', 1.2, 18.6);
insert into pokemon (numero, nom, taille, poids) values (46, 'Paras', 0.3, 5.4);
insert into pokemon (numero, nom, taille, poids) values (47, 'Parasect', 1, 29.5);
insert into pokemon (numero, nom, taille, poids) values (48, 'Mimitoss', 1, 30);
insert into pokemon (numero, nom, taille, poids) values (49, 'Aéromite', 1.5, 12.5);
insert into pokemon (numero, nom, taille, poids) values (50, 'Taupiqueur', 0.2, 0.8);
insert into pokemon (numero, nom, taille, poids) values (51, 'Triopikeur', 0.7, 33.3);
insert into pokemon (numero, nom, taille, poids) values (52, 'Miaouss', 0.4, 4.2);
insert into pokemon (numero, nom, taille, poids) values (53, 'Persian', 1, 32);
insert into pokemon (numero, nom, taille, poids) values (54, 'Psykokwak', 0.8, 19.6);
insert into pokemon (numero, nom, taille, poids) values (55, 'Akwakwak', 1.7, 76.6);
insert into pokemon (numero, nom, taille, poids) values (56, 'Férosinge', 0.5, 28);
insert into pokemon (numero, nom, taille, poids) values (57, 'Colosinge', 1, 32);
insert into pokemon (numero, nom, taille, poids) values (58, 'Caninos', 0.7, 19);
insert into pokemon (numero, nom, taille, poids) values (59, 'Arcanin', 1.9, 155);
insert into pokemon (numero, nom, taille, poids) values (60, 'Ptitard', 0.6, 12.4);
insert into pokemon (numero, nom, taille, poids) values (61, 'Têtarte', 1, 20);
insert into pokemon (numero, nom, taille, poids) values (62, 'Tartard', 1.3, 54);
insert into pokemon (numero, nom, taille, poids) values (63, 'Abra', 0.9, 19.5);
insert into pokemon (numero, nom, taille, poids) values (64, 'Kadabra', 1.3, 56.5);
insert into pokemon (numero, nom, taille, poids) values (65, 'Alakazam', 1.5, 48);
insert into pokemon (numero, nom, taille, poids) values (66, 'Machoc', 0.8, 19.5);
insert into pokemon (numero, nom, taille, poids) values (67, 'Machopeur', 1.5, 70.5);
insert into pokemon (numero, nom, taille, poids) values (68, 'Mackogneur', 1.6, 130);

select pokemon.nom, T1.nom_type, T2.nom_type        # selectionner les 2 types de bulbizarre
from pokemon
inner join type T1 on pokemon.type1 = T1.id_type
inner join type T2 on pokemon.type2 = T2.id_type
where numero = 1;

select pokemon.numero, pokemon.nom, pokemon.taille, pokemon.poids, T1.nom_type as type1, T2.nom_type as type2
from pokemon
inner join type T1 on pokemon.type1 = T1.id_type
left join type T2 on pokemon.type2 = T2.id_type;

update pokemon set type1 = 1, type2 = 2 where numero = 1;
update pokemon set type1 = 1, type2 = 2 where numero in (2, 3);
update pokemon set type1 = 3 where numero in (4, 5);
update pokemon set type1 = 3, type2 = 4 where numero = 6;
update pokemon set type1 = 5 where numero in (7, 8, 9);
update pokemon set type1 = 6 where numero in (10, 11);
update pokemon set type1 = 6, type2 = 4 where numero = 12;
update pokemon set type1 = 6, type2 = 2 where numero in (13, 14, 15);
update pokemon set type1 = 7, type2 = 4 where numero in (16, 17, 18);
update pokemon set type1 = 7 where numero in (19, 20);
update pokemon set type1 = 7, type2 = 4 where numero in (21, 22);
update pokemon set type1 = 2 where numero in (23, 24);
update pokemon set type1 = 8 where numero in (25, 26);
update pokemon set type1 = 9 where numero in (27, 28);
update pokemon set type1 = 2 where numero in (29, 30);
update pokemon set type1 = 2, type2 = 9 where numero = 31;
update pokemon set type1 = 2 where numero in (32, 33);
update pokemon set type1 = 2, type2 = 9 where numero = 34;
update pokemon set type1 = 10 where numero in (35, 36);
update pokemon set type1 = 3 where numero in (37, 38);
update pokemon set type1 = 7, type2 = 10 where numero in (39, 40);
update pokemon set type1 = 2, type2 = 4 where numero in (41, 42);
update pokemon set type1 = 1, type2 = 2 where numero in (43, 44, 45);
update pokemon set type1 = 6, type2 = 1 where numero in (46, 47);
update pokemon set type1 = 6, type2 = 2 where numero in (48, 49);
update pokemon set type1 = 9 where numero in (50, 51);
update pokemon set type1 = 7 where numero in (52, 53);
update pokemon set type1 = 5 where numero in (54, 55);
update pokemon set type1 = 11 where numero in (56, 57);
update pokemon set type1 = 3 where numero in (58, 59);
update pokemon set type1 = 5 where numero in (60, 61);
update pokemon set type1 = 5, type2 = 11 where numero = 62;
update pokemon set type1 = 12 where numero in (63, 64, 65);
update pokemon set type1 = 11 where numero in (66, 67, 68);

select * from pokemon;
select * from type;

select count(pokemon.nom), T1.nom_type, T2.nom_type
from pokemon
inner join type T1 on pokemon.type1 = T1.id_type
left join type T2 on pokemon.type2 = T2.id_type
group by pokemon.type1, pokemon.type2;

select round(sum(pokemon.poids),1) as "Poids total"
from pokemon;

alter table pokemon add foreign key (type1) references type(id_type);
alter table pokemon add foreign key (type2) references type(id_type);

select pokemon.nom from pokemon;

select count(pokemon.numero) from pokemon;


select pokemon.numero, pokemon.nom, pokemon.taille, pokemon.poids, T1.nom_type as type1, T2.nom_type as type2 from pokemon inner join type T1 on pokemon.type1 = T1.id_type left join type T2 on pokemon.type2 = T2.id_type where pokemon.numero = ?
