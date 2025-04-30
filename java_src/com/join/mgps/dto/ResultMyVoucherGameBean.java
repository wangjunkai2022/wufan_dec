package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ResultMyVoucherGameBean {
    private List<AccountVoucherGame> coupons;
    private AccountVoucherAd help;
    private AccountVoucherStatusBean money;

    public ResultMyVoucherGameBean(List<AccountVoucherGame> list) {
        this.coupons = list;
    }

    public List<AccountVoucherGame> getCoupons() {
        return this.coupons;
    }

    public AccountVoucherAd getHelp() {
        return this.help;
    }

    public AccountVoucherStatusBean getMoney() {
        return this.money;
    }

    public void setCoupons(List<AccountVoucherGame> list) {
        this.coupons = list;
    }

    public void setHelp(AccountVoucherAd accountVoucherAd) {
        this.help = accountVoucherAd;
    }

    public void setMoney(AccountVoucherStatusBean accountVoucherStatusBean) {
        this.money = accountVoucherStatusBean;
    }

    public String toString() {
        return "ResultMyVoucherGameBean{coupons=" + this.coupons + '}';
    }

    public ResultMyVoucherGameBean() {
    }
}
