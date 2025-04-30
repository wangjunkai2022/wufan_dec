package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class Message {
    private String error_msg;
    private boolean is_success;
    private List<MessageInfo> msg_info;

    public String getError_msg() {
        return this.error_msg;
    }

    public List<MessageInfo> getMsg_info() {
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

    public void setMsg_info(List<MessageInfo> list) {
        this.msg_info = list;
    }
}
