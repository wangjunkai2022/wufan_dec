package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class MMSRequesBean {
    public static int TYPE_BIND = 8;
    public static int TYPE_FORGOT = 2;
    public static int TYPE_REGISTER = 1;
    private String mobile;
    private String sign;
    private int type;

    public MMSRequesBean() {
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add("type", this.type + "");
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

    public MMSRequesBean(String str, int i2, String str2) {
        this.mobile = str;
        this.type = i2;
        this.sign = str2;
    }
}
