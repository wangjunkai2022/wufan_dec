package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommentRequestPageBean {
    private String game_id;
    private int pc;
    private int pn;

    public CommentRequestPageBean() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getPc() {
        return this.pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setPc(int i2) {
        this.pc = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public CommentRequestPageBean(String str, int i2, int i4) {
        this.game_id = str;
        this.pn = i2;
        this.pc = i4;
    }
}
