package com.dev801.starbreach.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Relic;
import com.dev801.starbreach.repositories.RelicRepository;

@RestController
@RequestMapping("relic")
public class RelicController {

	@Autowired
	RelicRepository relicRepository;

	@GetMapping("/")
	public List<Relic> getAll() {
		var relics = relicRepository.findAll();

		relics.stream().forEach(System.out::println);

		return relics;
	}

	@GetMapping("/{id}")
	public Relic getOne(@PathVariable Long id) throws Exception {
		var relic = relicRepository.findById(id);

		System.out.println(relic);

		return relic.orElseThrow(Exception::new);
	}

}
