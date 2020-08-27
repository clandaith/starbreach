package com.dev801.starbreach.enums;

public enum SoldierTypes {
    ALPHA("Alpha"), SOLDIER("Soldier"), SPECIALISTS("Specialist");

    private String type;

    private SoldierTypes(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return type;
    }
}