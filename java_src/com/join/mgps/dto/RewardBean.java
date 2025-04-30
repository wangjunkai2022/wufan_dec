package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RewardBean {
    private String exp;
    private String money;
    private int on_off;

    public RewardBean() {
        this.money = "";
        this.exp = "";
    }

    public String getExp() {
        return this.exp;
    }

    public String getMoney() {
        return this.money;
    }

    public int getOn_off() {
        return this.on_off;
    }

    public void setExp(String str) {
        this.exp = str;
    }

    public void setMoney(String str) {
        this.money = str;
    }

    public void setOn_off(int i2) {
        this.on_off = i2;
    }

    public String toString() {
        return "RewardBean{money=" + this.money + ", exp='" + this.exp + "', on_off=" + this.on_off + '}';
    }

    public RewardBean(String str, String str2, int i2) {
        this.money = "";
        this.exp = "";
        this.money = str;
        this.exp = str2;
        this.on_off = i2;
    }
}
