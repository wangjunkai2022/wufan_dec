package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RegisterRequestBean {
    private String reg_id;
    private long times;

    public RegisterRequestBean() {
    }

    public String getReg_id() {
        return this.reg_id;
    }

    public long getTimes() {
        return this.times;
    }

    public void setReg_id(String str) {
        this.reg_id = str;
    }

    public void setTimes(long j4) {
        this.times = j4;
    }

    public RegisterRequestBean(String str, long j4) {
        this.reg_id = str;
        this.times = j4;
    }
}
