package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class FightAppBean {
    private String code;
    private String flag;
    private FightAppMessageBean messages;
    private String requesttype;
    private String version;

    public FightAppBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public FightAppMessageBean getMessages() {
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

    public void setMessages(FightAppMessageBean fightAppMessageBean) {
        this.messages = fightAppMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public FightAppBean(String str, String str2, String str3, String str4, FightAppMessageBean fightAppMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = fightAppMessageBean;
    }
}
