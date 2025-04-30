package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GameOLDataBean<E> implements Serializable {
    private List<E> game_list;
    private List<GameOLHeadAdBean> head_ad;

    public List<E> getGame_list() {
        return this.game_list;
    }

    public List<GameOLHeadAdBean> getHead_ad() {
        return this.head_ad;
    }

    public void setGame_list(List<E> list) {
        this.game_list = list;
    }

    public void setHead_ad(List<GameOLHeadAdBean> list) {
        this.head_ad = list;
    }
}
