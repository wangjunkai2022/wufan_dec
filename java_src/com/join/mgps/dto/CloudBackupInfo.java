package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CloudBackupInfo implements Serializable {
    private String add_time;
    private String brand_name;
    private String rid;

    public String getAdd_time() {
        return this.add_time;
    }

    public String getBrand_name() {
        return this.brand_name;
    }

    public String getRid() {
        return this.rid;
    }

    public void setAdd_time(String str) {
        this.add_time = str;
    }

    public void setBrand_name(String str) {
        this.brand_name = str;
    }

    public void setRid(String str) {
        this.rid = str;
    }
}
