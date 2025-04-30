package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;
@JsonIgnoreProperties(ignoreUnknown = true)
/* loaded from: classes4.dex */
public class SearchAppBean implements Serializable {
    private String code;
    private String flag;
    private SearchAppMessageBean messages;
    private String version;

    public SearchAppBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public SearchAppMessageBean getMessages() {
        return this.messages;
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

    public void setMessages(SearchAppMessageBean searchAppMessageBean) {
        this.messages = searchAppMessageBean;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public SearchAppBean(String str, String str2, String str3, SearchAppMessageBean searchAppMessageBean) {
        this.flag = str;
        this.code = str2;
        this.version = str3;
        this.messages = searchAppMessageBean;
    }
}
