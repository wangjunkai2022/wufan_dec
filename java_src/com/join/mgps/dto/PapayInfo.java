package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PapayInfo {
    private int coupon_available_count;
    private String money;
    private String red_envelope;
    private boolean red_envelope_menu;

    public int getCoupon_available_count() {
        return this.coupon_available_count;
    }

    public String getMoney() {
        return this.money;
    }

    public String getRed_envelope() {
        return this.red_envelope;
    }

    public boolean isRed_envelope_menu() {
        return this.red_envelope_menu;
    }

    public void setCoupon_available_count(int i2) {
        this.coupon_available_count = i2;
    }

    public void setMoney(String str) {
        this.money = str;
    }

    public void setRed_envelope(String str) {
        this.red_envelope = str;
    }

    public void setRed_envelope_menu(boolean z3) {
        this.red_envelope_menu = z3;
    }

    public String toString() {
        return "PapayInfo{money='" + this.money + "', red_envelope='" + this.red_envelope + "', red_envelope_menu=" + this.red_envelope_menu + ", coupon_available_count=" + this.coupon_available_count + '}';
    }
}
