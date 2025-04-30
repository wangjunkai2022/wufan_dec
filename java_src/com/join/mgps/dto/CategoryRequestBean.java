package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CategoryRequestBean<E> {
    private String deviceid;
    private CategoryRequestMessage<E> messages;
    private String requesttype;
    private String sign;
    private String version;

    public CategoryRequestBean() {
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public CategoryRequestMessage getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getSign() {
        return this.sign;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public void setMessages(CategoryRequestMessage categoryRequestMessage) {
        this.messages = categoryRequestMessage;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CategoryRequestBean(String str, String str2, String str3, String str4, CategoryRequestMessage categoryRequestMessage) {
        this.version = str;
        this.deviceid = str2;
        this.requesttype = str3;
        this.sign = str4;
        this.messages = categoryRequestMessage;
    }
}
