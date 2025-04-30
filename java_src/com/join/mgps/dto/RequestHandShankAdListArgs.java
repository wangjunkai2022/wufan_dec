package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestHandShankAdListArgs {
    private int message_id;
    private String message_type;
    private int uid;

    public RequestHandShankAdListArgs(int i2, int i4, String str) {
        this.uid = i2;
        this.message_id = i4;
        this.message_type = str;
    }

    public int getMessage_id() {
        return this.message_id;
    }

    public String getMessage_type() {
        return this.message_type;
    }

    public int getUid() {
        return this.uid;
    }

    public void setMessage_id(int i2) {
        this.message_id = i2;
    }

    public void setMessage_type(String str) {
        this.message_type = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
