package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestCompanyNameArgs {
    private String company_name;
    private int pn;

    public RequestCompanyNameArgs(int i2, String str) {
        this.pn = i2;
        this.company_name = str;
    }

    public String getCompany_name() {
        return this.company_name;
    }

    public int getPn() {
        return this.pn;
    }

    public void setCompany_name(String str) {
        this.company_name = str;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public String toString() {
        return "RequestCompanyNameArgs{pn=" + this.pn + ", company_name='" + this.company_name + "'}";
    }
}
