package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RecomRequestBean<E> extends BaseDto {
    private String channel_num;
    private String deviceid;
    private RecomRequestMessage<E> messages;
    private String requesttype;
    private String sign;
    private String version;

    public RecomRequestBean() {
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public RecomRequestMessage getMessages() {
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

    public void setChannel_num(String str) {
        this.channel_num = str;
    }

    public void setDeviceid(String str) {
        this.deviceid = str;
    }

    public void setMessages(RecomRequestMessage recomRequestMessage) {
        this.messages = recomRequestMessage;
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

    public RecomRequestBean(String str, String str2, String str3, String str4, String str5, RecomRequestMessage recomRequestMessage) {
        this.version = str;
        this.deviceid = str2;
        this.requesttype = str3;
        this.sign = str5;
        this.messages = recomRequestMessage;
        this.channel_num = str4;
    }
}
