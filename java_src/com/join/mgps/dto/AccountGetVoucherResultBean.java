package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class AccountGetVoucherResultBean {
    private long add_time;
    private long begin_time;
    private String coupon_code;
    private int coupon_id;
    private int coupon_money;
    private long expire_time;

    public AccountGetVoucherResultBean() {
    }

    public long getAdd_time() {
        return this.add_time;
    }

    public long getBegin_time() {
        return this.begin_time;
    }

    public String getCoupon_code() {
        return this.coupon_code;
    }

    public int getCoupon_id() {
        return this.coupon_id;
    }

    public int getCoupon_money() {
        return this.coupon_money;
    }

    public long getExpire_time() {
        return this.expire_time;
    }

    public void setAdd_time(long j4) {
        this.add_time = j4;
    }

    public void setBegin_time(long j4) {
        this.begin_time = j4;
    }

    public void setCoupon_code(String str) {
        this.coupon_code = str;
    }

    public void setCoupon_id(int i2) {
        this.coupon_id = i2;
    }

    public void setCoupon_money(int i2) {
        this.coupon_money = i2;
    }

    public void setExpire_time(long j4) {
        this.expire_time = j4;
    }

    public AccountGetVoucherResultBean(String str, int i2, int i4, long j4, long j5, long j6) {
        this.coupon_code = str;
        this.coupon_id = i2;
        this.coupon_money = i4;
        this.begin_time = j4;
        this.expire_time = j5;
        this.add_time = j6;
    }
}
