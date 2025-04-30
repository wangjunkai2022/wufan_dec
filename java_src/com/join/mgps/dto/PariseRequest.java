package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PariseRequest {
    private String collection_id;
    private String comment_id;
    private String information_id;
    private int uid;

    public PariseRequest() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getComment_id() {
        return this.comment_id;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setComment_id(String str) {
        this.comment_id = str;
    }

    public void setInformation_id(String str) {
        this.information_id = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public PariseRequest(String str, String str2, int i2) {
        this.information_id = str;
        this.comment_id = str2;
        this.uid = i2;
    }
}
