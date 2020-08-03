package com.dev801.starbreach.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "weapons")
public class Weapon {

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
	private Boolean unwiedly;
	private Boolean aoe;
	private Boolean compact;
	private Boolean mech;

	@ManyToOne
	@JoinColumn(name = "special_rules_id")
	@JsonIgnore
	private SpecialRule specialRule;

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

	public Boolean getUnwiedly() {
		return unwiedly;
	}

	public void setUnwiedly(Boolean unwiedly) {
		this.unwiedly = unwiedly;
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

}
