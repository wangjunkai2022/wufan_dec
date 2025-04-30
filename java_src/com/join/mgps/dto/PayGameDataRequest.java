package com.join.mgps.dto;

import com.alipay.sdk.cons.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class PayGameDataRequest {
    private String app_key;
    private String app_ver;
    private String console_app_key;
    private String device_id;
    private String pay_type;
    private String token;
    private String uid;

    public String getApp_key() {
        return this.app_key;
    }

    public String getApp_ver() {
        return this.app_ver;
    }

    public Map<String, String> getArgs() {
        HashMap hashMap = new HashMap();
        hashMap.put("console_app_key", this.console_app_key);
        hashMap.put(Constant.PAY_TYPE, this.pay_type);
        hashMap.put("uid", this.uid);
        hashMap.put("device_id", this.device_id);
        hashMap.put("app_ver", this.app_ver);
        return hashMap;
    }

    public Map<String, String> getArgsCheck() {
        HashMap hashMap = new HashMap();
        hashMap.put("console_app_key", this.console_app_key);
        hashMap.put("uid", this.uid);
        hashMap.put("device_id", this.device_id);
        hashMap.put("token", this.token);
        return hashMap;
    }

    public Map<String, String> getArgsCheck2() {
        HashMap hashMap = new HashMap();
        hashMap.put(b.f9723h, this.app_key);
        hashMap.put("uid", this.uid);
        hashMap.put("device_id", this.device_id);
        hashMap.put("token", this.token);
        return hashMap;
    }

    public String getConsole_app_key() {
        return this.console_app_key;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getPay_type() {
        return this.pay_type;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setApp_key(String str) {
        this.app_key = str;
    }

    public void setApp_ver(String str) {
        this.app_ver = str;
    }

    public void setConsole_app_key(String str) {
        this.console_app_key = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setPay_type(String str) {
        this.pay_type = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
