package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestMsgStateArge {
    private String content;
    private int tag_id;
    private int uid;

    public RequestMsgStateArge(int i2, String str, int i4) {
        this.uid = i2;
        this.content = str;
        this.tag_id = i4;
    }

    public String getContent() {
        return this.content;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setTag_id(int i2) {
        this.tag_id = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
