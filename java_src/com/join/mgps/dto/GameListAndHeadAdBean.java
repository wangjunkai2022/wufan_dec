package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameListAndHeadAdBean extends PaPaBean {
    private List<AppBean> game_list;
    private List<GameHeadAd> head_ad;

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public List<GameHeadAd> getHead_ad() {
        return this.head_ad;
    }

    public void setGame_list(List<AppBean> list) {
        this.game_list = list;
    }

    public void setHead_ad(List<GameHeadAd> list) {
        this.head_ad = list;
    }
}
