package com.dev801.starbreach.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dev801.starbreach.entities.Soldier;

public interface SoldierRepository extends CrudRepository<Soldier, Long> {
	@Override
	List<Soldier> findAll();
}
