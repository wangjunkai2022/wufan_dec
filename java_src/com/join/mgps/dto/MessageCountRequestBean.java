package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class MessageCountRequestBean {
    private long gameId;
    private String token;
    private long uid;
    private long isGlobal = 0;
    private String type = "reward";

    public long getGameId() {
        return this.gameId;
    }

    public long getIsGlobal() {
        return this.isGlobal;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("game_id", this.gameId + "");
        linkedMultiValueMap.add("is_global", this.isGlobal + "");
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("type", this.type);
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public String getType() {
        return this.type;
    }

    public long getUid() {
        return this.uid;
    }

    public void setGameId(long j4) {
        this.gameId = j4;
    }

    public void setIsGlobal(long j4) {
        this.isGlobal = j4;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUid(long j4) {
        this.uid = j4;
    }
}
