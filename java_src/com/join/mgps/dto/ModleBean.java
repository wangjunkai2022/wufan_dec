package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ModleBean implements Serializable {
    private int ad_switch;
    private String color;
    private int comment_count;
    private String ico_remote;
    private String label;
    private String margin;
    private String model_type;
    private int online;
    private String pic_remote;
    private int pv_count;
    private String sub_title;
    private String title;
    private String title_type;
    private String vedio_url;

    public ModleBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, String str8, int i4, String str9) {
        this.title = str;
        this.label = str2;
        this.pic_remote = str3;
        this.ico_remote = str4;
        this.title_type = str5;
        this.margin = str6;
        this.sub_title = str7;
        this.online = i2;
        this.model_type = str8;
        this.ad_switch = i4;
        this.color = str9;
    }

    public int getAd_switch() {
        return this.ad_switch;
    }

    public String getColor() {
        return this.color;
    }

    public int getComment_count() {
        return this.comment_count;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getLabel() {
        return this.label;
    }

    public String getMargin() {
        return this.margin;
    }

    public String getModel_type() {
        return this.model_type;
    }

    public int getOnline() {
        return this.online;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public int getPv_count() {
        return this.pv_count;
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

    public String getVedio_url() {
        return this.vedio_url;
    }

    public void setAd_switch(int i2) {
        this.ad_switch = i2;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setComment_count(int i2) {
        this.comment_count = i2;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setMargin(String str) {
        this.margin = str;
    }

    public void setModel_type(String str) {
        this.model_type = str;
    }

    public void setOnline(int i2) {
        this.online = i2;
    }

    public void setPic_remote(String str) {
        this.pic_remote = str;
    }

    public void setPv_count(int i2) {
        this.pv_count = i2;
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

    public void setVedio_url(String str) {
        this.vedio_url = str;
    }

    public ModleBean() {
    }

    public ModleBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2) {
        this.title = str;
        this.label = str2;
        this.pic_remote = str3;
        this.ico_remote = str4;
        this.title_type = str5;
        this.margin = str6;
        this.sub_title = str7;
        this.online = i2;
    }

    public ModleBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, String str8, int i4) {
        this.title = str;
        this.label = str2;
        this.pic_remote = str3;
        this.ico_remote = str4;
        this.title_type = str5;
        this.margin = str6;
        this.sub_title = str7;
        this.online = i2;
        this.model_type = str8;
        this.ad_switch = i4;
    }
}
