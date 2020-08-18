package com.dev801.starbreach.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Relic;
import com.dev801.starbreach.repositories.RelicRepository;

@RestController
@RequestMapping("api/relic")
public class RelicController {
	private static final Logger LOGGER = LoggerFactory.getLogger(RelicController.class);

	@Autowired
	RelicRepository relicRepository;

	@GetMapping("/")
	public List<Relic> getAll() {
		var relics = relicRepository.findAll();

		relics.stream().forEach(r -> LOGGER.info("Relic: {}", r));

		return relics;
	}

	@GetMapping("/{id}")
	public Relic getOne(@PathVariable Long id) throws Exception {
		var relic = relicRepository.findById(id);

		LOGGER.info("Relic: {}", relic);
		return relic.orElseThrow(Exception::new);
	}

}
