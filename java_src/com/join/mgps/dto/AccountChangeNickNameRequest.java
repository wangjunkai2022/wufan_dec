package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountChangeNickNameRequest {
    private String avatar_src;
    private String nick_name;
    private String sign;
    private String token;
    private String uid;

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("nick_name", this.nick_name + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("token", this.token + "");
        linkedMultiValueMap.add("avatar_src", this.avatar_src + "");
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setAvatar_src(String str) {
        this.avatar_src = str;
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

    public void setUid(String str) {
        this.uid = str;
    }
}
