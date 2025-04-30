package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameFromBooleanBean {
    private DataBean data;
    private int error;

    /* loaded from: classes4.dex */
    public static class DataBean {
        private int code;
        private boolean state;

        public int getCode() {
            return this.code;
        }

        public boolean isState() {
            return this.state;
        }

        public void setCode(int i2) {
            this.code = i2;
        }

        public void setState(boolean z3) {
            this.state = z3;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
