package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class SearchRecommendBean {
    private String code;
    private String flag;
    private SearchRemMessageBean messages;
    private String requesttype;
    private String version;

    public SearchRecommendBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public SearchRemMessageBean getMessages() {
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

    public void setMessages(SearchRemMessageBean searchRemMessageBean) {
        this.messages = searchRemMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public SearchRecommendBean(String str, String str2, String str3, String str4, SearchRemMessageBean searchRemMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.requesttype = str4;
        this.messages = searchRemMessageBean;
    }
}
