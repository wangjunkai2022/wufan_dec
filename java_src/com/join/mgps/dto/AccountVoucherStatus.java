package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class AccountVoucherStatus implements Serializable {
    private AccountVoucherStatusBean available;
    private AccountVoucherStatusBean used;

    public AccountVoucherStatus(AccountVoucherStatusBean accountVoucherStatusBean, AccountVoucherStatusBean accountVoucherStatusBean2) {
        this.available = accountVoucherStatusBean;
        this.used = accountVoucherStatusBean2;
    }

    public AccountVoucherStatusBean getAvailable() {
        return this.available;
    }

    public AccountVoucherStatusBean getUsed() {
        return this.used;
    }

    public void setAvailable(AccountVoucherStatusBean accountVoucherStatusBean) {
        this.available = accountVoucherStatusBean;
    }

    public void setUsed(AccountVoucherStatusBean accountVoucherStatusBean) {
        this.used = accountVoucherStatusBean;
    }

    public String toString() {
        return "AccountVoucherStatus{available=" + this.available + ", used=" + this.used + '}';
    }

    public AccountVoucherStatus() {
    }
}
