package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestPnAndPcAndUidArgs extends BaseDto {
    private boolean is_vip;
    private int pc;
    private int pn;
    private int uid;

    public RequestPnAndPcAndUidArgs() {
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public boolean isIs_vip() {
        return this.is_vip;
    }

    public void setIs_vip(boolean z3) {
        this.is_vip = z3;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public RequestPnAndPcAndUidArgs(int i2, int i4, int i5) {
        this.pn = i2;
        this.pc = i4;
        this.uid = i5;
    }

    public RequestPnAndPcAndUidArgs(boolean z3, int i2) {
        this.is_vip = z3;
        this.uid = i2;
    }
}
