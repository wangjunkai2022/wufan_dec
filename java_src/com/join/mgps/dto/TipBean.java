package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class TipBean implements Serializable {
    private String color;
    private String content;
    private String id;
    private String name;
    private String type;

    public TipBean() {
    }

    public String getColor() {
        return this.color;
    }

    public String getContent() {
        return this.content;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getType() {
        return this.type;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public TipBean(String str, String str2, String str3) {
        this.name = str;
        this.color = str2;
        this.id = str3;
    }

    public TipBean(String str, String str2, String str3, String str4) {
        this.name = str;
        this.color = str2;
        this.id = str3;
        this.type = str4;
    }
}
