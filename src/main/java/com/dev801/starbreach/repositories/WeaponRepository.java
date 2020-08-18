package com.dev801.starbreach.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dev801.starbreach.entities.Weapon;

public interface WeaponRepository extends CrudRepository<Weapon, Long> {

	@Override
	List<Weapon> findAll();
}
