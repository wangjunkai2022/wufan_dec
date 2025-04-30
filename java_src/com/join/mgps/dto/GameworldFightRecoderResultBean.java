package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameworldFightRecoderResultBean {
    private List<GameWorldHeroRankBean> hero_rank;
    private GameWorldFightRecoderUserInfoBean user_info;

    public GameworldFightRecoderResultBean() {
    }

    public List<GameWorldHeroRankBean> getHero_rank() {
        return this.hero_rank;
    }

    public GameWorldFightRecoderUserInfoBean getUser_info() {
        return this.user_info;
    }

    public void setHero_rank(List<GameWorldHeroRankBean> list) {
        this.hero_rank = list;
    }

    public void setUser_info(GameWorldFightRecoderUserInfoBean gameWorldFightRecoderUserInfoBean) {
        this.user_info = gameWorldFightRecoderUserInfoBean;
    }

    public GameworldFightRecoderResultBean(GameWorldFightRecoderUserInfoBean gameWorldFightRecoderUserInfoBean, List<GameWorldHeroRankBean> list) {
        this.user_info = gameWorldFightRecoderUserInfoBean;
        this.hero_rank = list;
    }
}
