package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class ModifyPasswordRequestBean {
    private String device_id;
    private String new_passwd;
    private String old_passwd;
    private String sign;
    private String token;
    private int uid;

    public ModifyPasswordRequestBean() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getNew_passwd() {
        return this.new_passwd;
    }

    public String getOld_passwd() {
        return this.old_passwd;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("new_passwd", this.new_passwd);
        linkedMultiValueMap.add("old_passwd", this.old_passwd);
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

    public void setOld_passwd(String str) {
        this.old_passwd = str;
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

    public ModifyPasswordRequestBean(String str, int i2, String str2, String str3, String str4, String str5) {
        this.token = str;
        this.uid = i2;
        this.new_passwd = str2;
        this.old_passwd = str3;
        this.device_id = str4;
        this.sign = str5;
    }
}
