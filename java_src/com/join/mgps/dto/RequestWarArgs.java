package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestWarArgs extends BaseDto {
    private int pn;
    private int type;

    public RequestWarArgs() {
    }

    public int getPn() {
        return this.pn;
    }

    public int getType() {
        return this.type;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public RequestWarArgs(int i2, int i4) {
        this.pn = i2;
        this.type = i4;
    }
}
