package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PayCenterOrderResponse {
    private String action;
    private String json;

    public PayCenterOrderResponse() {
    }

    public String getAction() {
        return this.action;
    }

    public String getJson() {
        return this.json;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setJson(String str) {
        this.json = str;
    }

    public PayCenterOrderResponse(String str, String str2) {
        this.json = str;
        this.action = str2;
    }
}
