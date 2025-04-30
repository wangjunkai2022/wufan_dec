package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class HaveGameListArgs {
    private String game_id;
    private String token;
    private String uid;

    public HaveGameListArgs() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public HaveGameListArgs(String str, String str2, String str3) {
        this.uid = str;
        this.token = str2;
        this.game_id = str3;
    }
}
