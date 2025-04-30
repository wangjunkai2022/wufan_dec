package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameDataBean {
    private String error_msg;
    private boolean is_success;
    private int msg_info;

    public GameDataBean() {
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public int getMsg_info() {
        return this.msg_info;
    }

    public boolean isIs_success() {
        return this.is_success;
    }

    public void setError_msg(String str) {
        this.error_msg = str;
    }

    public void setIs_success(boolean z3) {
        this.is_success = z3;
    }

    public void setMsg_info(int i2) {
        this.msg_info = i2;
    }

    public GameDataBean(String str, boolean z3) {
        this.error_msg = str;
        this.is_success = z3;
    }
}
