package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestCompanyIdPnArgs {
    private int company_id;
    private int pn;

    public RequestCompanyIdPnArgs(int i2, int i4) {
        this.pn = i4;
        this.company_id = i2;
    }

    public int getCompany_id() {
        return this.company_id;
    }

    public int getPn() {
        return this.pn;
    }

    public void setCompany_id(int i2) {
        this.company_id = i2;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }
}
