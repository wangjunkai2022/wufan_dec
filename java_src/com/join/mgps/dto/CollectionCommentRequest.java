package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CollectionCommentRequest {
    private String collection_id;
    private int[] comment_type;
    private int pc;
    private int pn;
    private int uid;

    public CollectionCommentRequest() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public int[] getComment_type() {
        return this.comment_type;
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

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setComment_type(int[] iArr) {
        this.comment_type = iArr;
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

    public CollectionCommentRequest(int[] iArr, String str, int i2, int i4, int i5) {
        this.comment_type = iArr;
        this.collection_id = str;
        this.pn = i2;
        this.pc = i4;
        this.uid = i5;
    }
}
