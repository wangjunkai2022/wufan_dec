package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class SendMobileCodeRequestBean {
    private String mobile;
    private String sign;
    private int type;

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public int getType() {
        return this.type;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
