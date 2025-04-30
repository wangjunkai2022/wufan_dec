package com.join.mgps.activity.screenshot;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class ScreenshortTabBean implements Serializable {
    private int id;
    private int picCount;
    private String picPath;
    private String title;

    public int getId() {
        return this.id;
    }

    public int getPicCount() {
        return this.picCount;
    }

    public String getPicPath() {
        return this.picPath;
    }

    public String getTitle() {
        return this.title;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPicCount(int i2) {
        this.picCount = i2;
    }

    public void setPicPath(String str) {
        this.picPath = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
