package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArchiveEvaluteDataBean {
    private int code;
    private DataInfoBean data_info;
    private String msg;
    private int succ;

    /* loaded from: classes4.dex */
    public static class DataInfoBean {
        private String msg;

        public String getMsg() {
            return this.msg;
        }

        public void setMsg(String str) {
            this.msg = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataInfoBean getData_info() {
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

    public void setData_info(DataInfoBean dataInfoBean) {
        this.data_info = dataInfoBean;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setSucc(int i2) {
        this.succ = i2;
    }
}
