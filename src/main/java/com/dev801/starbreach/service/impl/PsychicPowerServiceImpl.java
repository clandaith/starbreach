package com.dev801.starbreach.service.impl;

import java.util.List;
import java.util.Optional;

import com.dev801.starbreach.entities.PsychicPower;
import com.dev801.starbreach.repositories.PsychicPowerRepository;
import com.dev801.starbreach.service.PsychicPowerService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class PsychicPowerServiceImpl implements PsychicPowerService {
    private static final Logger LOGGER = LoggerFactory.getLogger(PsychicPowerServiceImpl.class);

    @Autowired
    PsychicPowerRepository psychicPowerRepository;

    @Override
    public List<PsychicPower> getAllPsychicPowers() {
        List<PsychicPower> psychicPowers = psychicPowerRepository.findAll();

        psychicPowers.stream().forEach(pp -> LOGGER.info("Psychic Power: {}", pp));

        return psychicPowers;
    }

    @Override
    public PsychicPower getPsychicPower(Long id) throws Exception {
        Optional<PsychicPower> psychicPower = psychicPowerRepository.findById(id);

        LOGGER.info("Psychic School: {}", psychicPower);

        return psychicPower.orElseThrow(Exception::new);
    }
}