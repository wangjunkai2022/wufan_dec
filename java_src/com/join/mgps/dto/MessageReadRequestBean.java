package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class MessageReadRequestBean {
    private long message_id;
    private String token;
    private String type;
    private long uid;

    public long getMessage_id() {
        return this.message_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("message_id", this.message_id + "");
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

    public void setMessage_id(long j4) {
        this.message_id = j4;
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
