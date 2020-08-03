package com.dev801.starbreach.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dev801.starbreach.entities.PsychicSchool;
import com.dev801.starbreach.repositories.PsychicSchoolRepository;

@RestController()
@RequestMapping("psychic_school")
public class PsychicSchoolController {

	@Autowired
	PsychicSchoolRepository psychicSchoolRepository;

	@GetMapping("/")
	public List<PsychicSchool> getAll() {
		List<PsychicSchool> psychicSchools = psychicSchoolRepository.findAll();

		psychicSchools.stream().forEach(System.out::println);

		return psychicSchools;
	}

	@GetMapping("/{id}")
	public PsychicSchool getOne(@PathVariable Long id) throws Exception {
		Optional<PsychicSchool> psychicSchool = psychicSchoolRepository.findById(id);

		System.out.println(psychicSchool);

		return psychicSchool.orElseThrow(Exception::new);
	}

}
