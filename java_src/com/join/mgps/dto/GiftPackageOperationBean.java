package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GiftPackageOperationBean implements Serializable {
    private String code;
    private String error_info;
    private String flag;
    private GiftPackageOperationMessageBean messages;
    private String requesttype;
    private String version;

    public String getCode() {
        return this.code;
    }

    public String getError_info() {
        return this.error_info;
    }

    public String getFlag() {
        return this.flag;
    }

    public GiftPackageOperationMessageBean getMessages() {
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

    public void setError_info(String str) {
        this.error_info = str;
    }

    public void setFlag(String str) {
        this.flag = str;
    }

    public void setMessages(GiftPackageOperationMessageBean giftPackageOperationMessageBean) {
        this.messages = giftPackageOperationMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
