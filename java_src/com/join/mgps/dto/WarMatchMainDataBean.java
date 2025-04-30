package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class WarMatchMainDataBean implements Serializable {
    private String ico_remote;
    private String label;
    private String margin;
    private String pic_remote;
    private String sub_title;
    private String title;
    private String title_type;

    public WarMatchMainDataBean() {
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

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setMargin(String str) {
        this.margin = str;
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

    public WarMatchMainDataBean(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.title = str;
        this.label = str2;
        this.pic_remote = str3;
        this.ico_remote = str4;
        this.title_type = str5;
        this.margin = str6;
        this.sub_title = str7;
    }
}
