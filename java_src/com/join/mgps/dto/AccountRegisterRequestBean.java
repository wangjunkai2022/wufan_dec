package com.join.mgps.dto;

import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountRegisterRequestBean {
    private String account;
    private String avatar_src;
    private int code;
    private String device_id;
    private int gender;
    private String mac;
    private String mobile;
    private String nick_name;
    private String password;
    private String sign;
    private int source;

    public AccountRegisterRequestBean() {
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

    public String getNick_name() {
        return this.nick_name;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(GameRoomActivity_.f36433y2, this.password);
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add("source", this.source + "");
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f64042f, this.account + "");
        linkedMultiValueMap.add("nick_name", this.nick_name + "");
        linkedMultiValueMap.add("gender", this.gender + "");
        linkedMultiValueMap.add("avatar_src", this.avatar_src + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
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

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSource(int i2) {
        this.source = i2;
    }

    public AccountRegisterRequestBean(String str, String str2, int i2, String str3, String str4) {
        this.mobile = str;
        this.password = str2;
        this.code = i2;
        this.mac = str3;
        this.device_id = str4;
    }
}
