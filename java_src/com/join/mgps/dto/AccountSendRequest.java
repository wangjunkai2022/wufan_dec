package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountSendRequest {
    private String mobile;
    private String sign;
    private int source = 2;
    private int uid = 0;

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("source", this.source + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getSource() {
        return this.source;
    }

    public int getUid() {
        return this.uid;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSource(int i2) {
        this.source = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
