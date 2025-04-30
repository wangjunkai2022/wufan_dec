package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommitBean {
    private String code;
    private String flag;
    private CommitMessageBean messages;
    private String requesttype;
    private String version;

    public CommitBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public CommitMessageBean getMessages() {
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

    public void setMessages(CommitMessageBean commitMessageBean) {
        this.messages = commitMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CommitBean(String str, String str2, String str3, String str4, CommitMessageBean commitMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = commitMessageBean;
    }
}
