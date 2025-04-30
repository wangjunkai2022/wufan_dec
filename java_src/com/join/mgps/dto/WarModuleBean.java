package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class WarModuleBean {
    private String code;
    private String flag;
    private WarModuleMessageBean messages;
    private String requesttype;
    private String version;

    public WarModuleBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public WarModuleMessageBean getMessages() {
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

    public void setMessages(WarModuleMessageBean warModuleMessageBean) {
        this.messages = warModuleMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public WarModuleBean(String str, String str2, String str3, String str4, WarModuleMessageBean warModuleMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = warModuleMessageBean;
    }
}
