package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommentItemMessageBean {
    private String comment_id;
    private String content;
    private String score;
    private String times;
    private String user_name;
    private String ver;

    public CommentItemMessageBean(String str, String str2, String str3, String str4, String str5, String str6) {
        this.comment_id = str;
        this.content = str2;
        this.score = str3;
        this.ver = str4;
        this.user_name = str5;
        this.times = str6;
    }

    public String getComment_id() {
        return this.comment_id;
    }

    public String getContent() {
        return this.content;
    }

    public String getScore() {
        return this.score;
    }

    public String getTimes() {
        return this.times;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public String getVer() {
        return this.ver;
    }

    public void setComment_id(String str) {
        this.comment_id = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setTimes(String str) {
        this.times = str;
    }

    public void setUser_name(String str) {
        this.user_name = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public CommentItemMessageBean() {
    }
}
