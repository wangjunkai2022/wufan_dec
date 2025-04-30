package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class PspBattleServer implements Serializable {
    private String ip;
    private String people;
    private int port;
    private String server_name;

    public String getIp() {
        return this.ip;
    }

    public String getPeople() {
        return this.people;
    }

    public int getPort() {
        return this.port;
    }

    public String getServer_name() {
        return this.server_name;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setPeople(String str) {
        this.people = str;
    }

    public void setPort(int i2) {
        this.port = i2;
    }

    public void setServer_name(String str) {
        this.server_name = str;
    }
}
