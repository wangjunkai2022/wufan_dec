package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestPnAndPcArgs extends BaseDto {
    private int pc;
    private int pn;

    public RequestPnAndPcArgs() {
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public RequestPnAndPcArgs(int i2, int i4) {
        this.pn = i2;
        this.pc = i4;
    }
}
