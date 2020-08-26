package com.dev801.starbreach.controllers.api;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.Weapon;
import com.dev801.starbreach.repositories.WeaponRepository;

@RestController()
@RequestMapping("api/weapon")
public class WeaponController {
	private static final Logger LOGGER = LoggerFactory.getLogger(WeaponController.class);

	@Autowired
	WeaponRepository weaponRepository;

	@GetMapping("/")
	public List<Weapon> getAll() {
		LOGGER.info("Getting all");
		List<Weapon> weapons = weaponRepository.findAll();

		weapons.stream().forEach(w -> LOGGER.info("Weapon: {}", w));

		return weapons;
	}

	@GetMapping("/{id}")
	public Weapon getOne(@PathVariable Long id) throws Exception {
		Optional<Weapon> weapon = weaponRepository.findById(id);

		LOGGER.info("Weapon: {}", weapon);

		return weapon.orElse(null);
	}
}
