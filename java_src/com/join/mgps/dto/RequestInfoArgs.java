package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RequestInfoArgs {
    String info;
    int uid;

    /* loaded from: classes4.dex */
    public static class RequestInfoinfo {
        long time;
        int type;
        String uid;

        public long getTime() {
            return this.time;
        }

        public int getType() {
            return this.type;
        }

        public String getUid() {
            return this.uid;
        }

        public void setTime(long j4) {
            this.time = j4;
        }

        public void setType(int i2) {
            this.type = i2;
        }

        public void setUid(String str) {
            this.uid = str;
        }
    }

    public String getInfo() {
        return this.info;
    }

    public int getUid() {
        return this.uid;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }
}
