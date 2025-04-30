package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaGameNotice implements Serializable {
    private String content;
    private String target;
    private String title;
    private String type;
    private String url;

    public String getContent() {
        return this.content;
    }

    public String getTarget() {
        return this.target;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setTarget(String str) {
        this.target = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "ArenaGameNotice{content='" + this.content + "', type='" + this.type + "', title='" + this.title + "', url='" + this.url + "', target='" + this.target + "'}";
    }
}
