package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class Top3bean {
    private AppBeanMain appTop1;
    private AppBeanMain appTop2;
    private AppBeanMain appTop3;
    private String intentType;
    private String name;

    public Top3bean() {
    }

    public AppBeanMain getAppTop1() {
        return this.appTop1;
    }

    public AppBeanMain getAppTop2() {
        return this.appTop2;
    }

    public AppBeanMain getAppTop3() {
        return this.appTop3;
    }

    public String getIntentType() {
        return this.intentType;
    }

    public String getName() {
        return this.name;
    }

    public void setAppTop1(AppBeanMain appBeanMain) {
        this.appTop1 = appBeanMain;
    }

    public void setAppTop2(AppBeanMain appBeanMain) {
        this.appTop2 = appBeanMain;
    }

    public void setAppTop3(AppBeanMain appBeanMain) {
        this.appTop3 = appBeanMain;
    }

    public void setIntentType(String str) {
        this.intentType = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public Top3bean(String str, String str2, AppBeanMain appBeanMain, AppBeanMain appBeanMain2, AppBeanMain appBeanMain3) {
        this.name = str;
        this.intentType = str2;
        this.appTop1 = appBeanMain;
        this.appTop2 = appBeanMain2;
        this.appTop3 = appBeanMain3;
    }
}
