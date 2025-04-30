package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RecommenGroupClassify {
    private int gid;
    private String gname;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RecommenGroupClassify recommenGroupClassify = (RecommenGroupClassify) obj;
        if (this.gid != recommenGroupClassify.gid) {
            return false;
        }
        String str = this.gname;
        String str2 = recommenGroupClassify.gname;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int getGid() {
        return this.gid;
    }

    public String getGname() {
        return this.gname;
    }

    public int hashCode() {
        int i2 = this.gid * 31;
        String str = this.gname;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public void setGid(int i2) {
        this.gid = i2;
    }

    public void setGname(String str) {
        this.gname = str;
    }
}
