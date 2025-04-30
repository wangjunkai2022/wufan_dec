package com.join.mgps.dto;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class ArchiveBuyArgs {
    String gameId;
    int pn;
    String token;
    String uid;

    public ArchiveBuyArgs(String str, String str2, String str3, int i2) {
        this.uid = str;
        this.token = str2;
        this.gameId = str3;
        this.pn = i2;
    }

    public Map<String, String> getArgs() {
        HashMap hashMap = new HashMap();
        hashMap.put("uid", this.uid);
        hashMap.put("token", this.token);
        hashMap.put("gameId", this.gameId);
        hashMap.put("pn", this.pn + "");
        return hashMap;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getPn() {
        return this.pn;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
