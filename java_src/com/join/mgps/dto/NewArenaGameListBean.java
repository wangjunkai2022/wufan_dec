package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class NewArenaGameListBean {
    private List<GameInfoBean> game_list;
    private List<GameTypeBean> game_type;

    public List<GameInfoBean> getGame_list() {
        return this.game_list;
    }

    public List<GameTypeBean> getGame_type() {
        return this.game_type;
    }

    public void setGame_list(List<GameInfoBean> list) {
        this.game_list = list;
    }

    public void setGame_type(List<GameTypeBean> list) {
        this.game_type = list;
    }
}
