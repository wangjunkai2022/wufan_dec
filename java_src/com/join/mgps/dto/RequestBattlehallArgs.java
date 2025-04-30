package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestBattlehallArgs extends BaseDto {
    private int collection_type;
    private int pc;
    private int pn;

    public RequestBattlehallArgs() {
    }

    public int getCollection_type() {
        return this.collection_type;
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setCollection_type(int i2) {
        this.collection_type = i2;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public RequestBattlehallArgs(int i2, int i4, int i5) {
        this.collection_type = i2;
        this.pn = i4;
        this.pc = i5;
    }
}
