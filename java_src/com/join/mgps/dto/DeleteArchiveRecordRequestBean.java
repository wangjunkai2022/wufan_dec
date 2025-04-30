package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class DeleteArchiveRecordRequestBean {
    private long game_id;
    private int rid;
    private String token;
    private int uid;

    public long getGame_id() {
        return this.game_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("game_id", this.game_id + "");
        linkedMultiValueMap.add("rid", this.rid + "");
        return linkedMultiValueMap;
    }

    public int getRid() {
        return this.rid;
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

    public void setRid(int i2) {
        this.rid = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
