package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class PaiWeiUploadFileBean {
    private int code;
    private DataBean data;
    private String error;

    /* loaded from: classes4.dex */
    public static class DataBean {
        private String code;
        private InfoBean info;
        private String message;

        /* loaded from: classes4.dex */
        public static class InfoBean {
            private String coin;
            private String current_rank;
            private String gameid;
            private String head;
            private String md5;
            private String millisecond;
            private String playid;
            private String recplayer;
            private String refresh;
            private String time;
            private String uid;
            private String version;

            public String getCoin() {
                return this.coin;
            }

            public String getCurrent_rank() {
                return this.current_rank;
            }

            public String getGameid() {
                return this.gameid;
            }

            public String getHead() {
                return this.head;
            }

            public String getMd5() {
                return this.md5;
            }

            public String getMillisecond() {
                return this.millisecond;
            }

            public String getPlayid() {
                return this.playid;
            }

            public String getRecplayer() {
                return this.recplayer;
            }

            public String getRefresh() {
                return this.refresh;
            }

            public String getTime() {
                return this.time;
            }

            public String getUid() {
                return this.uid;
            }

            public String getVersion() {
                return this.version;
            }

            public void setCoin(String str) {
                this.coin = str;
            }

            public void setCurrent_rank(String str) {
                this.current_rank = str;
            }

            public void setGameid(String str) {
                this.gameid = str;
            }

            public void setHead(String str) {
                this.head = str;
            }

            public void setMd5(String str) {
                this.md5 = str;
            }

            public void setMillisecond(String str) {
                this.millisecond = str;
            }

            public void setPlayid(String str) {
                this.playid = str;
            }

            public void setRecplayer(String str) {
                this.recplayer = str;
            }

            public void setRefresh(String str) {
                this.refresh = str;
            }

            public void setTime(String str) {
                this.time = str;
            }

            public void setUid(String str) {
                this.uid = str;
            }

            public void setVersion(String str) {
                this.version = str;
            }
        }

        public String getCode() {
            return this.code;
        }

        public InfoBean getInfo() {
            return this.info;
        }

        public String getMessage() {
            return this.message;
        }

        public void setCode(String str) {
            this.code = str;
        }

        public void setInfo(InfoBean infoBean) {
            this.info = infoBean;
        }

        public void setMessage(String str) {
            this.message = str;
        }
    }

    public int getCode() {
        return this.code;
    }

    public DataBean getData() {
        return this.data;
    }

    public String getError() {
        return this.error;
    }

    public void setCode(int i2) {
        this.code = i2;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setError(String str) {
        this.error = str;
    }
}
