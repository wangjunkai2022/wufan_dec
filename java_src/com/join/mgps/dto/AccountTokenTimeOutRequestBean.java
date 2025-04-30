package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountTokenTimeOutRequestBean {
    private String device_id;
    private String sign;
    private String toke;
    private int uid;

    public AccountTokenTimeOutRequestBean() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("toke", this.toke);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setToke(String str) {
        this.toke = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public AccountTokenTimeOutRequestBean(int i2, String str, String str2) {
        this.uid = i2;
        this.toke = str;
        this.device_id = str2;
    }
}
