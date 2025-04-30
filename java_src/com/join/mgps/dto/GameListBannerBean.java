package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameListBannerBean {
    private int arcade_battle;
    private List<BannerBean> banner_list;
    private int fc_battle;
    private List<GameInfoBean> game_list;
    private GameMatchBean game_match;
    private int lately_battle;

    /* loaded from: classes4.dex */
    public class GameMatchBean {
        private int join_number;
        private String match_title;
        private String nick_name;

        public GameMatchBean() {
        }

        public int getJoin_number() {
            return this.join_number;
        }

        public String getMatch_title() {
            return this.match_title;
        }

        public String getNick_name() {
            return this.nick_name;
        }

        public void setJoin_number(int i2) {
            this.join_number = i2;
        }

        public void setMatch_title(String str) {
            this.match_title = str;
        }

        public void setNick_name(String str) {
            this.nick_name = str;
        }
    }

    public int getArcade_battle() {
        return this.arcade_battle;
    }

    public List<BannerBean> getBanner_list() {
        return this.banner_list;
    }

    public int getFc_battle() {
        return this.fc_battle;
    }

    public List<GameInfoBean> getGame_list() {
        return this.game_list;
    }

    public GameMatchBean getGame_match() {
        return this.game_match;
    }

    public int getLately_battle() {
        return this.lately_battle;
    }

    public void setArcade_battle(int i2) {
        this.arcade_battle = i2;
    }

    public void setBanner_list(List<BannerBean> list) {
        this.banner_list = list;
    }

    public void setFc_battle(int i2) {
        this.fc_battle = i2;
    }

    public void setGame_list(List<GameInfoBean> list) {
        this.game_list = list;
    }

    public void setGame_match(GameMatchBean gameMatchBean) {
        this.game_match = gameMatchBean;
    }

    public void setLately_battle(int i2) {
        this.lately_battle = i2;
    }
}
