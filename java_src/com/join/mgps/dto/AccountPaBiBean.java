package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountPaBiBean {
    private String pay_ad_title;
    private PapayInfo wallet;

    public AccountPaBiBean() {
    }

    public String getPay_ad_title() {
        return this.pay_ad_title;
    }

    public PapayInfo getWallet() {
        return this.wallet;
    }

    public void setPay_ad_title(String str) {
        this.pay_ad_title = str;
    }

    public void setWallet(PapayInfo papayInfo) {
        this.wallet = papayInfo;
    }

    public String toString() {
        return "AccountPaBiBean{pay_ad_title='" + this.pay_ad_title + "', wallet=" + this.wallet + '}';
    }

    public AccountPaBiBean(String str, PapayInfo papayInfo) {
        this.pay_ad_title = str;
        this.wallet = papayInfo;
    }
}
