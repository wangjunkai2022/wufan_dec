package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class VersionDto implements Serializable {
    private String androidUrl;
    private String appUrl;
    private String filepath;
    private String head_pic;
    private String info;
    private boolean isQiangzhi;
    private String tow_tpl_back_ground_pic;
    private int tpl_type;
    private float versionNo;
    private String versionNoAndroid;

    public String getAndroidUrl() {
        return this.androidUrl;
    }

    public String getAppUrl() {
        return this.appUrl;
    }

    public String getFilepath() {
        return this.filepath;
    }

    public String getHead_pic() {
        return this.head_pic;
    }

    public String getInfo() {
        return this.info;
    }

    public String getTow_tpl_back_ground_pic() {
        return this.tow_tpl_back_ground_pic;
    }

    public int getTpl_type() {
        return this.tpl_type;
    }

    public float getVersionNo() {
        return this.versionNo;
    }

    public String getVersionNoAndroid() {
        return this.versionNoAndroid;
    }

    public boolean isQiangzhi() {
        return this.isQiangzhi;
    }

    public void setAndroidUrl(String str) {
        this.androidUrl = str;
    }

    public void setAppUrl(String str) {
        this.appUrl = str;
    }

    public void setFilepath(String str) {
        this.filepath = str;
    }

    public void setHead_pic(String str) {
        this.head_pic = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setQiangzhi(boolean z3) {
        this.isQiangzhi = z3;
    }

    public void setTow_tpl_back_ground_pic(String str) {
        this.tow_tpl_back_ground_pic = str;
    }

    public void setTpl_type(int i2) {
        this.tpl_type = i2;
    }

    public void setVersionNo(float f4) {
        this.versionNo = f4;
    }

    public void setVersionNoAndroid(String str) {
        this.versionNoAndroid = str;
    }
}
