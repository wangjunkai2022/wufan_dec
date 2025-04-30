package com.join.mgps.dto;

import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountChangeUserinfoRequestBean {
    private String account;
    private String avatar_src;
    private int gender;
    private String nick_name;
    private String sign;
    private String token;
    private int uid;

    public String getAccount() {
        return this.account;
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public int getGender() {
        return this.gender;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f64042f, this.account);
        linkedMultiValueMap.add("gender", this.gender + "");
        linkedMultiValueMap.add("avatar_src", this.avatar_src);
        linkedMultiValueMap.add("nick_name", this.nick_name);
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

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAvatar_src(String str) {
        this.avatar_src = str;
    }

    public void setGender(int i2) {
        this.gender = i2;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
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
}
