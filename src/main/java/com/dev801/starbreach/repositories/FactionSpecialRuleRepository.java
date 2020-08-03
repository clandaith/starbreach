package com.dev801.starbreach.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dev801.starbreach.entities.FactionSpecialRule;

public interface FactionSpecialRuleRepository extends CrudRepository<FactionSpecialRule, Long> {

	@Override
	List<FactionSpecialRule> findAll();
}
