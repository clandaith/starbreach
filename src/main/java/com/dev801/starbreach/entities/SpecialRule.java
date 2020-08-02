package com.dev801.starbreach.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "special_rules")
public class SpecialRule {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private Integer level;
	private String text;
	@Column(name = "weapon_only")
	private Boolean weaponOnly;

	protected SpecialRule() {

	}

	public SpecialRule(String name, Integer level, String text, Boolean weaponOnly) {
		this.name = name;
		this.level = level;
		this.text = text;
		this.weaponOnly = weaponOnly;
	}

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

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Boolean getWeaponOnly() {
		return weaponOnly;
	}

	public void setWeaponOnly(Boolean weaponOnly) {
		this.weaponOnly = weaponOnly;
	}

}
