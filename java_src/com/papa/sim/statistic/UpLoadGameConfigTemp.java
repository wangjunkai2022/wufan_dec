package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class UpLoadGameConfigTemp {
    private String device_id;
    private String game_explain;
    private String game_name;
    private int game_platform_type;
    private int game_type;
    private String token;
    private int uid;
    private int ver;

    public String getDevice_id() {
        return this.device_id;
    }

    public String getGame_explain() {
        return this.game_explain;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGame_platform_type() {
        return this.game_platform_type;
    }

    public int getGame_type() {
        return this.game_type;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public int getVer() {
        return this.ver;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setGame_explain(String str) {
        this.game_explain = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_platform_type(int i2) {
        this.game_platform_type = i2;
    }

    public void setGame_type(int i2) {
        this.game_type = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setVer(int i2) {
        this.ver = i2;
    }

    public String toString() {
        return "UpLoadGameConfig{uid=" + this.uid + ", token='" + this.token + "', game_name='" + this.game_name + "', game_type=" + this.game_type + ", game_platform_type=" + this.game_platform_type + ", game_explain='" + this.game_explain + "'}";
    }
}
