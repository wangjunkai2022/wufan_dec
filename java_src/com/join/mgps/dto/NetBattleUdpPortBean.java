package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class NetBattleUdpPortBean implements Serializable {
    private String ip;
    private int port;

    public String getIp() {
        return this.ip;
    }

    public int getPort() {
        return this.port;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setPort(int i2) {
        this.port = i2;
    }
}
