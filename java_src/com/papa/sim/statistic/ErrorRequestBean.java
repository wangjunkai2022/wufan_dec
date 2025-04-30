package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class ErrorRequestBean {
    private String deviceid;
    private ErrorRequestMessage messages;
    private String requesttype;
    private String sign;
    private String version;

    public ErrorRequestBean(String str, String str2, String str3, String str4, ErrorRequestMessage errorRequestMessage) {
        this.version = str;
        this.deviceid = str2;
        this.requesttype = str3;
        this.sign = str4;
        this.messages = errorRequestMessage;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public ErrorRequestMessage getMessages() {
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

    public void setMessages(ErrorRequestMessage errorRequestMessage) {
        this.messages = errorRequestMessage;
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
}
