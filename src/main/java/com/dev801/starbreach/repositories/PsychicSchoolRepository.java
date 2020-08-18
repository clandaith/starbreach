package com.dev801.starbreach.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.dev801.starbreach.entities.PsychicSchool;

public interface PsychicSchoolRepository extends CrudRepository<PsychicSchool, Long> {

	@Override
	List<PsychicSchool> findAll();
}
