package com.dev801.starbreach.controllers;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	private static final Logger LOGGER = LoggerFactory.getLogger(FactionController.class);

	@Autowired
	FactionRepository factionRepository;

	@GetMapping("/")
	public List<Faction> getAll() {
		List<Faction> factions = factionRepository.findAll();

		factions.stream().forEach(f -> LOGGER.info("Faction: {}", f));

		return factions;
	}

	@GetMapping("/{id}")
	public Faction getOne(@PathVariable Long id) throws Exception {
		Optional<Faction> faction = factionRepository.findById(id);

		LOGGER.info("Faction: {}", faction);

		return faction.orElseThrow(Exception::new);
	}
}
