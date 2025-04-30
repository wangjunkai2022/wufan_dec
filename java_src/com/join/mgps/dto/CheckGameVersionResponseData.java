package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class CheckGameVersionResponseData {
    private List<VersionInfo> gameList;

    /* loaded from: classes4.dex */
    public static class VersionInfo extends AppBean {
        private CommonGameInfoBean ad_info;
        private int game_upgrade_state;
        private String packageName;
        private long resource_size;
        private String resource_url_remote;

        public CommonGameInfoBean getAd_info() {
            return this.ad_info;
        }

        public int getGame_upgrade_state() {
            return this.game_upgrade_state;
        }

        @Override // com.join.mgps.dto.AppBean
        public String getPackageName() {
            return this.packageName;
        }

        public long getResource_size() {
            return this.resource_size;
        }

        public String getResource_url_remote() {
            return this.resource_url_remote;
        }

        public void setAd_info(CommonGameInfoBean commonGameInfoBean) {
            this.ad_info = commonGameInfoBean;
        }

        public void setGame_upgrade_state(int i2) {
            this.game_upgrade_state = i2;
        }

        @Override // com.join.mgps.dto.AppBean
        public void setPackageName(String str) {
            this.packageName = str;
        }

        public void setResource_size(long j4) {
            this.resource_size = j4;
        }

        public void setResource_url_remote(String str) {
            this.resource_url_remote = str;
        }
    }

    public List<VersionInfo> getGameList() {
        return this.gameList;
    }

    public void setGameList(List<VersionInfo> list) {
        this.gameList = list;
    }
}
