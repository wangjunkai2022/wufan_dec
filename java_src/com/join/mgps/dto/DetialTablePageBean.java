package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class DetialTablePageBean implements Serializable {
    private String title;
    private String url;

    public DetialTablePageBean() {
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public DetialTablePageBean(String str, String str2) {
        this.title = str;
        this.url = str2;
    }
}
