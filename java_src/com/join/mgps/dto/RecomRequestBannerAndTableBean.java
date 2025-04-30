package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RecomRequestBannerAndTableBean extends BaseDto {
    private String deviceid;
    private RecomRequestBannerAndTableMessage messages;
    private String requesttype;
    private String sign;
    private String version;

    public RecomRequestBannerAndTableBean() {
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public RecomRequestBannerAndTableMessage getMessages() {
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

    public void setMessages(RecomRequestBannerAndTableMessage recomRequestBannerAndTableMessage) {
        this.messages = recomRequestBannerAndTableMessage;
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

    public RecomRequestBannerAndTableBean(String str, String str2, String str3, String str4, RecomRequestBannerAndTableMessage recomRequestBannerAndTableMessage) {
        this.version = str;
        this.deviceid = str2;
        this.requesttype = str3;
        this.sign = str4;
        this.messages = recomRequestBannerAndTableMessage;
    }
}
