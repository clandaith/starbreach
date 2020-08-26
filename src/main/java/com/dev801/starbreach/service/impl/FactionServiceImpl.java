package com.dev801.starbreach.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.dev801.starbreach.entities.Faction;
import com.dev801.starbreach.entities.Soldier;
import com.dev801.starbreach.service.FactionService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class FactionServiceImpl implements FactionService {
    private static final Logger LOGGER = LoggerFactory.getLogger(FactionServiceImpl.class);

    @Override
    public List<Soldier> getAlphas(Faction faction) {
        LOGGER.info("Getting alphas");
        return getSoldierType(faction, "Alpha");
    }

    @Override
    public List<Soldier> getSoldiers(Faction faction) {
        LOGGER.info("Getting soldiers");
        return getSoldierType(faction, "Soldier");
    }

    @Override
    public List<Soldier> getSpecialists(Faction faction) {
        LOGGER.info("Getting specialists");
        return getSoldierType(faction, "Specialist");
    }

    private List<Soldier> getSoldierType(Faction faction, String type) {
        List<Soldier> alphas = faction.getSoldiers().stream().filter(s -> s.getSoldierType().equalsIgnoreCase(type))
                .collect(Collectors.toList());

        alphas.stream().forEach(s -> LOGGER.debug("Soldier name: {}", s.getName()));
        return alphas;
    }
}