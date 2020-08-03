package com.dev801.starbreach.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dev801.starbreach.entities.Faction;

public interface FactionRepository extends CrudRepository<Faction, Long> {
	@Override
	List<Faction> findAll();
}
