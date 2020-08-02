
--+++++++++++++++++++++++++++++++++++++

-- file 3
create table factions (
	id SERIAL not null primary key,
	name VARCHAR(32) unique NOT NULL, 
	text varchar(4096)
);
--+++++++++++++++++++++++++++++++++++++

-- file 5
create table psychic_schools (
	id SERIAL not null primary key,
	name VARCHAR(128) unique NOT NULL,
	text VARCHAR(4096) NOT NULL
);
--+++++++++++++++++++++++++++++++++++++

-- file 4
create table faction_special_rules (
	id SERIAL primary key not null,
	faction_id INTEGER not null,
	name VARCHAR(128) unique NOT NULL,
	text VARCHAR(4096) NOT NULL,
	CONSTRAINT faction_special_rules_unique_values UNIQUE (faction_id, name)
);
ALTER TABLE faction_special_rules ADD CONSTRAINT FK_faction_special_rules_factions FOREIGN KEY (faction_id) REFERENCES factions(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++
-- file 6
create table special_rules (
	id SERIAL primary key not null,
	name VARCHAR(32) not null,
	level INTEGER not null,
	text VARCHAR(4096) not null,
	weapon_only boolean not null default false,
	CONSTRAINT special_rules_unique_values UNIQUE (name, level)
);
--+++++++++++++++++++++++++++++++++++++
-- hopefully get raw data for insert creation
create table weapons (
	id SERIAL not null primary key,
	name VARCHAR(32) unique not null,
	cost INTEGER not null,
	range INTEGER not null,
	attack_rolls_per_target INTEGER not null,
	damage_bonus INTEGER not null,
	special_rules_id INTEGER,
	melee boolean default false,
	unwiedly boolean default false,
	aoe boolean default false,
	compact boolean default false,
	mech boolean default false
);
--+++++++++++++++++++++++++++++++++++++

create table weapon_special_rules (
	id SERIAL primary key not null,
	weapon_id INTEGER not null,
	special_rule_id INTEGER not null,
	CONSTRAINT weapon_special_rules_unique_values UNIQUE (weapon_id, special_rule_id)
);
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_weapon_special_rules_weapons FOREIGN KEY (weapon_id) REFERENCES weapons(id) ON DELETE CASCADE;
ALTER TABLE weapon_special_rules ADD CONSTRAINT FK_weapon_special_rules_special_rule FOREIGN KEY (special_rule_id) REFERENCES special_rules(id) ON DELETE CASCADE;

--+++++++++++++++++++++++++++++++++++++
-- file 7
create table psychic_powers(
	id SERIAL primary key not null,
	psychic_school_id INTEGER not null,
	name VARCHAR(128) unique NOT NULL,
	level INTEGER not null,
	text VARCHAR(4096) NOT NULL,
	CONSTRAINT psychic_powers_unique_values UNIQUE (psychic_school_id, name, level)

);
ALTER TABLE psychic_powers ADD CONSTRAINT FK_psychic_powers_psychic_schools FOREIGN KEY (psychic_school_id) REFERENCES psychic_schools(id) ON DELETE CASCADE;
--+++++++++++++++++++++++++++++++++++++
-- file 8
create table psychic_school_factions(
	id SERIAL primary key not null,
	psychic_school_id INTEGER not null,
	faction_id INTEGER not null,
	CONSTRAINT psychic_school_factions_unique_values UNIQUE (psychic_school_id, faction_id)
);
ALTER TABLE psychic_school_factions ADD CONSTRAINT FK_psychic_school_id FOREIGN KEY (psychic_school_id) REFERENCES psychic_schools(id) ON DELETE CASCADE;
ALTER TABLE psychic_school_factions ADD CONSTRAINT FK_psychic_school_faction_id FOREIGN KEY (faction_id) REFERENCES factions(id);
--+++++++++++++++++++++++++++++++++++++

create table soldier_types (
	id SERIAL not null primary key,
	type VARCHAR(32) unique not null
);
insert into soldier_types (type) values ('Alpha');
insert into soldier_types (type) values ('Specialist');
insert into soldier_types (type) values ('Soldier');
--+++++++++++++++++++++++++++++++++++++

create table soldiers (
	id SERIAL primary key not null,
	solider_type_id INTEGER not null,
	faction_id INTEGER not null,
	name VARCHAR(32) unique not null,
	move INTEGER not null,
	initiative INTEGER not null,
	health INTEGER not null,
	armor INTEGER not null,
	cost INTEGER not null,
	mech boolean  not null,
	psychic boolean  not null,
	unique_soldier boolean  not null,
	CONSTRAINT soldiers_unique_values UNIQUE (solider_type_id, faction_id, name)
);
ALTER TABLE soldiers ADD CONSTRAINT FK_soldiers_factions FOREIGN KEY (faction_id) REFERENCES factions(id) ON DELETE CASCADE;
ALTER TABLE soldiers ADD CONSTRAINT FK_soldiers_soldier_type FOREIGN KEY (solider_type_id) REFERENCES soldier_types(id) ON DELETE CASCADE;
--+++++++++++++++++++++++++++++++++++++

create table faction_soldiers (
	id SERIAL primary key not null,
	soldier_id INTEGER not null,
	faction_id INTEGER not null,
	CONSTRAINT faction_soldiers_unique_values UNIQUE (soldier_id, faction_id)
);
ALTER TABLE faction_soldiers ADD CONSTRAINT FK_faction_soldiers_factions FOREIGN KEY (soldier_id) REFERENCES soldiers(id) ON DELETE CASCADE;
ALTER TABLE faction_soldiers ADD CONSTRAINT FK_faction_soldiers_soldiers FOREIGN KEY (faction_id) REFERENCES factions(id) ON DELETE CASCADE;
--+++++++++++++++++++++++++++++++++++++

create table relics(
	id SERIAL primary key not null,
	faction_id INTEGER not null,
	name VARCHAR(32) unique not null,
	cost INTEGER not null,
	special_effect VARCHAR(4096) NOT NULL,
	CONSTRAINT relics_unique_values UNIQUE (faction_id, name)
);
ALTER TABLE relics ADD CONSTRAINT FK_relics_faction_id FOREIGN KEY (faction_id) REFERENCES factions(id);
