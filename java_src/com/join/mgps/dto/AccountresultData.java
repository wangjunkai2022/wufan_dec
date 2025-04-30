package com.join.mgps.dto;

import com.join.mgps.db.tables.UserPurchaseInfo;
import java.util.List;
/* loaded from: classes4.dex */
public class AccountresultData<E> {
    private String error_code;
    private String error_msg;
    private List<UserPurchaseInfo> game_list_permission;
    private boolean is_success;
    private E user_info;

    public String getError_code() {
        return this.error_code;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public List<UserPurchaseInfo> getGame_list_permission() {
        return this.game_list_permission;
    }

    public E getUser_info() {
        return this.user_info;
    }

    public boolean isIs_success() {
        return this.is_success;
    }

    public void setError_code(String str) {
        this.error_code = str;
    }

    public void setError_msg(String str) {
        this.error_msg = str;
    }

    public void setIs_success(boolean z3) {
        this.is_success = z3;
    }

    public void setUser_info(E e4) {
        this.user_info = e4;
    }
}
