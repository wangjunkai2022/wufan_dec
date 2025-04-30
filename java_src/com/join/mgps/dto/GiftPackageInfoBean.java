package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GiftPackageInfoBean implements Serializable {
    private String code;
    private String flag;
    private GiftPackageInfoMessageBean messages;
    private String requesttype;
    private String version;

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public GiftPackageInfoMessageBean getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setFlag(String str) {
        this.flag = str;
    }

    public void setMessages(GiftPackageInfoMessageBean giftPackageInfoMessageBean) {
        this.messages = giftPackageInfoMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
