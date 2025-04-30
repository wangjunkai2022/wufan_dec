package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class RankingInfoBean {
    private NetGameBean net_game;
    private NetGameBean new_game;

    /* loaded from: classes4.dex */
    public static class NetGameBean {
        private Integer count;
        private Integer position;
        private String sub_title;
        private String title;

        public Integer getCount() {
            return this.count;
        }

        public Integer getPosition() {
            return this.position;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public void setCount(Integer num) {
            this.count = num;
        }

        public void setPosition(Integer num) {
            this.position = num;
        }

        public void setSub_title(String str) {
            this.sub_title = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    public NetGameBean getNet_game() {
        return this.net_game;
    }

    public NetGameBean getNew_game() {
        return this.new_game;
    }

    public void setNet_game(NetGameBean netGameBean) {
        this.net_game = netGameBean;
    }

    public void setNew_game(NetGameBean netGameBean) {
        this.new_game = netGameBean;
    }
}
