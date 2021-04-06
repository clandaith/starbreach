package com.dev801.starbreach.service;

import java.util.List;

import com.dev801.starbreach.entities.Soldier;

public interface SoldierService {
    List<Soldier> getAllSoldiers();

    List<Soldier> getAllAlphasForFaction(Long factionId);

    List<Soldier> getAllSpecialistsForFaction(Long factionId);

    List<Soldier> getAllSoldiersForFaction(Long factionId);
}