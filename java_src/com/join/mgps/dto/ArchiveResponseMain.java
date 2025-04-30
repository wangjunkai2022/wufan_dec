package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArchiveResponseMain<T> {
    private int code;
    private T data_info;
    private String msg;
    private int succ;

    public int getCode() {
        return this.code;
    }

    public T getData_info() {
        return this.data_info;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getSucc() {
        return this.succ;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData_info(T t3) {
        this.data_info = t3;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSucc(int i2) {
        this.succ = i2;
    }
}
