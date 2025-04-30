package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameworldRankGradeBean {
    private int get_pet;
    private int kill_mob;
    private int level;
    private int medal;
    private int score;

    public GameworldRankGradeBean() {
    }

    public int getGet_pet() {
        return this.get_pet;
    }

    public int getKill_mob() {
        return this.kill_mob;
    }

    public int getLevel() {
        return this.level;
    }

    public int getMedal() {
        return this.medal;
    }

    public int getScore() {
        return this.score;
    }

    public void setGet_pet(int i2) {
        this.get_pet = i2;
    }

    public void setKill_mob(int i2) {
        this.kill_mob = i2;
    }

    public void setLevel(int i2) {
        this.level = i2;
    }

    public void setMedal(int i2) {
        this.medal = i2;
    }

    public void setScore(int i2) {
        this.score = i2;
    }

    public GameworldRankGradeBean(int i2, int i4, int i5, int i6, int i7) {
        this.level = i2;
        this.get_pet = i4;
        this.medal = i5;
        this.kill_mob = i6;
        this.score = i7;
    }
}
