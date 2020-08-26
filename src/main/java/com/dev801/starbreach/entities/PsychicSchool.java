package com.dev801.starbreach.entities;

import java.io.Serializable;
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

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "psychic_schools")
public class PsychicSchool implements Serializable {
	private static final long serialVersionUID = -5325323649882102229L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private String text;

	@OneToMany(mappedBy = "psychicSchool")
	List<PsychicPower> psychicPowers;

	@ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinTable(name = "psychic_school_factions", joinColumns = @JoinColumn(name = "faction_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "psychic_school_id", referencedColumnName = "id"))
	@JsonIgnore
	private List<Faction> factions;

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

	public List<PsychicPower> getPsychicPowers() {
		return psychicPowers;
	}

	public void setPsychicPowers(List<PsychicPower> psychicPowers) {
		this.psychicPowers = psychicPowers;
	}

	public List<Faction> getFactions() {
		return factions;
	}

	public void setFactions(List<Faction> factions) {
		this.factions = factions;
	}

}
