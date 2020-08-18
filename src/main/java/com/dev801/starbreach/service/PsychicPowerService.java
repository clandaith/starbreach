package com.dev801.starbreach.service;

import java.util.List;

import com.dev801.starbreach.entities.PsychicPower;

public interface PsychicPowerService {

    List<PsychicPower> getAllPsychicPowers();

    PsychicPower getPsychicPower(Long id) throws Exception;
}