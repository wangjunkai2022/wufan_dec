package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GameTagInfoV2_2Bean implements Serializable {
    private String color;
    private String id;
    private String name;
    private int type;

    public String getColor() {
        return this.color;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
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

    public void setType(int i2) {
        this.type = i2;
    }

    public String toString() {
        return "GameTagInfoV2_2Bean{name='" + this.name + "', color='" + this.color + "', id='" + this.id + "', type=" + this.type + '}';
    }
}
