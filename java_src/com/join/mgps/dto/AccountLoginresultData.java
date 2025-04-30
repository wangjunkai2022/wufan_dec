package com.join.mgps.dto;

import com.join.mgps.db.tables.UserPurchaseInfo;
import java.util.List;
/* loaded from: classes4.dex */
public class AccountLoginresultData<E> {
    private int error_code;
    private String error_msg;
    private List<UserPurchaseInfo> game_list_permission;
    private boolean is_success;
    private RewardBean reward;
    private AccountBean user_info;

    public int getError_code() {
        return this.error_code;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public List<UserPurchaseInfo> getGame_list_permission() {
        return this.game_list_permission;
    }

    public RewardBean getReward() {
        return this.reward;
    }

    public AccountBean getUser_info() {
        return this.user_info;
    }

    public boolean isIs_success() {
        return this.is_success;
    }

    public boolean is_success() {
        return this.is_success;
    }

    public void setError_code(int i2) {
        this.error_code = i2;
    }

    public void setError_msg(String str) {
        this.error_msg = str;
    }

    public void setGame_list_permission(List<UserPurchaseInfo> list) {
        this.game_list_permission = list;
    }

    public void setIs_success(boolean z3) {
        this.is_success = z3;
    }

    public void setReward(RewardBean rewardBean) {
        this.reward = rewardBean;
    }

    public void setUser_info(AccountBean accountBean) {
        this.user_info = accountBean;
    }
}
