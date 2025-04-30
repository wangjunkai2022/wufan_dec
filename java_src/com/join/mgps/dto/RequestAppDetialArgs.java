package com.join.mgps.dto;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class RequestAppDetialArgs extends BaseDto {
    private String deviceid;
    private String game_id;
    private String token;
    private int uid;
    private String version;

    public RequestAppDetialArgs() {
    }

    public Map<String, String> getArgs() {
        HashMap hashMap = new HashMap();
        hashMap.put("game_id", this.game_id);
        hashMap.put("uid", this.uid + "");
        hashMap.put("device_id", this.deviceid);
        hashMap.put("version", this.version);
        hashMap.put("token", this.token);
        return hashMap;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public RequestAppDetialArgs(String str, int i2) {
        this.game_id = str;
        this.uid = i2;
    }

    public RequestAppDetialArgs(String str, String str2, int i2) {
        this.game_id = str;
        this.token = str2;
        this.uid = i2;
    }
}
