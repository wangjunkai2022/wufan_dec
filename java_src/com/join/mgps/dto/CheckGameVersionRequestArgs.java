package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CheckGameVersionRequestArgs {
    private List<String> gameList;
    private String token;
    private String uid;

    public List<String> getGameList() {
        return this.gameList;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGameList(List<String> list) {
        this.gameList = list;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
