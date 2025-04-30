package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountVoucherAd {
    private AccountVoucherAdBean link;
    private String title;

    public AccountVoucherAd() {
    }

    public AccountVoucherAdBean getLink() {
        return this.link;
    }

    public String getTitle() {
        return this.title;
    }

    public void setLink(AccountVoucherAdBean accountVoucherAdBean) {
        this.link = accountVoucherAdBean;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "AccountVoucherAd{title='" + this.title + "', link=" + this.link + '}';
    }

    public AccountVoucherAd(String str, AccountVoucherAdBean accountVoucherAdBean) {
        this.title = str;
        this.link = accountVoucherAdBean;
    }
}
