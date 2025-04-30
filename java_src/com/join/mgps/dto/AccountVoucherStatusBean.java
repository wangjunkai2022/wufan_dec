package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class AccountVoucherStatusBean implements Serializable {
    private int count;
    private double money;

    public AccountVoucherStatusBean(double d4, int i2) {
        this.money = d4;
        this.count = i2;
    }

    public int getCount() {
        return this.count;
    }

    public double getMoney() {
        return this.money;
    }

    public void setCount(int i2) {
        this.count = i2;
    }

    public void setMoney(double d4) {
        this.money = d4;
    }

    public String toString() {
        return "AccountVoucherStatusBean{money=" + this.money + ", count=" + this.count + '}';
    }

    public AccountVoucherStatusBean() {
    }
}
