package com.join.mgps.dto;

import com.join.mgps.Util.u1;
import com.join.mgps.activity.arena.GameRoomActivity_;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class TouristPerfectInfoRequestBean {
    private String code;
    private String device_id;
    private String mac;
    private String mobile;
    private String nickname;
    private String password;
    private String sign;
    private String source;
    private int submit_number;
    private int uid;
    private String version;

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

    public String getNickname() {
        return this.nickname;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("version", this.version);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("source", this.source);
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add("code", this.code);
        linkedMultiValueMap.add("nickname", this.nickname);
        linkedMultiValueMap.add(GameRoomActivity_.f36433y2, this.password);
        linkedMultiValueMap.add("submit_number", this.submit_number + "");
        linkedMultiValueMap.add(Constant.MD5, u1.f(this));
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
    }

    public String getSource() {
        return this.source;
    }

    public int getSubmit_number() {
        return this.submit_number;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
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

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setSubmit_number(int i2) {
        this.submit_number = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
