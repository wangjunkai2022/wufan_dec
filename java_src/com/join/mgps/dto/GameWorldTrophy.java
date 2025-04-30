package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameWorldTrophy {
    private String trophy_key;
    private String trophy_name;
    private List<GameWorldTrophyUser> users;

    public String getTrophy_key() {
        return this.trophy_key;
    }

    public String getTrophy_name() {
        return this.trophy_name;
    }

    public List<GameWorldTrophyUser> getUsers() {
        return this.users;
    }

    public void setTrophy_key(String str) {
        this.trophy_key = str;
    }

    public void setTrophy_name(String str) {
        this.trophy_name = str;
    }

    public void setUsers(List<GameWorldTrophyUser> list) {
        this.users = list;
    }
}
