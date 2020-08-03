package com.dev801.starbreach.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Soldier;
import com.dev801.starbreach.repositories.SoldierRepository;

@RestController
@RequestMapping("soldier")
public class SoldierController {

	@Autowired
	SoldierRepository soldierRepository;

	@GetMapping("/")
	public List<Soldier> getAll() {
		var soldiers = soldierRepository.findAll();

		soldiers.stream().forEach(System.out::println);

		return soldiers;
	}

	@GetMapping("/{id}")
	public Soldier getOne(@PathVariable Long id) throws Exception {
		var soldier = soldierRepository.findById(id);

		System.out.println(soldier);

		return soldier.orElseThrow(Exception::new);
	}

}
