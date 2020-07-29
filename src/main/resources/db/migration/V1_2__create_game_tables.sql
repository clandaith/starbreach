
--+++++++++++++++++++++++++++++++++++++

create table warbands (
	id SERIAL not null primary key,
	name VARCHAR(32) unique NOT NULL, 
	faction_text varchar(4096)
);
--+++++++++++++++++++++++++++++++++++++

create table warband_special_rules (
	id SERIAL not null primary key,
	warband_id INTEGER not null,
	rule_name VARCHAR(128) unique NOT NULL,
	rule_text VARCHAR(4096) unique NOT NULL
);
ALTER TABLE warband_special_rules ADD CONSTRAINT FK_warband_special_rules FOREIGN KEY (warband_id) REFERENCES warbands(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++

create table special_rules (
	id SERIAL not null primary key,
	rule_name VARCHAR(128) unique NOT NULL,
	rule_text VARCHAR(4096) unique NOT NULL
)
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
	special_rule_id INTEGER not null
)
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_weapon_special_rules_weaponss FOREIGN KEY (weapon_id) REFERENCES weapons(id) ON DELETE CASCADE;
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_weapon_special_rules_special_rule FOREIGN KEY (special_rule_id) REFERENCES special_rules(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++

create table psychic_schools (
	id SERIAL not null primary key,
	psychic_name VARCHAR(128) unique NOT NULL,
	psychic_text VARCHAR(4096) unique NOT NULL,
);
--+++++++++++++++++++++++++++++++++++++

create table psychic_powers(
	id SERIAL not null primary key,
	psychic_name VARCHAR(128) unique NOT NULL,
	psychic_text VARCHAR(4096) unique NOT NULL,
	power_level INTEGER not null

);
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_weapon_special_rules_weaponss FOREIGN KEY (weapon_id) REFERENCES weapons(id) ON DELETE CASCADE;
--+++++++++++++++++++++++++++++++++++++

create table skills (
	id SERIAL not null primary key,

);
--+++++++++++++++++++++++++++++++++++++

create table soldier_types (
	id SERIAL not null primary key,
	type VARCHAR(32) unique not null
);
--+++++++++++++++++++++++++++++++++++++

create table soldiers (
	id SERIAL not null primary key,
	solider_type_id INTEGER not null,
	name VARCHAR(32) unique not null,
	move INTEGER not null,
	initiative INTEGER not null,
	health INTEGER not null,
	armor INTEGER not null,
	cost INTEGER not null,
	warband_id INTEGER not null
);
ALTER TABLE soldiers ADD CONSTRAINT FK_soldiers_warbands FOREIGN KEY (warband_id) REFERENCES warbands(id) ON DELETE CASCADE;
ALTER TABLE soldiers ADD CONSTRAINT FK_soldiers_soldier_type FOREIGN KEY (solider_type_id) REFERENCES soldier_types(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++
