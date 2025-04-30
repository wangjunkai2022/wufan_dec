package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class DiscoverBean implements Serializable {
    private long addtimes;
    private String bg_color;
    private String intro;
    private String pic;
    private String title;

    public DiscoverBean() {
    }

    public long getAddtimes() {
        return this.addtimes;
    }

    public String getBg_color() {
        return this.bg_color;
    }

    public String getIntro() {
        return this.intro;
    }

    public String getPic() {
        return this.pic;
    }

    public String getTitle() {
        return this.title;
    }

    public void setAddtimes(long j4) {
        this.addtimes = j4;
    }

    public void setBg_color(String str) {
        this.bg_color = str;
    }

    public void setIntro(String str) {
        this.intro = str;
    }

    public void setPic(String str) {
        this.pic = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public DiscoverBean(String str, String str2, String str3, String str4, long j4) {
        this.pic = str;
        this.title = str2;
        this.intro = str3;
        this.bg_color = str4;
        this.addtimes = j4;
    }
}
