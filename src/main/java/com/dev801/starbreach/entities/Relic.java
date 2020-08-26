package com.dev801.starbreach.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "relics")
public class Relic implements Serializable {
	private static final long serialVersionUID = 618577542968869816L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "faction_id")
	@JsonIgnore
	private Faction faction;

	private String name;
	private Integer cost;
	@Column(name = "special_effect")
	private String specialEffect;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Faction getFaction() {
		return faction;
	}

	public void setFaction(Faction faction) {
		this.faction = faction;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

	public String getSpecialEffect() {
		return specialEffect;
	}

	public void setSpecialEffect(String specialEffect) {
		this.specialEffect = specialEffect;
	}

	public Long getFactionId() {
		return faction.getId();
	}

	@Override
	public String toString() {
		return getName() + " :: " + getCost() + " :: " + getSpecialEffect();
	}
}
