package com.dev801.starbreach.controllers;

import com.dev801.starbreach.entities.PsychicPower;
import com.dev801.starbreach.service.PsychicPowerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController()
@RequestMapping("psychic_power")
public class PsychicPowerController {

    @Autowired
    PsychicPowerService psychicPowerService;

    @GetMapping("/")
    public List<PsychicPower> getAll() {
        return psychicPowerService.getAllPsychicPowers();
    }

    @GetMapping("/{id}")
    public PsychicPower getOne(@PathVariable Long id) throws Exception {
        return psychicPowerService.getPsychicPower(id);
    }
}