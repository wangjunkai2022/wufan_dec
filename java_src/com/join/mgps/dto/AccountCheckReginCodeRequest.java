package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountCheckReginCodeRequest {
    private String code;
    private String device_id;
    private String mac;
    private String mobile;
    private String sign;

    public String getCode() {
        return this.code;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add("code", this.code + "");
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }
}
