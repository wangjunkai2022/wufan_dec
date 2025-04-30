package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestCommentAllListArgs extends BaseDto {
    private String channel_num;
    private String device_id;
    private String game_id;
    private String ip_address;
    private String mac;
    private String mobile_phone_model;
    private int pc;
    private int pn;
    private String token;
    private int uid;
    private String version;
    private String package_name = "com.join.android.app.mgsim.wufun";
    private String sort = "desc";

    public RequestCommentAllListArgs(int i2, int i4, String str, int i5, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.channel_num = str8;
        this.device_id = str7;
        this.version = str6;
        this.pn = i2;
        this.pc = i4;
        this.game_id = str;
        this.uid = i5;
        this.mobile_phone_model = str2;
        this.token = str3;
        this.mac = str4;
        this.ip_address = str5;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getGame_id() {
        return this.game_id;
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

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public String getSort() {
        return this.sort;
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

    public void setChannel_num(String str) {
        this.channel_num = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
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

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setSort(String str) {
        this.sort = str;
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
}
