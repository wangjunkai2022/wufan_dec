package com.join.mgps.activity.screenshot;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class ScreenShortListItemBean implements Serializable {
    private String addTime;
    private String describe;
    private int id;
    private String nickname;
    private String picPath;
    private String smallPicPath;

    public String getAddTime() {
        return this.addTime;
    }

    public String getDescribe() {
        return this.describe;
    }

    public int getId() {
        return this.id;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPicPath() {
        return this.picPath;
    }

    public String getSmallPicPath() {
        return this.smallPicPath;
    }

    public void setAddTime(String str) {
        this.addTime = str;
    }

    public void setDescribe(String str) {
        this.describe = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPicPath(String str) {
        this.picPath = str;
    }

    public void setSmallPicPath(String str) {
        this.smallPicPath = str;
    }
}
