package com.dev801.starbreach.controllers.web;

import java.util.List;

import com.dev801.starbreach.entities.Faction;
import com.dev801.starbreach.repositories.FactionRepository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	FactionRepository factionRepository;

	@GetMapping("/")
	public String greeting(@RequestParam(name = "name", required = false, defaultValue = "World") String name,
			Model model) {
		LOGGER.info("blah");

		List<Faction> factions = factionRepository.findAll();

		factions.stream().forEach(f -> LOGGER.info("Faction: {}", f));

		model.addAttribute("factions", factions);
		model.addAttribute("name", name);
		return "index";
	}
}