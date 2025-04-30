package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class FeedTalkSimpleBean {
    private String date;
    private String info;
    private String title;

    public FeedTalkSimpleBean() {
    }

    public String getDate() {
        return this.date;
    }

    public String getInfo() {
        return this.info;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public FeedTalkSimpleBean(String str, String str2, String str3) {
        this.title = str;
        this.date = str2;
        this.info = str3;
    }
}
