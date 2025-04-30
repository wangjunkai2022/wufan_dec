package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ArenaSelectServer implements Serializable {
    private int area;
    private boolean is_play;
    private boolean is_recommend;
    private int ping;
    private int server_no;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.server_no == ((ArenaSelectServer) obj).server_no;
    }

    public int getArea() {
        return this.area;
    }

    public int getPing() {
        return this.ping;
    }

    public int getServer_no() {
        return this.server_no;
    }

    public int hashCode() {
        return this.server_no;
    }

    public boolean is_play() {
        return this.is_play;
    }

    public boolean is_recommend() {
        return this.is_recommend;
    }

    public void setArea(int i2) {
        this.area = i2;
    }

    public void setIs_play(boolean z3) {
        this.is_play = z3;
    }

    public void setIs_recommend(boolean z3) {
        this.is_recommend = z3;
    }

    public void setPing(int i2) {
        this.ping = i2;
    }

    public void setServer_no(int i2) {
        this.server_no = i2;
    }
}
