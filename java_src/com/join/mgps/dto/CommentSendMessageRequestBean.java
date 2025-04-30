package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommentSendMessageRequestBean {
    private String content;
    private String game_id;
    private String ip_address;
    private int is_reply;
    private int member_id;
    private String member_name;
    private String mobile_model;
    private float score;
    private String token;

    public CommentSendMessageRequestBean() {
    }

    public String getContent() {
        return this.content;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public CommentSendMessageRequestBean(String str, String str2, float f4, int i2, String str3, String str4, String str5, String str6, int i4) {
        this.game_id = str;
        this.content = str2;
        this.score = f4;
        this.member_id = i2;
        this.member_name = str3;
        this.token = str4;
        this.mobile_model = str5;
        this.ip_address = str6;
        this.is_reply = i4;
    }
}
