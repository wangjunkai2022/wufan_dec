package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class ArchiveNumDataBean {
    private int code;
    private DataInfoBean data_info;
    private String msg;
    private int succ;

    /* loaded from: classes4.dex */
    public static class DataInfoBean {
        private int archiveCoin;
        private int archiveNum;
        private String bgImg;
        private int hasNoComment;
        private int marketNum;
        private int pid;
        private String title;
        private String vipLink;

        public int getArchiveCoin() {
            return this.archiveCoin;
        }

        public int getArchiveNum() {
            return this.archiveNum;
        }

        public String getBgImg() {
            return this.bgImg;
        }

        public int getHasNoComment() {
            return this.hasNoComment;
        }

        public int getMarketNum() {
            return this.marketNum;
        }

        public int getPid() {
            return this.pid;
        }

        public String getTitle() {
            return this.title;
        }

        public String getVipLink() {
            return this.vipLink;
        }

        public void setArchiveCoin(int i2) {
            this.archiveCoin = i2;
        }

        public void setArchiveNum(int i2) {
            this.archiveNum = i2;
        }

        public void setBgImg(String str) {
            this.bgImg = str;
        }

        public void setHasNoComment(int i2) {
            this.hasNoComment = i2;
        }

        public void setMarketNum(int i2) {
            this.marketNum = i2;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setVipLink(String str) {
            this.vipLink = str;
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
