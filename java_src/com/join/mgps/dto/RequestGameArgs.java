package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestGameArgs extends BaseDto {
    private String belong_to_tag;
    private String platform_type;
    private int pn;
    private int[] showtag;
    private int sort;
    private String type;

    public RequestGameArgs() {
    }

    public String getBelong_to_tag() {
        return this.belong_to_tag;
    }

    public String getPlatform_type() {
        return this.platform_type;
    }

    public int getPn() {
        return this.pn;
    }

    public int[] getShowtag() {
        return this.showtag;
    }

    public int getSort() {
        return this.sort;
    }

    public String getType() {
        return this.type;
    }

    public void setBelong_to_tag(String str) {
        this.belong_to_tag = str;
    }

    public void setPlatform_type(String str) {
        this.platform_type = str;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setShowtag(int[] iArr) {
        this.showtag = iArr;
    }

    public void setSort(int i2) {
        this.sort = i2;
    }

    public void setType(String str) {
        this.type = str;
    }

    public RequestGameArgs(int i2, String str, int i4, String str2, String str3, int[] iArr) {
        this.showtag = iArr;
        this.pn = i2;
        this.type = str;
        this.sort = i4;
        this.platform_type = str2;
        this.belong_to_tag = str3;
    }
}
