package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestModuleArgs extends BaseDto {
    private int jump_type;
    private int pc;
    private int pn;

    public RequestModuleArgs() {
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setJump_type(int i2) {
        this.jump_type = i2;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public RequestModuleArgs(int i2, int i4, int i5) {
        this.jump_type = i2;
        this.pn = i4;
        this.pc = i5;
    }
}
