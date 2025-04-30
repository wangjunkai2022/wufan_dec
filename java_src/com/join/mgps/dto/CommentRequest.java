package com.join.mgps.dto;

import com.umeng.analytics.pro.ai;
import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class CommentRequest {
    private String channel_num;
    private String device_id;
    private String ip_address;
    private String mac;
    private String mobile_phone_model;
    private String package_name = "com.join.android.app.mgsim.wufun";
    private String sort;
    private String token;
    private String uid;
    private String version;
    private int vuid;

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getIp_address() {
        return this.ip_address;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("sort", this.sort + "");
        linkedMultiValueMap.add("token", this.token + "");
        linkedMultiValueMap.add("version", this.version + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("ip_address", this.ip_address + "");
        linkedMultiValueMap.add("channel_num", this.channel_num + "");
        linkedMultiValueMap.add("mobile_phone_model", this.mobile_phone_model + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add(ai.f60415o, this.package_name + "");
        linkedMultiValueMap.add("vuid", this.vuid + "");
        return linkedMultiValueMap;
    }

    public String getSort() {
        return this.sort;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public int getVuid() {
        return this.vuid;
    }

    public void setChannel_num(String str) {
        this.channel_num = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setIp_address(String str) {
        this.ip_address = str;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setMobile_phone_model(String str) {
        this.mobile_phone_model = str;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setSort(String str) {
        this.sort = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setVuid(int i2) {
        this.vuid = i2;
    }

    public String toString() {
        return "CommentRequest{sort='" + this.sort + "', token='" + this.token + "', version='" + this.version + "', device_id='" + this.device_id + "', mac='" + this.mac + "', ip_address='" + this.ip_address + "', channel_num='" + this.channel_num + "', mobile_phone_model='" + this.mobile_phone_model + "', uid='" + this.uid + "'}";
    }
}
