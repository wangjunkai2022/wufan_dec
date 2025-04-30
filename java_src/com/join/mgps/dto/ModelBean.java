package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ModelBean implements Serializable {
    private String color;
    private String id;
    private String name;

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
}
