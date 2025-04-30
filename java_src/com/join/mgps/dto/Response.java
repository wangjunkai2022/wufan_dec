package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class Response {
    private int error_type;
    private String msg;
    private boolean result;

    public int getError_type() {
        return this.error_type;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isResult() {
        return this.result;
    }

    public void setError_type(int i2) {
        this.error_type = i2;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResult(boolean z3) {
        this.result = z3;
    }
}
