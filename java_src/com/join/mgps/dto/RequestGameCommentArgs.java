package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestGameCommentArgs extends BaseDto {
    private String content;
    private String game_id;
    private String head_portrait;
    private String ip_address;
    private String mobile_phone_model;
    private int random_num;
    private int uid;
    private String user_name;

    public RequestGameCommentArgs(String str, int i2, String str2, String str3, String str4, String str5, int i4, String str6) {
        this.game_id = str;
        this.uid = i2;
        this.head_portrait = str2;
        this.user_name = str3;
        this.mobile_phone_model = str4;
        this.ip_address = str5;
        this.random_num = i4;
        this.content = str6;
    }

    public String getContent() {
        return this.content;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getHead_portrait() {
        return this.head_portrait;
    }

    public String getIp_address() {
        return this.ip_address;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public int getRandom_num() {
        return this.random_num;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setHead_portrait(String str) {
        this.head_portrait = str;
    }

    public void setIp_address(String str) {
        this.ip_address = str;
    }

    public void setMobile_phone_model(String str) {
        this.mobile_phone_model = str;
    }

    public void setRandom_num(int i2) {
        this.random_num = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUser_name(String str) {
        this.user_name = str;
    }
}
