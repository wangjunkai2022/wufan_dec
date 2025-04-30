package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class UserHeadPortrait {
    private String error_msg;
    private List<String> head_portrait_pic;
    private boolean is_success;
    private String user_info;

    public UserHeadPortrait() {
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public List<String> getHead_portrait_pic() {
        return this.head_portrait_pic;
    }

    public String getUser_info() {
        return this.user_info;
    }

    public boolean isIs_success() {
        return this.is_success;
    }

    public boolean is_success() {
        return this.is_success;
    }

    public void setError_msg(String str) {
        this.error_msg = str;
    }

    public void setHead_portrait_pic(List<String> list) {
        this.head_portrait_pic = list;
    }

    public void setIs_success(boolean z3) {
        this.is_success = z3;
    }

    public void setUser_info(String str) {
        this.user_info = str;
    }

    public UserHeadPortrait(String str, boolean z3, String str2, List<String> list) {
        this.error_msg = str;
        this.is_success = z3;
        this.user_info = str2;
        this.head_portrait_pic = list;
    }
}
