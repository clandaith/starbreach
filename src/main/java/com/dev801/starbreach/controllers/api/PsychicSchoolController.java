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

import com.dev801.starbreach.entities.PsychicSchool;
import com.dev801.starbreach.repositories.PsychicSchoolRepository;

@RestController()
@RequestMapping("api/psychic_school")
public class PsychicSchoolController {
	private static final Logger LOGGER = LoggerFactory.getLogger(PsychicSchoolController.class);

	@Autowired
	PsychicSchoolRepository psychicSchoolRepository;

	@GetMapping("/")
	public List<PsychicSchool> getAll() {
		List<PsychicSchool> psychicSchools = psychicSchoolRepository.findAll();

		psychicSchools.stream().forEach(ps -> LOGGER.info("Psychic School: {}", ps));

		return psychicSchools;
	}

	@GetMapping("/{id}")
	public PsychicSchool getOne(@PathVariable Long id) throws Exception {
		Optional<PsychicSchool> psychicSchool = psychicSchoolRepository.findById(id);

		LOGGER.info("Psychic School: {}", psychicSchool);

		return psychicSchool.orElseThrow(Exception::new);
	}

}
