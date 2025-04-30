package com.join.kotlin.ui.findgame.data;

import java.util.List;
/* loaded from: classes3.dex */
public class EverdayNewResultData {
    List<EverdayNewListItem> game_list;
    List<GameSubTypeData> game_type;

    public List<EverdayNewListItem> getGame_list() {
        return this.game_list;
    }

    public List<GameSubTypeData> getGame_type() {
        return this.game_type;
    }

    public void setGame_list(List<EverdayNewListItem> list) {
        this.game_list = list;
    }

    public void setGame_type(List<GameSubTypeData> list) {
        this.game_type = list;
    }
}
