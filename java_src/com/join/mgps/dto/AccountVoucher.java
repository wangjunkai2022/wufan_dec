package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class AccountVoucher implements Serializable {
    private String game_icon;
    private long game_id;
    private String game_name;
    private String game_tpl;
    private int sp_tpl_two_position;
    private AccountVoucherStatus status;

    public AccountVoucher(String str, long j4, String str2, AccountVoucherStatus accountVoucherStatus) {
        this.game_icon = str;
        this.game_id = j4;
        this.game_name = str2;
        this.status = accountVoucherStatus;
    }

    public String getGame_icon() {
        return this.game_icon;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getGame_tpl() {
        return this.game_tpl;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public AccountVoucherStatus getStatus() {
        return this.status;
    }

    public void setGame_icon(String str) {
        this.game_icon = str;
    }

    public void setGame_id(long j4) {
        this.game_id = j4;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_tpl(String str) {
        this.game_tpl = str;
    }

    public void setSp_tpl_two_position(int i2) {
        this.sp_tpl_two_position = i2;
    }

    public void setStatus(AccountVoucherStatus accountVoucherStatus) {
        this.status = accountVoucherStatus;
    }

    public String toString() {
        return "AccountVoucher{game_icon='" + this.game_icon + "', game_id=" + this.game_id + ", game_name='" + this.game_name + "', status=" + this.status + '}';
    }

    public AccountVoucher() {
    }
}
