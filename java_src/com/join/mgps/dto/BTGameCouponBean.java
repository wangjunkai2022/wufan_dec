package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class BTGameCouponBean implements Serializable {
    private String coupon_id;
    private String coupon_name;
    private String coupon_type;
    private String discount;
    private String effect_end_time;
    private String effect_start_time;
    private String effect_time_hint;
    private String game_id;
    private boolean receivable;
    private String usable_games;
    private String usable_gamesShow;
    private String use_condition;
    private String use_condition_no_price;
    private String amount = "0";
    private boolean showDetial = false;

    public String getAmount() {
        return this.amount;
    }

    public String getCoupon_id() {
        return this.coupon_id;
    }

    public String getCoupon_name() {
        return this.coupon_name;
    }

    public String getCoupon_type() {
        return this.coupon_type;
    }

    public String getDiscount() {
        return this.discount;
    }

    public String getEffect_end_time() {
        return this.effect_end_time;
    }

    public String getEffect_start_time() {
        return this.effect_start_time;
    }

    public String getEffect_time_hint() {
        return this.effect_time_hint;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getUsable_games() {
        return this.usable_games;
    }

    public String getUsable_gamesShow() {
        return this.usable_gamesShow;
    }

    public String getUse_condition() {
        return this.use_condition;
    }

    public String getUse_condition_no_price() {
        return this.use_condition_no_price;
    }

    public boolean isReceivable() {
        return this.receivable;
    }

    public boolean isShowDetial() {
        return this.showDetial;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setCoupon_id(String str) {
        this.coupon_id = str;
    }

    public void setCoupon_name(String str) {
        this.coupon_name = str;
    }

    public void setCoupon_type(String str) {
        this.coupon_type = str;
    }

    public void setDiscount(String str) {
        this.discount = str;
    }

    public void setEffect_end_time(String str) {
        this.effect_end_time = str;
    }

    public void setEffect_start_time(String str) {
        this.effect_start_time = str;
    }

    public void setEffect_time_hint(String str) {
        this.effect_time_hint = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setReceivable(boolean z3) {
        this.receivable = z3;
    }

    public void setShowDetial(boolean z3) {
        this.showDetial = z3;
    }

    public void setUsable_games(String str) {
        this.usable_games = str;
    }

    public void setUsable_gamesShow(String str) {
        this.usable_gamesShow = str;
    }

    public void setUse_condition(String str) {
        this.use_condition = str;
    }

    public void setUse_condition_no_price(String str) {
        this.use_condition_no_price = str;
    }
}
