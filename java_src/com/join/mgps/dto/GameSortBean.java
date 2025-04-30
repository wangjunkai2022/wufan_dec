package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GameSortBean implements Serializable {
    public int id;
    private String name;
    public String sort;

    public GameSortBean() {
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getSort() {
        return this.sort;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSort(String str) {
        this.sort = str;
    }

    public String toString() {
        return "GameSortBean{id=" + this.id + ", name='" + this.name + "', sort='" + this.sort + "'}";
    }

    public GameSortBean(int i2, String str, String str2) {
        this.id = i2;
        this.name = str;
        this.sort = str2;
    }
}
