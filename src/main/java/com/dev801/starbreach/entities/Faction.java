package com.dev801.starbreach.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity(name = "factions")
public class Faction {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private String text;

	@OneToMany(mappedBy = "faction")
	private List<Relic> relics;

	@OneToMany(mappedBy = "faction")
	private List<FactionSpecialRule> factionSpecialRules;

	@OneToMany(mappedBy = "faction")
	private List<Soldier> soldiers;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "psychic_school_factions", joinColumns = @JoinColumn(name = "psychic_school_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "faction_id", referencedColumnName = "id"))
	private List<PsychicSchool> psychicSchools;


	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "weapons_factions", joinColumns = @JoinColumn(name = "faction_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "weapon_id", referencedColumnName = "id"))
	private List<Weapon> weapons;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public List<Relic> getRelics() {
		return relics;
	}

	public void setRelics(List<Relic> relics) {
		this.relics = relics;
	}

	@Override
	public String toString() {
		String s = getName() + " :: " + getText();

		// getRelics().stream().forEach(System.out::println);

		return s;
	}

	public List<FactionSpecialRule> getFactionSpecialRules() {
		return factionSpecialRules;
	}

	public void setFactionSpecialRules(List<FactionSpecialRule> factionSpecialRules) {
		this.factionSpecialRules = factionSpecialRules;
	}

	public List<PsychicSchool> getPsychicSchools() {
		return psychicSchools;
	}

	public void setPsychicSchools(List<PsychicSchool> psychicSchools) {
		this.psychicSchools = psychicSchools;
	}

	public List<Soldier> getSoldiers() {
		return soldiers;
	}

	public void setSoldiers(List<Soldier> soldiers) {
		this.soldiers = soldiers;
	}

	public List<Weapon> getWeapons() {
		return weapons;
	}

	public void setWeapons(List<Weapon> weapons) {
		this.weapons = weapons;
	}
}
