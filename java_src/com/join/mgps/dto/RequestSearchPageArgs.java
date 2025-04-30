package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestSearchPageArgs {
    private String game_id;
    private String token;
    private int uid;

    public RequestSearchPageArgs(int i2, String str) {
        this.uid = i2;
        this.token = str;
    }

    public String getGame_id() {
        return this.game_id;
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

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public RequestSearchPageArgs(int i2, String str, String str2) {
        this.uid = i2;
        this.token = str;
        this.game_id = str2;
    }

    public RequestSearchPageArgs() {
    }
}
