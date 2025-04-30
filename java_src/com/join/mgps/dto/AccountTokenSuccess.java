package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
/* loaded from: classes.dex */
public class AccountTokenSuccess {
    private String error_code;
    private String error_msg;
    @JsonProperty
    private boolean is_success;
    private AccountBean user_info;

    public AccountTokenSuccess() {
    }

    public String getError_code() {
        return this.error_code;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public AccountBean getUser_info() {
        return this.user_info;
    }

    public boolean is_success() {
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

    public void setUser_info(AccountBean accountBean) {
        this.user_info = accountBean;
    }

    public AccountTokenSuccess(String str, String str2, boolean z3, AccountBean accountBean) {
        this.error_msg = str;
        this.error_code = str2;
        this.is_success = z3;
        this.user_info = accountBean;
    }
}
