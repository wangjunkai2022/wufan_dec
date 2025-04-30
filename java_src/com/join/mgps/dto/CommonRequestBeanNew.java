package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommonRequestBeanNew<E> {
    private String deviceid;
    private CommonRequestMessageNew<E> messages;
    private String sign;
    private String version;

    public CommonRequestBeanNew() {
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public CommonRequestMessageNew getMessages() {
        return this.messages;
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

    public void setMessages(CommonRequestMessageNew commonRequestMessageNew) {
        this.messages = commonRequestMessageNew;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CommonRequestBeanNew(String str, String str2, String str3, CommonRequestMessageNew<E> commonRequestMessageNew) {
        this.version = str;
        this.deviceid = str2;
        this.sign = str3;
        this.messages = commonRequestMessageNew;
    }
}
