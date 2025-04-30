package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestGameShareTag {
    private String game_id;
    private String score;
    private String tag_des_id;
    private int tag_des_type;
    private String token;
    private int uid;

    public String getGame_id() {
        return this.game_id;
    }

    public String getScore() {
        return this.score;
    }

    public String getTag_des_id() {
        return this.tag_des_id;
    }

    public int getTag_des_type() {
        return this.tag_des_type;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setTag_des_id(String str) {
        this.tag_des_id = str;
    }

    public void setTag_des_type(int i2) {
        this.tag_des_type = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
