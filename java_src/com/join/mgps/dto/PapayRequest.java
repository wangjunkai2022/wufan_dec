package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class PapayRequest {
    private int limit;
    private int page;
    private String token;
    private int uid;

    public int getLimit() {
        return this.limit;
    }

    public int getPage() {
        return this.page;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("limit", this.limit + "");
        linkedMultiValueMap.add("page", this.page + "");
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setLimit(int i2) {
        this.limit = i2;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
