package com.papa91.arc.bean;
/* loaded from: classes4.dex */
public class MainBean {
    private int ad_switch;
    private String label;
    private String pic_remote;
    private String sub_title;
    private String title;
    private String title_type;

    public MainBean() {
    }

    public int getAd_switch() {
        return this.ad_switch;
    }

    public String getLabel() {
        return this.label;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTitle_type() {
        return this.title_type;
    }

    public void setAd_switch(int i2) {
        this.ad_switch = i2;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setSub_title(String str) {
        this.sub_title = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTitle_type(String str) {
        this.title_type = str;
    }

    public MainBean(String str, String str2, String str3, String str4, String str5, int i2) {
        this.title = str;
        this.label = str2;
        this.pic_remote = str3;
        this.title_type = str4;
        this.sub_title = str5;
        this.ad_switch = i2;
    }
}
