package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountGetVoucherResult {
    AccountGetVoucherResultBean coupon_code;

    public AccountGetVoucherResult() {
    }

    public AccountGetVoucherResultBean getCoupon_code() {
        return this.coupon_code;
    }

    public void setCoupon_code(AccountGetVoucherResultBean accountGetVoucherResultBean) {
        this.coupon_code = accountGetVoucherResultBean;
    }

    public String toString() {
        return "AccountGetVoucherResult{coupon_code=" + this.coupon_code + '}';
    }

    public AccountGetVoucherResult(AccountGetVoucherResultBean accountGetVoucherResultBean) {
        this.coupon_code = accountGetVoucherResultBean;
    }
}
