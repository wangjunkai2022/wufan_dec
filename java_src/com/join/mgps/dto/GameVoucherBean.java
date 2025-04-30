package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GameVoucherBean implements Serializable {
    private String game_coupon_end_time;
    private String game_coupon_id;
    private boolean game_coupon_is_receive;
    private double game_coupon_money;
    private String game_coupon_receive_source;
    private String game_coupon_start_time;
    private int game_coupon_status;
    private int game_coupon_surplus_number;
    private String game_coupon_title;
    private String game_coupon_unclaimed_source;

    public GameVoucherBean() {
    }

    public String getGame_coupon_end_time() {
        return this.game_coupon_end_time;
    }

    public String getGame_coupon_id() {
        return this.game_coupon_id;
    }

    public double getGame_coupon_money() {
        return this.game_coupon_money;
    }

    public String getGame_coupon_receive_source() {
        return this.game_coupon_receive_source;
    }

    public String getGame_coupon_start_time() {
        return this.game_coupon_start_time;
    }

    public int getGame_coupon_status() {
        return this.game_coupon_status;
    }

    public int getGame_coupon_surplus_number() {
        return this.game_coupon_surplus_number;
    }

    public String getGame_coupon_title() {
        return this.game_coupon_title;
    }

    public String getGame_coupon_unclaimed_source() {
        return this.game_coupon_unclaimed_source;
    }

    public boolean isGame_coupon_is_receive() {
        return this.game_coupon_is_receive;
    }

    public void setGame_coupon_end_time(String str) {
        this.game_coupon_end_time = str;
    }

    public void setGame_coupon_id(String str) {
        this.game_coupon_id = str;
    }

    public void setGame_coupon_is_receive(boolean z3) {
        this.game_coupon_is_receive = z3;
    }

    public void setGame_coupon_money(double d4) {
        this.game_coupon_money = d4;
    }

    public void setGame_coupon_receive_source(String str) {
        this.game_coupon_receive_source = str;
    }

    public void setGame_coupon_start_time(String str) {
        this.game_coupon_start_time = str;
    }

    public void setGame_coupon_status(int i2) {
        this.game_coupon_status = i2;
    }

    public void setGame_coupon_surplus_number(int i2) {
        this.game_coupon_surplus_number = i2;
    }

    public void setGame_coupon_title(String str) {
        this.game_coupon_title = str;
    }

    public void setGame_coupon_unclaimed_source(String str) {
        this.game_coupon_unclaimed_source = str;
    }

    public String toString() {
        return "GameVoucherBean{game_coupon_id='" + this.game_coupon_id + "', game_coupon_title='" + this.game_coupon_title + "', game_coupon_start_time='" + this.game_coupon_start_time + "', game_coupon_end_time='" + this.game_coupon_end_time + "', game_coupon_unclaimed_source='" + this.game_coupon_unclaimed_source + "', game_coupon_receive_source='" + this.game_coupon_receive_source + "', game_coupon_is_receive=" + this.game_coupon_is_receive + ", game_coupon_money=" + this.game_coupon_money + ", game_coupon_surplus_number=" + this.game_coupon_surplus_number + ", game_coupon_status=" + this.game_coupon_status + '}';
    }

    public GameVoucherBean(String str, String str2, String str3, String str4, String str5, String str6, boolean z3, double d4, int i2, int i4) {
        this.game_coupon_id = str;
        this.game_coupon_title = str2;
        this.game_coupon_start_time = str3;
        this.game_coupon_end_time = str4;
        this.game_coupon_unclaimed_source = str5;
        this.game_coupon_receive_source = str6;
        this.game_coupon_is_receive = z3;
        this.game_coupon_money = d4;
        this.game_coupon_surplus_number = i2;
        this.game_coupon_status = i4;
    }
}
