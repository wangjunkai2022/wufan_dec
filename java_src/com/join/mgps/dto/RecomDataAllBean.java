package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RecomDataAllBean {
    private int code;
    private String error_info;
    private int flag;
    private RecomDataMessageBean messages;
    private String requesttype;
    private String version;

    public RecomDataAllBean() {
    }

    public int getCode() {
        return this.code;
    }

    public String getError_info() {
        return this.error_info;
    }

    public int getFlag() {
        return this.flag;
    }

    public RecomDataMessageBean getMessages() {
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

    public void setError_info(String str) {
        this.error_info = str;
    }

    public void setFlag(int i2) {
        this.flag = i2;
    }

    public void setMessages(RecomDataMessageBean recomDataMessageBean) {
        this.messages = recomDataMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public RecomDataAllBean(int i2, int i4, String str, String str2, RecomDataMessageBean recomDataMessageBean) {
        this.flag = i2;
        this.code = i4;
        this.version = str;
        this.requesttype = str2;
        this.messages = recomDataMessageBean;
    }
}
