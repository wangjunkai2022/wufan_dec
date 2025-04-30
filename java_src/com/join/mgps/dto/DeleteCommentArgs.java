package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class DeleteCommentArgs extends BaseDto {
    private String channel_num;
    private String comment_id;
    private String device_id;
    private String game_id;
    private String ip_address;
    private String mac;
    private String mobile_phone_model;
    private int pn;
    private String token;
    private int uid;
    private String user_token;
    private String version;

    public DeleteCommentArgs(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i2, String str10, int i4) {
        this.token = str;
        this.version = str2;
        this.device_id = str3;
        this.mac = str4;
        this.ip_address = str5;
        this.channel_num = str6;
        this.mobile_phone_model = str7;
        this.comment_id = str8;
        this.game_id = str9;
        this.uid = i2;
        this.user_token = str10;
        this.pn = i4;
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

    public int getPn() {
        return this.pn;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUser_token() {
        return this.user_token;
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

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUser_token(String str) {
        this.user_token = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
