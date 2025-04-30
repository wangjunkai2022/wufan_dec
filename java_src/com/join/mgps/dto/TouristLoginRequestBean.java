package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class TouristLoginRequestBean {
    private String device_id;
    private String mac;
    private String sign;
    private String source;
    private long tuid = 0;
    private String version;

    public String getDevice_id() {
        return this.device_id;
    }

    public String getMac() {
        return this.mac;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("version", this.version);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add("mac", this.mac);
        linkedMultiValueMap.add("source", this.source);
        linkedMultiValueMap.add("tuid", this.tuid + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getSource() {
        return this.source;
    }

    public long getTuid() {
        return this.tuid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setTuid(long j4) {
        this.tuid = j4;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
