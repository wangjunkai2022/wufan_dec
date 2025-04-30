package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class GameWorldWorShipUserBean {
    private long game_id;
    private int to_uid;
    private String token;
    private int uid;

    public GameWorldWorShipUserBean() {
    }

    public long getGame_id() {
        return this.game_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("game_id", this.game_id + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("to_uid", this.to_uid + "");
        linkedMultiValueMap.add("token", this.token);
        return linkedMultiValueMap;
    }

    public int getTo_uid() {
        return this.to_uid;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(long j4) {
        this.game_id = j4;
    }

    public void setTo_uid(int i2) {
        this.to_uid = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public GameWorldWorShipUserBean(long j4, int i2, int i4, String str) {
        this.game_id = j4;
        this.uid = i2;
        this.to_uid = i4;
        this.token = str;
    }
}
