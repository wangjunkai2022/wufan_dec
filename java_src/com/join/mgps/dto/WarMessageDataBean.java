package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class WarMessageDataBean implements Serializable {
    private String msg;

    public WarMessageDataBean() {
    }

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public WarMessageDataBean(String str) {
        this.msg = str;
    }
}
