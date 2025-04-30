package com.join.mgps.activity.login;
/* loaded from: classes3.dex */
public class ChangeNiknameRequest {
    private String deviceId;
    private String mac;
    private String nickName;
    private String sign;
    private int uid;
    private String userToken;
    private String version;

    public String getDeviceId() {
        return this.deviceId;
    }

    public String getMac() {
        return this.mac;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getSign() {
        return this.sign;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUserToken(String str) {
        this.userToken = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
