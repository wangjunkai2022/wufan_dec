package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class NetGetDataBattleUdpPortBean implements Serializable {
    private String error;
    private String ip;
    private int port;

    public String getError() {
        return this.error;
    }

    public String getIp() {
        return this.ip;
    }

    public int getPort() {
        return this.port;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setPort(int i2) {
        this.port = i2;
    }

    public String toString() {
        return "NetGetDataBattleUdpPortBean{ip='" + this.ip + "', port=" + this.port + ", error='" + this.error + "'}";
    }
}
