package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RecomRequestAdIdArgs extends BaseDto {
    private String from_aid;
    private int is_anonymous;

    /* renamed from: m  reason: collision with root package name */
    private String f48149m;
    private int pn;
    private int uid;

    public RecomRequestAdIdArgs(int i2, int i4, int i5, String str, String str2) {
        this.pn = i2;
        this.is_anonymous = i4;
        this.uid = i5;
        this.from_aid = str;
        this.f48149m = str2;
    }

    public String getFrom_aid() {
        return this.from_aid;
    }

    public int getIs_anonymous() {
        return this.is_anonymous;
    }

    public String getM() {
        return this.f48149m;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public void setFrom_aid(String str) {
        this.from_aid = str;
    }

    public void setIs_anonymous(int i2) {
        this.is_anonymous = i2;
    }

    public void setM(String str) {
        this.f48149m = str;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
