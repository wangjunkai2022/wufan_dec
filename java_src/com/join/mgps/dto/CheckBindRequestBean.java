package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class CheckBindRequestBean {
    private String code;
    private String mobile;
    private String token;
    private int uid;

    public CheckBindRequestBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add("code", this.code);
        return linkedMultiValueMap;
    }

    public LinkedMultiValueMap<String, String> getParamsv2() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("code", this.code);
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

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public CheckBindRequestBean(String str, int i2, String str2, String str3) {
        this.token = str;
        this.uid = i2;
        this.mobile = str2;
        this.code = str3;
    }
}
