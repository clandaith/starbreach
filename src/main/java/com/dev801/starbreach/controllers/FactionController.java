package com.dev801.starbreach.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Faction;
import com.dev801.starbreach.repositories.FactionRepository;

@RestController()
@RequestMapping("faction")
public class FactionController {

	@Autowired
	FactionRepository factionRepository;

	@GetMapping("/")
	public List<Faction> getAll() {
		List<Faction> factions = factionRepository.findAll();

		factions.stream().forEach(System.out::println);

		return factions;
	}

	@GetMapping("/{id}")
	public Faction getOne(@PathVariable Long id) throws Exception {
		Optional<Faction> faction = factionRepository.findById(id);

		System.out.println(faction);

		return faction.orElseThrow(Exception::new);
	}

}
