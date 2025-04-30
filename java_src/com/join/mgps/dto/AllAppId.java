package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AllAppId {
    private String[] game_id;
    private String token;
    private int uid;

    public AllAppId() {
    }

    public String[] getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String[] strArr) {
        this.game_id = strArr;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public AllAppId(String[] strArr, int i2, String str) {
        this.game_id = strArr;
        this.uid = i2;
        this.token = str;
    }

    public AllAppId(String[] strArr) {
        this.game_id = strArr;
    }
}
