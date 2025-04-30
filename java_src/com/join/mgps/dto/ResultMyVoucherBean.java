package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ResultMyVoucherBean {
    private AccountVoucherAd ad;
    private List<AccountVoucher> coupons;
    private boolean is_show_recommend_bar;
    private List<AccountVoucherGameBean> recommend;

    public ResultMyVoucherBean() {
    }

    public AccountVoucherAd getAd() {
        return this.ad;
    }

    public List<AccountVoucher> getCoupons() {
        return this.coupons;
    }

    public List<AccountVoucherGameBean> getRecommend() {
        return this.recommend;
    }

    public boolean is_show_recommend_bar() {
        return this.is_show_recommend_bar;
    }

    public void setAd(AccountVoucherAd accountVoucherAd) {
        this.ad = accountVoucherAd;
    }

    public void setCoupons(List<AccountVoucher> list) {
        this.coupons = list;
    }

    public void setIs_show_recommend_bar(boolean z3) {
        this.is_show_recommend_bar = z3;
    }

    public void setRecommend(List<AccountVoucherGameBean> list) {
        this.recommend = list;
    }

    public String toString() {
        return "ResultMyVoucherBean{coupons=" + this.coupons + ", recommend=" + this.recommend + ", ad=" + this.ad + '}';
    }

    public ResultMyVoucherBean(List<AccountVoucher> list, List<AccountVoucherGameBean> list2, AccountVoucherAd accountVoucherAd) {
        this.coupons = list;
        this.recommend = list2;
        this.ad = accountVoucherAd;
    }
}
