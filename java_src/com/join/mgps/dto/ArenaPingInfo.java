package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaPingInfo implements Serializable {
    private String ip;
    private long pingTime;
    private int port;

    public String getIp() {
        return this.ip;
    }

    public long getPingTime() {
        return this.pingTime;
    }

    public int getPort() {
        return this.port;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setPingTime(long j4) {
        this.pingTime = j4;
    }

    public void setPort(int i2) {
        this.port = i2;
    }
}
