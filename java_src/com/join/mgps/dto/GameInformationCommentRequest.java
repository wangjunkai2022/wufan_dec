package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameInformationCommentRequest {
    private int[] comment_type;
    private String information_id;
    private int pc;
    private int pn;
    private int uid;

    public GameInformationCommentRequest() {
    }

    public int[] getComment_type() {
        return this.comment_type;
    }

    public String getInformation_id() {
        return this.information_id;
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

    public void setInformation_id(String str) {
        this.information_id = str;
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

    public GameInformationCommentRequest(int[] iArr, String str, int i2, int i4) {
        this.comment_type = iArr;
        this.information_id = str;
        this.pn = i2;
        this.pc = i4;
    }
}
