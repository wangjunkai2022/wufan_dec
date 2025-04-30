package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class CloudArchiveCfg implements Serializable {
    private long last_enter_main_page_time;
    private int location_at;

    public long getLast_enter_main_page_time() {
        return this.last_enter_main_page_time;
    }

    public int getLocation_at() {
        return this.location_at;
    }

    public void setLast_enter_main_page_time(long j4) {
        this.last_enter_main_page_time = j4;
    }

    public void setLocation_at(int i2) {
        this.location_at = i2;
    }
}
