package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestCommitArgs extends BaseDto {
    private int[] comment_type;
    private String game_id;
    private int pc;
    private int pn;
    private int uid;

    public RequestCommitArgs() {
    }

    public int[] getComment_type() {
        return this.comment_type;
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

    public int getUid() {
        return this.uid;
    }

    public void setComment_type(int[] iArr) {
        this.comment_type = iArr;
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

    public void setUid(int i2) {
        this.uid = i2;
    }

    public RequestCommitArgs(int[] iArr, int i2, int i4, String str, int i5) {
        this.comment_type = iArr;
        this.pn = i2;
        this.pc = i4;
        this.game_id = str;
        this.uid = i5;
    }
}
