package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class NetBattleGetMatchAvailableServerBean implements Serializable {
    private String error;
    private String ip;
    private String port;

    public NetBattleGetMatchAvailableServerBean() {
    }

    public String getError() {
        return this.error;
    }

    public String getIp() {
        return this.ip;
    }

    public String getPort() {
        return this.port;
    }

    public void setError(String str) {
        this.error = str;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setPort(String str) {
        this.port = str;
    }

    public NetBattleGetMatchAvailableServerBean(String str, String str2, String str3) {
        this.error = str;
        this.ip = str2;
        this.port = str3;
    }
}
