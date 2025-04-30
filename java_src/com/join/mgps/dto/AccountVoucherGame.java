package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountVoucherGame {
    private String expire_date;
    private int id;
    private double money;
    private String name;
    private String no;
    private String notice;
    private String status;

    public AccountVoucherGame() {
    }

    public String getExpire_date() {
        return this.expire_date;
    }

    public int getId() {
        return this.id;
    }

    public double getMoney() {
        return this.money;
    }

    public String getName() {
        return this.name;
    }

    public String getNo() {
        return this.no;
    }

    public String getNotice() {
        return this.notice;
    }

    public String getStatus() {
        return this.status;
    }

    public void setExpire_date(String str) {
        this.expire_date = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setMoney(double d4) {
        this.money = d4;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNo(String str) {
        this.no = str;
    }

    public void setNotice(String str) {
        this.notice = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String toString() {
        return "AccountVoucherGame{id=" + this.id + ", money=" + this.money + ", name='" + this.name + "', expire_date='" + this.expire_date + "', no=" + this.no + ", notice='" + this.notice + "'}";
    }

    public AccountVoucherGame(int i2, double d4, String str, String str2, String str3, String str4) {
        this.id = i2;
        this.money = d4;
        this.name = str;
        this.expire_date = str2;
        this.no = str3;
        this.notice = str4;
    }
}
