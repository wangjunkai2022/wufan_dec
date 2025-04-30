package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CollectionBean {
    private String code;
    private String flag;
    private CollectionMessageBean messages;
    private String requesttype;
    private String version;

    public CollectionBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public CollectionMessageBean getMessages() {
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

    public void setMessages(CollectionMessageBean collectionMessageBean) {
        this.messages = collectionMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CollectionBean(String str, String str2, String str3, String str4, CollectionMessageBean collectionMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = collectionMessageBean;
    }
}
