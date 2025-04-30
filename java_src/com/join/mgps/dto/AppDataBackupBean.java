package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AppDataBackupBean {
    private String[] compare_val;
    private int type;

    public AppDataBackupBean() {
        this.type = 1;
    }

    public String[] getCompare_val() {
        return this.compare_val;
    }

    public int getType() {
        return this.type;
    }

    public void setCompare_val(String[] strArr) {
        this.compare_val = strArr;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public AppDataBackupBean(String[] strArr, int i2) {
        this.type = 1;
        this.compare_val = strArr;
        this.type = i2;
    }
}
