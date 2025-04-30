package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestGoogleRankArgs extends RequestPnAndPcArgs {
    private int area;
    private int ranking_type;

    public RequestGoogleRankArgs() {
    }

    public int getArea() {
        return this.area;
    }

    public int getRanking_type() {
        return this.ranking_type;
    }

    public void setArea(int i2) {
        this.area = i2;
    }

    public void setRanking_type(int i2) {
        this.ranking_type = i2;
    }

    public RequestGoogleRankArgs(int i2, int i4, int i5, int i6) {
        this.area = i2;
        this.ranking_type = i4;
        setPc(i6);
        setPn(i5);
    }
}
