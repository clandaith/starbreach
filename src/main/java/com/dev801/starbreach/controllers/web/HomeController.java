package com.dev801.starbreach.controllers.web;

import com.dev801.starbreach.repositories.FactionRepository;
import com.dev801.starbreach.service.FactionService;

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

	@Autowired
	FactionService factionService;

	@GetMapping("/")
	public String mainEntryPoint(final Model model) {
		LOGGER.info("main entry point");

		var factions = factionRepository.findAll();

		if (LOGGER.isInfoEnabled())
			factions.stream().forEach(f -> LOGGER.info("Faction:{} :: {} ", f.getId(), f.getName()));

		model.addAttribute("factions", factions);
		return "index";
	}

	@GetMapping("/faction")
	public String factionBuilder(@RequestParam(name = "id", required = true) final Long factionId, final Model model)
			throws Exception {
		LOGGER.info("looking up a faction");

		if (LOGGER.isDebugEnabled())
			LOGGER.debug("Faction to look for: {}", factionId);

		var optFaction = factionRepository.findById(factionId);

		if (!optFaction.isPresent())
			throw new Exception();

		var faction = optFaction.get();

		if (LOGGER.isDebugEnabled())
			LOGGER.debug("Faction found: {}", faction.getName());

		model.addAttribute("faction", faction);
		model.addAttribute("alphas", factionService.getAlphas(faction));
		return "faction";
	}
}