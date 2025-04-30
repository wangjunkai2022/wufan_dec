package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArchiveDownDataBean {
    private int code;
    private DataInfoBean data_info;
    private boolean isOpenCheck = false;
    private String msg;
    private int succ;

    /* loaded from: classes4.dex */
    public static class DataInfoBean {
        private String archiveFileName = "";
        private String downloadUrl;

        public String getArchiveFileName() {
            return this.archiveFileName;
        }

        public String getDownloadUrl() {
            return this.downloadUrl;
        }

        public void setArchiveFileName(String str) {
            this.archiveFileName = str;
        }

        public void setDownloadUrl(String str) {
            this.downloadUrl = str;
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
