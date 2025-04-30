package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ServiceState {
    private long add_time;
    private String title;
    private int type;

    public long getAdd_time() {
        return this.add_time * 1000;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public void setAdd_time(long j4) {
        this.add_time = j4;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }
}
