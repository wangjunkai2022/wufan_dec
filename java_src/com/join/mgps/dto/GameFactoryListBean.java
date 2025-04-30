package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameFactoryListBean {
    private List<AppBean> game_list;
    private String head_ad_pic;
    private LogoInfo logo_info;

    /* loaded from: classes4.dex */
    public static class LogoInfo {
        private String introduce;
        private String logo_pic;
        private String title;

        public String getIntroduce() {
            return this.introduce;
        }

        public String getLogo_pic() {
            return this.logo_pic;
        }

        public String getTitle() {
            return this.title;
        }

        public void setIntroduce(String str) {
            this.introduce = str;
        }

        public void setLogo_pic(String str) {
            this.logo_pic = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public String getHead_ad_pic() {
        return this.head_ad_pic;
    }

    public LogoInfo getLogo_info() {
        return this.logo_info;
    }

    public void setGame_list(List<AppBean> list) {
        this.game_list = list;
    }

    public void setHead_ad_pic(String str) {
        this.head_ad_pic = str;
    }

    public void setLogo_info(LogoInfo logoInfo) {
        this.logo_info = logoInfo;
    }
}
