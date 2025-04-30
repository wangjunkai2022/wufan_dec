package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GeneralCfgBean implements Serializable {
    private String memberUrl;
    private NormalModeBean normalMode;
    private StrongModeBean strongMode;

    /* loaded from: classes4.dex */
    public static class NormalModeBean implements Serializable {
        private String subTitle;
        private String title;

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setSubTitle(String str) {
            this.subTitle = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class StrongModeBean implements Serializable {
        private String subTitle;
        private String title;

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setSubTitle(String str) {
            this.subTitle = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public String getMemberUrl() {
        return this.memberUrl;
    }

    public NormalModeBean getNormalMode() {
        return this.normalMode;
    }

    public StrongModeBean getStrongMode() {
        return this.strongMode;
    }

    public void setMemberUrl(String str) {
        this.memberUrl = str;
    }

    public void setNormalMode(NormalModeBean normalModeBean) {
        this.normalMode = normalModeBean;
    }

    public void setStrongMode(StrongModeBean strongModeBean) {
        this.strongMode = strongModeBean;
    }
}
