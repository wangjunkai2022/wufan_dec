package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameMD5ResultInfo {
    private InfoBean info;

    /* loaded from: classes4.dex */
    public static class InfoBean {
        private String state;

        public String getState() {
            return this.state;
        }

        public void setState(String str) {
            this.state = str;
        }
    }

    public InfoBean getInfo() {
        return this.info;
    }

    public void setInfo(InfoBean infoBean) {
        this.info = infoBean;
    }
}
