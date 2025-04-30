package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountMMSCheckCodebean {
    private int code;
    private String mobile;
    private String sign;

    public int getCode() {
        return this.code;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }
}
