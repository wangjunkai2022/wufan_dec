package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class NetBattleUserInfoResultBean {
    private GameWorldFightRecoderUserInfoBean user_info;

    public NetBattleUserInfoResultBean() {
    }

    public GameWorldFightRecoderUserInfoBean getUser_info() {
        return this.user_info;
    }

    public void setUser_info(GameWorldFightRecoderUserInfoBean gameWorldFightRecoderUserInfoBean) {
        this.user_info = gameWorldFightRecoderUserInfoBean;
    }

    public NetBattleUserInfoResultBean(GameWorldFightRecoderUserInfoBean gameWorldFightRecoderUserInfoBean, List<GameWorldHeroRankBean> list) {
        this.user_info = gameWorldFightRecoderUserInfoBean;
    }
}
