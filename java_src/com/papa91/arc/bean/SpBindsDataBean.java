package com.papa91.arc.bean;

import java.util.List;
/* loaded from: classes4.dex */
public class SpBindsDataBean {
    private List<SpBindsBean> sp_binds;

    /* loaded from: classes4.dex */
    public static class SpBindsBean {
        private List<Integer> binds;
        private String sp_key;

        public List<Integer> getBinds() {
            return this.binds;
        }

        public String getSp_key() {
            return this.sp_key;
        }

        public void setBinds(List<Integer> list) {
            this.binds = list;
        }

        public void setSp_key(String str) {
            this.sp_key = str;
        }
    }

    public List<SpBindsBean> getSp_binds() {
        return this.sp_binds;
    }

    public void setSp_binds(List<SpBindsBean> list) {
        this.sp_binds = list;
    }
}
