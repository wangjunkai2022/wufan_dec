package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class BootPageRequestArgs {
    private String phone_model;
    private String phone_producer;
    private String phone_system;

    public BootPageRequestArgs(String str, String str2, String str3) {
        this.phone_model = str;
        this.phone_system = str2;
        this.phone_producer = str3;
    }

    public String getPhone_model() {
        return this.phone_model;
    }

    public String getPhone_producer() {
        return this.phone_producer;
    }

    public String getPhone_system() {
        return this.phone_system;
    }

    public void setPhone_model(String str) {
        this.phone_model = str;
    }

    public void setPhone_producer(String str) {
        this.phone_producer = str;
    }

    public void setPhone_system(String str) {
        this.phone_system = str;
    }
}
