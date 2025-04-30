package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class ResultMainBean<E> {
    private int code;
    private int flag;
    private ResultMessageBean<E> messages;
    private String requesttype;
    private String version;

    public ResultMainBean() {
    }

    public int getCode() {
        return this.code;
    }

    public int getFlag() {
        return this.flag;
    }

    public ResultMessageBean<E> getMessages() {
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

    public void setMessages(ResultMessageBean<E> resultMessageBean) {
        this.messages = resultMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public ResultMainBean(int i2, int i4, String str, String str2, ResultMessageBean<E> resultMessageBean) {
        this.flag = i2;
        this.code = i4;
        this.version = str;
        this.requesttype = str2;
        this.messages = resultMessageBean;
    }
}
