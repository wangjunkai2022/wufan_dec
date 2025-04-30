package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class SetPasswordRequestBean {
    private String device_id;
    private String new_passwd;
    private String sign;
    private String token;
    private int uid;

    public SetPasswordRequestBean() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getNew_passwd() {
        return this.new_passwd;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("new_passwd", this.new_passwd);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setNew_passwd(String str) {
        this.new_passwd = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public SetPasswordRequestBean(String str, int i2, String str2, String str3, String str4) {
        this.token = str;
        this.uid = i2;
        this.new_passwd = str2;
        this.device_id = str3;
        this.sign = str4;
    }
}
