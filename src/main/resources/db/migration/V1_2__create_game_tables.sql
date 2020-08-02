
--+++++++++++++++++++++++++++++++++++++

--3
create table factions (
	id SERIAL not null primary key,
	name VARCHAR(32) unique NOT NULL, 
	text varchar(4096)
);
--+++++++++++++++++++++++++++++++++++++

--5
create table psychic_schools (
	id SERIAL not null primary key,
	name VARCHAR(128) unique NOT NULL,
	text VARCHAR(4096) NOT NULL
);
--+++++++++++++++++++++++++++++++++++++

-4
create table faction_special_rules (
	id SERIAL not null primary key,
	faction_id INTEGER not null,
	name VARCHAR(128) unique NOT NULL,
	text VARCHAR(4096) NOT NULL,
	primary key (faction_id, rule_name)
);
ALTER TABLE faction_special_rules ADD CONSTRAINT FK_faction_special_rules_factions FOREIGN KEY (faction_id) REFERENCES factions(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++

create table special_rules (
	id SERIAL not null primary key,
	name VARCHAR(128) unique NOT NULL,
	text VARCHAR(4096) NOT NULL
);
--+++++++++++++++++++++++++++++++++++++

create table weapons (
	id SERIAL not null primary key,
	name VARCHAR(32) unique not null,
	cost INTEGER not null,
	range VARCHAR(32) not null,
	attack_rolls_per_target INTEGER not null,
	damage_bonus INTEGER not null,
	special_rules_id INTEGER 
);
--+++++++++++++++++++++++++++++++++++++

create table weapon_special_rules (
	id SERIAL not null primary key,
	weapon_id INTEGER not null,
	special_rule_id INTEGER not null,
	primary key (weapon_id, special_rule_id)
);
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_weapon_special_rules_weapons FOREIGN KEY (weapon_id) REFERENCES weapons(id) ON DELETE CASCADE;
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_weapon_special_rules_special_rule FOREIGN KEY (special_rule_id) REFERENCES special_rules(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++

create table psychic_powers(
	id SERIAL not null primary key,
	psychic_school_id INTEGER not null,
	name VARCHAR(128) unique NOT NULL,
	level INTEGER not null,
	text VARCHAR(4096) NOT NULL,
	primary key (psychic_school_id, psychic_name)

);
ALTER TABLE psychic_powers ADD CONSTRAINT FK_psychic_powers_psychic_schools FOREIGN KEY (psychic_school_id) REFERENCES psychic_schools(id) ON DELETE CASCADE;
--+++++++++++++++++++++++++++++++++++++

create table psychic_school_factions(
	id SERIAL not null primary key,
	psychic_school_id INTEGER not null,
	faction_id INTEGER not null,
	primary key (psychic_school_id, faction_id)
);
ALTER TABLE psychic_school_factions ADD CONSTRAINT FK_psychic_school_id FOREIGN KEY (psychic_school_id) REFERENCES psychic_schools(id) ON DELETE CASCADE;
ALTER TABLE psychic_school_factions ADD CONSTRAINT FK_psychic_school_faction_id FOREIGN KEY (faction_id) REFERENCES factions(id);
--+++++++++++++++++++++++++++++++++++++

create table skills (
	id SERIAL not null primary key,
	name VARCHAR(32) not null,
	level INTEGER not null,
	text VARCHAR(4096) not null,
	primary key (name, level)
);
--+++++++++++++++++++++++++++++++++++++

create table faction_soldiers (
	solider_type_id INTEGER not null,
	faction_id INTEGER not null,
	PRIMARY KEY(soldier_type_id, faction_id)
)
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_faction_soldiers_factions FOREIGN KEY (solider_type_id) REFERENCES soldiers(id) ON DELETE CASCADE;
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_faction_soldiers_soldiers FOREIGN KEY (faction_id) REFERENCES factions(id) ON DELETE CASCADE;
--+++++++++++++++++++++++++++++++++++++

create table soldier_types (
	id SERIAL not null primary key,
	type VARCHAR(32) unique not null
);
insert into soldier_types (name) values ('Alpha');
insert into soldier_types (name) values ('Specialist');
insert into soldier_types (name) values ('Soldier');
--+++++++++++++++++++++++++++++++++++++

create table soldiers (
	id SERIAL not null primary key,
	solider_type_id INTEGER not null,
	faction_id INTEGER not null,
	name VARCHAR(32) unique not null,
	move INTEGER not null,
	initiative INTEGER not null,
	health INTEGER not null,
	armor INTEGER not null,
	cost INTEGER not null,
	mech bit default 0,
	primary key (solider_type_id, faction_id, name)
);
ALTER TABLE soldiers ADD CONSTRAINT FK_soldiers_factions FOREIGN KEY (faction_id) REFERENCES factions(id) ON DELETE CASCADE;
ALTER TABLE soldiers ADD CONSTRAINT FK_soldiers_soldier_type FOREIGN KEY (solider_type_id) REFERENCES soldier_types(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++
create table relics(
	id SERIAL not null primary key,
	faction_id INTEGER not null,
	name VARCHAR(32) unique not null,
	cost INTEGER not null,
	special_effect VARCHAR(4096) NOT NULL,
	primary key (faction_id, name)
)