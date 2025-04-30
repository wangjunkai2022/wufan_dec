package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class SearchRecrodBean implements Serializable {
    private long create_time;
    private int id;
    private String name;

    public SearchRecrodBean() {
    }

    public long getCreate_time() {
        return this.create_time;
    }

    public int getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public void setCreate_time(long j4) {
        this.create_time = j4;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setName(String str) {
        this.name = str;
    }

    public SearchRecrodBean(int i2, String str, long j4) {
        this.id = i2;
        this.name = str;
        this.create_time = j4;
    }
}
