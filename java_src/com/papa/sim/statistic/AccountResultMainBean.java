package com.papa.sim.statistic;
/* loaded from: classes4.dex */
public class AccountResultMainBean<E> {
    private PabiBalanceBean data;
    private int error;

    public AccountResultMainBean() {
    }

    public PabiBalanceBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(PabiBalanceBean pabiBalanceBean) {
        this.data = pabiBalanceBean;
    }

    public void setError(int i2) {
        this.error = i2;
    }

    public AccountResultMainBean(int i2, PabiBalanceBean pabiBalanceBean) {
        this.error = i2;
        this.data = pabiBalanceBean;
    }
}
