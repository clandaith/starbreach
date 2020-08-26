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

@Entity(name = "soldiers_type_view")
public class Soldier implements Serializable {
	private static final long serialVersionUID = 3450717641230928293L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(name = "soldier_type")
	private String soldierType;

	@ManyToOne
	@JoinColumn(name = "faction_id")
	@JsonIgnore
	private Faction faction;

	private String name;
	private Integer move;
	private Integer initiative;
	private Integer health;
	private Integer armor;
	private Integer cost;
	private Boolean mech;
	private Boolean psychic;

	@Column(name = "unique_soldier")
	private Boolean uniqueSoldier;

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

	public Integer getMove() {
		return move;
	}

	public void setMove(Integer move) {
		this.move = move;
	}

	public Integer getInitiative() {
		return initiative;
	}

	public void setInitiative(Integer initiative) {
		this.initiative = initiative;
	}

	public Integer getHealth() {
		return health;
	}

	public void setHealth(Integer health) {
		this.health = health;
	}

	public Integer getArmor() {
		return armor;
	}

	public void setArmor(Integer armor) {
		this.armor = armor;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

	public Boolean getMech() {
		return mech;
	}

	public void setMech(Boolean mech) {
		this.mech = mech;
	}

	public Boolean getPsychic() {
		return psychic;
	}

	public void setPsychic(Boolean psychic) {
		this.psychic = psychic;
	}

	public Boolean getUniqueSoldier() {
		return uniqueSoldier;
	}

	public void setUniqueSoldier(Boolean uniqueSoldier) {
		this.uniqueSoldier = uniqueSoldier;
	}

	public String getSoldierType() {
		return soldierType;
	}

	public void setSoldierType(String soldierType) {
		this.soldierType = soldierType;
	}

	public Long getFactionId() {
		return faction.getId();
	}
}
