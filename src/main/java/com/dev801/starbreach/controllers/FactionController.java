package com.dev801.starbreach.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Faction;
import com.dev801.starbreach.repositories.FactionRepository;

@RestController
public class FactionController {

	@Autowired
	FactionRepository factionRepository;

	@GetMapping("/faction")
	public List<Faction> getAll() {
		return factionRepository.findAll();
	}

}
