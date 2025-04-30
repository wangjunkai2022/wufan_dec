package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class InvitationPassRequestBean {
    private String code;
    private long game_id;
    private String token;
    private int uid;

    public String getCode() {
        return this.code;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("code", this.code);
        linkedMultiValueMap.add("game_id", this.game_id + "");
        linkedMultiValueMap.add("token", this.token);
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setGame_id(long j4) {
        this.game_id = j4;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
