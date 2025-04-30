package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GameworldIntentInfoBean implements Serializable {
    private int game_get_pet;
    private int game_kill_mob;
    private int game_level;
    private int game_medal;

    public GameworldIntentInfoBean() {
    }

    public int getGame_get_pet() {
        return this.game_get_pet;
    }

    public int getGame_kill_mob() {
        return this.game_kill_mob;
    }

    public int getGame_level() {
        return this.game_level;
    }

    public int getGame_medal() {
        return this.game_medal;
    }

    public void setGame_get_pet(int i2) {
        this.game_get_pet = i2;
    }

    public void setGame_kill_mob(int i2) {
        this.game_kill_mob = i2;
    }

    public void setGame_level(int i2) {
        this.game_level = i2;
    }

    public void setGame_medal(int i2) {
        this.game_medal = i2;
    }

    public GameworldIntentInfoBean(int i2, int i4, int i5, int i6) {
        this.game_kill_mob = i2;
        this.game_get_pet = i4;
        this.game_medal = i5;
        this.game_level = i6;
    }
}
