package com.dev801.starbreach.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "factions")
public class Faction {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String name;
	private String text;

	// +++++++++++++++++++++++++++++

	@OneToMany(mappedBy = "faction")
	private List<Relic> relics;

	// +++++++++++++++++++++++++++++

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
}
