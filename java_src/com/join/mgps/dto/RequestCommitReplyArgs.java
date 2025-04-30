package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestCommitReplyArgs {
    private String content;
    private String game_id;
    private String head_portrait;
    private String ip_address;
    private String mobile_phone_model;
    private int random_num;
    private String reply_comment_id;
    private int reply_comment_user_id;
    private String reply_comment_user_name;
    private int uid;
    private String user_name;

    public RequestCommitReplyArgs(int i2, String str, String str2, String str3, String str4, String str5, int i4, String str6, String str7, String str8, int i5) {
        this.uid = i2;
        this.game_id = str;
        this.head_portrait = str2;
        this.user_name = str3;
        this.mobile_phone_model = str4;
        this.ip_address = str5;
        this.random_num = i4;
        this.content = str6;
        this.reply_comment_id = str7;
        this.reply_comment_user_name = str8;
        this.reply_comment_user_id = i5;
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

    public String getReply_comment_id() {
        return this.reply_comment_id;
    }

    public int getReply_comment_user_id() {
        return this.reply_comment_user_id;
    }

    public String getReply_comment_user_name() {
        return this.reply_comment_user_name;
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

    public void setReply_comment_id(String str) {
        this.reply_comment_id = str;
    }

    public void setReply_comment_user_id(int i2) {
        this.reply_comment_user_id = i2;
    }

    public void setReply_comment_user_name(String str) {
        this.reply_comment_user_name = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUser_name(String str) {
        this.user_name = str;
    }
}
