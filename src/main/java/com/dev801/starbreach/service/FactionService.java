package com.dev801.starbreach.service;

import java.util.List;

import com.dev801.starbreach.entities.Faction;
import com.dev801.starbreach.entities.Soldier;

public interface FactionService {
    List<Soldier> getAlphas(Faction faction);

    List<Soldier> getSoldiers(Faction faction);

    List<Soldier> getSpecialists(Faction faction);
}