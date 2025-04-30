package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class MatchBattleManagementBean {
    private String game_id;
    private String game_name;
    private BannerBean jump_info;
    private String match_title;

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public BannerBean getJump_info() {
        return this.jump_info;
    }

    public String getMatch_title() {
        return this.match_title;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setJump_info(BannerBean bannerBean) {
        this.jump_info = bannerBean;
    }

    public void setMatch_title(String str) {
        this.match_title = str;
    }
}
