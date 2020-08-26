package com.dev801.starbreach.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "weapons")
public class Weapon implements Serializable {
	private static final long serialVersionUID = -460575391374407958L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String name;
	private Integer cost;
	private Integer range;

	@Column(name = "attack_rolls_per_target")
	private Integer attackRollsPerTarget;

	@Column(name = "damage_bonus")
	private Integer damageBonus;

	private Boolean melee;
	private Boolean unwieldy;
	private Boolean aoe;
	private Boolean compact;
	private Boolean mech;

	private Boolean soldier;
	private Boolean cc1;
	private Boolean cc2;
	private Boolean cc3;

	@Column(name = "no_cover_fire_order")
	private Boolean noCoverFireOrder;
	private Boolean grenade;

	@ManyToOne
	@JoinColumn(name = "special_rules_id")
	@JsonIgnore
	private SpecialRule specialRule;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "weapons_factions", joinColumns = @JoinColumn(name = "faction_id", referencedColumnName = "id"), inverseJoinColumns = @JoinColumn(name = "weapon_id", referencedColumnName = "id"))
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

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

	public Integer getRange() {
		return range;
	}

	public void setRange(Integer range) {
		this.range = range;
	}

	public Integer getAttackRollsPerTarget() {
		return attackRollsPerTarget;
	}

	public void setAttackRollsPerTarget(Integer attackRollsPerTarget) {
		this.attackRollsPerTarget = attackRollsPerTarget;
	}

	public Integer getDamageBonus() {
		return damageBonus;
	}

	public void setDamageBonus(Integer damageBonus) {
		this.damageBonus = damageBonus;
	}

	public Boolean getMelee() {
		return melee;
	}

	public void setMelee(Boolean melee) {
		this.melee = melee;
	}

	public Boolean getAoe() {
		return aoe;
	}

	public void setAoe(Boolean aoe) {
		this.aoe = aoe;
	}

	public Boolean getCompact() {
		return compact;
	}

	public void setCompact(Boolean compact) {
		this.compact = compact;
	}

	public Boolean getMech() {
		return mech;
	}

	public void setMech(Boolean mech) {
		this.mech = mech;
	}

	public SpecialRule getSpecialRule() {
		return specialRule;
	}

	public void setSpecialRule(SpecialRule specialRule) {
		this.specialRule = specialRule;
	}

	public Boolean getSoldier() {
		return soldier;
	}

	public void setSoldier(Boolean soldier) {
		this.soldier = soldier;
	}

	public Boolean getCc1() {
		return cc1;
	}

	public void setCc1(Boolean cc1) {
		this.cc1 = cc1;
	}

	public Boolean getCc2() {
		return cc2;
	}

	public void setCc2(Boolean cc2) {
		this.cc2 = cc2;
	}

	public Boolean getCc3() {
		return cc3;
	}

	public void setCc3(Boolean cc3) {
		this.cc3 = cc3;
	}

	public Boolean getNoCoverFireOrder() {
		return noCoverFireOrder;
	}

	public void setNoCoverFireOrder(Boolean noCoverFireOrder) {
		this.noCoverFireOrder = noCoverFireOrder;
	}

	public Boolean getGrenade() {
		return grenade;
	}

	public void setGrenade(Boolean grenade) {
		this.grenade = grenade;
	}

	public Boolean getUnwieldy() {
		return unwieldy;
	}

	public void setUnwieldy(Boolean unwieldy) {
		this.unwieldy = unwieldy;
	}

}
