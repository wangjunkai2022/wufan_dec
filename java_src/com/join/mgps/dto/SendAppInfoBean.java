package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class SendAppInfoBean {
    private String appname;
    private String apppackage;
    private long times;

    public SendAppInfoBean() {
    }

    public String getAppname() {
        return this.appname;
    }

    public String getApppackage() {
        return this.apppackage;
    }

    public long getTimes() {
        return this.times;
    }

    public void setAppname(String str) {
        this.appname = str;
    }

    public void setApppackage(String str) {
        this.apppackage = str;
    }

    public void setTimes(long j4) {
        this.times = j4;
    }

    public SendAppInfoBean(String str, String str2, long j4) {
        this.appname = str;
        this.apppackage = str2;
        this.times = j4;
    }
}
