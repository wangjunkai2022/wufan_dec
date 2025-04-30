package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PayActivityRebate {
    private int min_money;
    private int rebate_money;

    public PayActivityRebate() {
    }

    public int getMin_money() {
        return this.min_money;
    }

    public int getRebate_money() {
        return this.rebate_money;
    }

    public void setMin_money(int i2) {
        this.min_money = i2;
    }

    public void setRebate_money(int i2) {
        this.rebate_money = i2;
    }

    public String toString() {
        return "PayActivityRebate{min_money=" + this.min_money + ", rebate_money=" + this.rebate_money + '}';
    }

    public PayActivityRebate(int i2, int i4) {
        this.min_money = i2;
        this.rebate_money = i4;
    }
}
