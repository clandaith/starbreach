package com.dev801.starbreach.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dev801.starbreach.entities.Relic;

public interface RelicRepository extends CrudRepository<Relic, Long> {
	@Override
	List<Relic> findAll();
}
