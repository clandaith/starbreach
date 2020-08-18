package com.dev801.starbreach.repositories;

import java.util.List;

import com.dev801.starbreach.entities.PsychicPower;

import org.springframework.data.repository.CrudRepository;

public interface PsychicPowerRepository extends CrudRepository<PsychicPower, Long> {

	@Override
	List<PsychicPower> findAll();
}