package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class WalletResponse {
    private List<CouponsData> coupons;
    private boolean support_coupon_wallet = false;
    private WalletData wallet;

    public List<CouponsData> getCoupons() {
        return this.coupons;
    }

    public WalletData getWallet() {
        return this.wallet;
    }

    public boolean isSupport_coupon_wallet() {
        return this.support_coupon_wallet;
    }

    public void setCoupons(List<CouponsData> list) {
        this.coupons = list;
    }

    public void setSupport_coupon_wallet(boolean z3) {
        this.support_coupon_wallet = z3;
    }

    public void setWallet(WalletData walletData) {
        this.wallet = walletData;
    }
}
