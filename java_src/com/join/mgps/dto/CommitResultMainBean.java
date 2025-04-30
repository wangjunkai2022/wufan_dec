package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommitResultMainBean<E> {
    private int code;
    private int flag;
    private CommitMessageMainBean<E> messages;
    private String requesttype;
    private String version;

    public CommitResultMainBean() {
    }

    public int getCode() {
        return this.code;
    }

    public int getFlag() {
        return this.flag;
    }

    public CommitMessageMainBean<E> getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setFlag(int i2) {
        this.flag = i2;
    }

    public void setMessages(CommitMessageMainBean<E> commitMessageMainBean) {
        this.messages = commitMessageMainBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public CommitResultMainBean(int i2, int i4, String str, String str2, CommitMessageMainBean<E> commitMessageMainBean) {
        this.flag = i2;
        this.code = i4;
        this.version = str;
        this.requesttype = str2;
        this.messages = commitMessageMainBean;
    }
}
