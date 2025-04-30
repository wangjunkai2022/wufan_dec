package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestCommentDetailArgs extends BaseDto {
    private String channel_num;
    private String comment_id;
    private String device_id;
    private String game_id;
    private String ip_address;
    private String mac;
    private String mobile_phone_model;
    private int pc;
    private int pn;
    private String sort;
    private String token;
    private int uid;
    private String version;

    public RequestCommentDetailArgs(String str, String str2, String str3, int i2, int i4, int i5, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        this.channel_num = str10;
        this.device_id = str9;
        this.version = str8;
        this.comment_id = str2;
        this.game_id = str3;
        this.uid = i2;
        this.pn = i4;
        this.pc = i5;
        this.mobile_phone_model = str4;
        this.mac = str5;
        this.ip_address = str6;
        this.token = str7;
        this.sort = str;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getComment_id() {
        return this.comment_id;
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

    public void setComment_id(String str) {
        this.comment_id = str;
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
