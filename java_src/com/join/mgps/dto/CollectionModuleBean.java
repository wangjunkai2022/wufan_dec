package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CollectionModuleBean {
    private String code;
    private String flag;
    private CollectionModuleMessageBean messages;
    private String requesttype;
    private String version;

    public CollectionModuleBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public CollectionModuleMessageBean getMessages() {
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

    public void setMessages(CollectionModuleMessageBean collectionModuleMessageBean) {
        this.messages = collectionModuleMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CollectionModuleBean(String str, String str2, String str3, String str4, CollectionModuleMessageBean collectionModuleMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = collectionModuleMessageBean;
    }
}
