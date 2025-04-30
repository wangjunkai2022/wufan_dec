package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CategoryBean {
    private String code;
    private String flag;
    private CategoryMessageBean messages;
    private String requesttype;
    private String version;

    public CategoryBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public CategoryMessageBean getMessages() {
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

    public void setMessages(CategoryMessageBean categoryMessageBean) {
        this.messages = categoryMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CategoryBean(String str, String str2, String str3, String str4, CategoryMessageBean categoryMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = categoryMessageBean;
    }
}
