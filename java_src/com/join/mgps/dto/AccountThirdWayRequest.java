package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountThirdWayRequest {
    private String device_id;
    private String mac;
    private String sign;
    private int type;
    private String unique_id;

    public AccountThirdWayRequest() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getMac() {
        return this.mac;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("unique_id", this.unique_id);
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("device_id", this.device_id);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getType() {
        return this.type;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public AccountThirdWayRequest(String str, int i2, String str2) {
        this.unique_id = str;
        this.type = i2;
        this.sign = str2;
    }
}
