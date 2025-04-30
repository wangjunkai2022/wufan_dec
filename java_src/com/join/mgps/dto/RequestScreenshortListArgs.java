package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestScreenshortListArgs {
    private String gameId;
    private int pc = 20;
    private int pn;
    private int typeId;

    public RequestScreenshortListArgs(int i2, String str, int i4) {
        this.typeId = i2;
        this.gameId = str;
        this.pn = i4;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getTypeId() {
        return this.typeId;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setTypeId(int i2) {
        this.typeId = i2;
    }
}
