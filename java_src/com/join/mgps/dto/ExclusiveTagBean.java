package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ExclusiveTagBean {
    private String color;
    private String id;
    private String name;

    public ExclusiveTagBean() {
    }

    public String getColor() {
        return this.color;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setColor(String str) {
        this.color = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public ExclusiveTagBean(String str, String str2, String str3) {
        this.id = str;
        this.name = str2;
        this.color = str3;
    }
}
