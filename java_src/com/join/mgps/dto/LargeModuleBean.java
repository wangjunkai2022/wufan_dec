package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class LargeModuleBean {
    private String code;
    private String flag;
    private LargeModuleMessageBean messages;
    private String requesttype;
    private String version;

    public LargeModuleBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public LargeModuleMessageBean getMessages() {
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

    public void setMessages(LargeModuleMessageBean largeModuleMessageBean) {
        this.messages = largeModuleMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public LargeModuleBean(String str, String str2, String str3, String str4, LargeModuleMessageBean largeModuleMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = largeModuleMessageBean;
    }
}
