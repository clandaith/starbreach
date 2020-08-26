package com.dev801.starbreach.service.impl;

import java.util.List;

import com.dev801.starbreach.entities.Soldier;
import com.dev801.starbreach.repositories.FactionRepository;
import com.dev801.starbreach.repositories.SoldierRepository;
import com.dev801.starbreach.service.SoldierService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SoldierServiceImpl implements SoldierService {
    @Autowired
    SoldierRepository soldierRepository;

    @Override
    public List<Soldier> getAllSoldiers() {
        return soldierRepository.findAll();
    }

    @Override
    public List<Soldier> getAllAlphasForFaction(Long factionId) {
        return null;
    }

    @Override
    public List<Soldier> getAllSpecialistsForFaction(Long factionId) {
        return null;
    }

    @Override
    public List<Soldier> getAllSoldiersForFaction(Long factionId) {
        return null;
    }

}