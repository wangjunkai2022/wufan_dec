package com.join.mgps.dto;

import com.MApplication;
import com.join.mgps.activity.arena.GameRoomActivity_;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class AccountAnonymousReginRequest {
    private String code;
    private String device_id;
    private String mac;
    private String mobile;
    private String nick_name;
    private String password;
    private String sign;
    private String token;
    private int type;
    private int uid;
    private String unique_id = "";
    private String share_code = MApplication.f9236w0;

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

    public String getNick_name() {
        return this.nick_name;
    }

    public LinkedMultiValueMap<String, String> getParamsPhone() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("nick_name", this.nick_name + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("token", this.token + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add(GameRoomActivity_.f36433y2, this.password + "");
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("unique_id", this.unique_id + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add("share_code", this.share_code + "");
        return linkedMultiValueMap;
    }

    public LinkedMultiValueMap<String, String> getParamsThird() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("nick_name", this.nick_name + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("token", this.token + "");
        linkedMultiValueMap.add("unique_id", this.unique_id + "");
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(GameRoomActivity_.f36433y2, this.password + "");
        linkedMultiValueMap.add("mobile", this.mobile + "");
        linkedMultiValueMap.add("code", this.code + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("share_code", this.share_code + "");
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getShare_code() {
        return this.share_code;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUnique_id() {
        return this.unique_id;
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

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setShare_code(String str) {
        this.share_code = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUnique_id(String str) {
        this.unique_id = str;
    }
}
