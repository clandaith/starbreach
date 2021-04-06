package com.dev801.starbreach.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import com.dev801.starbreach.entities.Faction;
import com.dev801.starbreach.entities.Soldier;
import com.dev801.starbreach.enums.SoldierTypes;
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
        return getSoldierType(faction, SoldierTypes.ALPHA);
    }

    @Override
    public List<Soldier> getSoldiers(Faction faction) {
        LOGGER.info("Getting soldiers");
        return getSoldierType(faction, SoldierTypes.SOLDIER);
    }

    @Override
    public List<Soldier> getSpecialists(Faction faction) {
        LOGGER.info("Getting specialists");
        return getSoldierType(faction, SoldierTypes.SPECIALISTS);
    }

    private List<Soldier> getSoldierType(Faction faction, SoldierTypes type) {
        List<Soldier> alphas = faction.getSoldiers().stream()
                .filter(s -> s.getSoldierType().equalsIgnoreCase(type.toString())).collect(Collectors.toList());

        alphas.stream().forEach(s -> LOGGER.debug("Soldier name: {}", s.getName()));
        return alphas;
    }
}