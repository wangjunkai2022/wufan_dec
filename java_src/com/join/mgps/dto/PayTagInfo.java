package com.join.mgps.dto;

import com.join.mgps.Util.d2;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class PayTagInfo implements Serializable {
    private int amount_check;
    private String game_app_key;
    private int pay_game_amount;

    public int getAmount_check() {
        return this.amount_check;
    }

    public String getGame_app_key() {
        return this.game_app_key;
    }

    public String getPayGameAmount() {
        return d2.l(this.pay_game_amount);
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public void setAmount_check(int i2) {
        this.amount_check = i2;
    }

    public void setGame_app_key(String str) {
        this.game_app_key = str;
    }

    public void setPay_game_amount(int i2) {
        this.pay_game_amount = i2;
    }
}
