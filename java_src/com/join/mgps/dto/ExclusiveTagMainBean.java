package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ExclusiveTagMainBean {
    private String code;
    private String flag;
    private ExclusiveTagMessageBean messages;
    private String requesttype;
    private String version;

    public ExclusiveTagMainBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public ExclusiveTagMessageBean getMessages() {
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

    public void setMessages(ExclusiveTagMessageBean exclusiveTagMessageBean) {
        this.messages = exclusiveTagMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public ExclusiveTagMainBean(String str, String str2, String str3, String str4, ExclusiveTagMessageBean exclusiveTagMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = exclusiveTagMessageBean;
    }
}
