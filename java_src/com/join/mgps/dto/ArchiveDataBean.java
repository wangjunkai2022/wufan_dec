package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class ArchiveDataBean {
    private int code;
    private DataInfoBean data_info;
    private boolean isOpenCheck = false;
    private String msg;
    private int succ;

    /* loaded from: classes4.dex */
    public static class DataInfoBean {
        private List<CloudListDataBean> cloudList;

        public List<CloudListDataBean> getCloudList() {
            return this.cloudList;
        }

        public void setCloudList(List<CloudListDataBean> list) {
            this.cloudList = list;
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

    public boolean isOpenCheck() {
        return this.isOpenCheck;
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

    public void setOpenCheck(boolean z3) {
        this.isOpenCheck = z3;
    }

    public void setSucc(int i2) {
        this.succ = i2;
    }
}
