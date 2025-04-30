package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class BattlehallDatabean implements Serializable {
    private List<CollectionBeanSub> game_list;

    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    public void setGame_list(List<CollectionBeanSub> list) {
        this.game_list = list;
    }
}
