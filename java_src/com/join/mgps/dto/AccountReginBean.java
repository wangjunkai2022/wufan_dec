package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class AccountReginBean implements Serializable {
    private String account;
    private String avatar_src;
    private int code;
    private String device_id;
    private int gender;
    private String mac;
    private String mobile;
    private String nickname;
    private String password;
    private int source;

    public AccountReginBean() {
    }

    public String getAccount() {
        return this.account;
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public int getCode() {
        return this.code;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public int getGender() {
        return this.gender;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile() {
        return this.mobile;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPassword() {
        return this.password;
    }

    public int getSource() {
        return this.source;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAvatar_src(String str) {
        this.avatar_src = str;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setGender(int i2) {
        this.gender = i2;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setMobile(String str) {
        this.mobile = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setSource(int i2) {
        this.source = i2;
    }

    public AccountReginBean(String str, String str2, int i2, String str3, String str4, int i4, String str5, String str6, int i5, String str7) {
        this.mobile = str;
        this.password = str2;
        this.code = i2;
        this.mac = str3;
        this.device_id = str4;
        this.source = i4;
        this.account = str5;
        this.nickname = str6;
        this.gender = i5;
        this.avatar_src = str7;
    }
}
