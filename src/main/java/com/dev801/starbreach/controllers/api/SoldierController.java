package com.dev801.starbreach.controllers.api;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Soldier;
import com.dev801.starbreach.repositories.SoldierRepository;

@RestController
@RequestMapping("api/soldier")
public class SoldierController {
	private static final Logger LOGGER = LoggerFactory.getLogger(SoldierController.class);

	@Autowired
	SoldierRepository soldierRepository;

	@GetMapping("/")
	public List<Soldier> getAll() {
		var soldiers = soldierRepository.findAll();

		soldiers.stream().forEach(s -> LOGGER.info("Soldier: {}", s));

		return soldiers;
	}

	@GetMapping("/{id}")
	public Soldier getOne(@PathVariable Long id) throws Exception {
		var soldier = soldierRepository.findById(id);

		LOGGER.info("Soldier: {}", soldier);

		return soldier.orElseThrow(Exception::new);
	}

}
