package com.dev801.starbreach.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Weapon;
import com.dev801.starbreach.repositories.WeaponRepository;

@RestController()
@RequestMapping("weapon")
public class WeaponController {

	@Autowired
	WeaponRepository weaponRepository;

	@GetMapping("/")
	public List<Weapon> getAll() {
		List<Weapon> weapons = weaponRepository.findAll();

		weapons.stream().forEach(System.out::println);

		return weapons;
	}

	@GetMapping("/{id}")
	public Weapon getOne(@PathVariable Long id) throws Exception {
		Optional<Weapon> weapon = weaponRepository.findById(id);

		System.out.println(weapon);

		return weapon.orElseThrow(Exception::new);
	}
}
