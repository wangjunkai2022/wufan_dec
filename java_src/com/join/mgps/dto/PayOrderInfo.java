package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PayOrderInfo {
    private String game_app_key;
    private String game_name;
    private String pay_game_amount;
    private int pay_show_type = 0;
    private int pay_type = 0;

    public String getGame_app_key() {
        return this.game_app_key;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getPay_game_amount() {
        return this.pay_game_amount;
    }

    public int getPay_show_type() {
        return this.pay_show_type;
    }

    public int getPay_type() {
        return this.pay_type;
    }

    public void setGame_app_key(String str) {
        this.game_app_key = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setPay_game_amount(String str) {
        this.pay_game_amount = str;
    }

    public void setPay_show_type(int i2) {
        this.pay_show_type = i2;
    }

    public void setPay_type(int i2) {
        this.pay_type = i2;
    }
}
