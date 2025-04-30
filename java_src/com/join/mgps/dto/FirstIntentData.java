package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.join.mgps.Util.IntentDateBean;
/* loaded from: classes.dex */
public class FirstIntentData {
    private String imageUrl;
    private IntentDateBean intentDateBean;
    @JsonProperty
    private boolean isAPKSplashImage;
    @JsonProperty
    private boolean isAutoDownload;
    @JsonProperty("isCustomApk")
    private boolean isCustomApk;
    @JsonProperty
    private boolean isGoDetail;
    @JsonProperty
    private boolean isIntent;

    public FirstIntentData() {
        this.imageUrl = "/android_asset/splash.png";
        this.isGoDetail = true;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public IntentDateBean getIntentDateBean() {
        return this.intentDateBean;
    }

    public boolean isAPKSplashImage() {
        return this.isAPKSplashImage;
    }

    public boolean isAutoDownload() {
        return this.isAutoDownload;
    }

    public boolean isCustomApk() {
        return this.isCustomApk;
    }

    public boolean isGoDetail() {
        return this.isGoDetail;
    }

    public boolean isIntent() {
        return this.isIntent;
    }

    public void setAPKSplashImage(boolean z3) {
        this.isAPKSplashImage = z3;
    }

    public void setAutoDownload(boolean z3) {
        this.isAutoDownload = z3;
    }

    public void setCustomApk(boolean z3) {
        this.isCustomApk = z3;
    }

    public void setGoDetail(boolean z3) {
        this.isGoDetail = z3;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setIntent(boolean z3) {
        this.isIntent = z3;
    }

    public void setIntentDateBean(IntentDateBean intentDateBean) {
        this.intentDateBean = intentDateBean;
    }

    public String toString() {
        return "FirstIntentData{isCustomApk=" + this.isCustomApk + ", isAutoDownload=" + this.isAutoDownload + ", isAPKSplashImage=" + this.isAPKSplashImage + ", imageUrl='" + this.imageUrl + "', isIntent=" + this.isIntent + ", intentDateBean=" + this.intentDateBean + '}';
    }

    public FirstIntentData(boolean z3, boolean z4, boolean z5, String str, boolean z6, IntentDateBean intentDateBean) {
        this.imageUrl = "/android_asset/splash.png";
        this.isGoDetail = true;
        this.isCustomApk = z3;
        this.isAutoDownload = z4;
        this.isAPKSplashImage = z5;
        this.imageUrl = str;
        this.isIntent = z6;
        this.intentDateBean = intentDateBean;
    }
}
