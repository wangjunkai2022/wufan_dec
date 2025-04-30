package com.join.mgps.activity.vipzone.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class ScreeningConditionBean {
    List<SpecialTag> board_type;
    List<SpecialTag> game_class;
    List<SpecialTag> game_type;
    List<SpecialTag> sort_type;

    public List<SpecialTag> getBoard_type() {
        return this.board_type;
    }

    public List<SpecialTag> getGame_class() {
        return this.game_class;
    }

    public List<SpecialTag> getGame_type() {
        return this.game_type;
    }

    public List<SpecialTag> getSort_type() {
        return this.sort_type;
    }

    public void setBoard_type(List<SpecialTag> list) {
        this.board_type = list;
    }

    public void setGame_class(List<SpecialTag> list) {
        this.game_class = list;
    }

    public void setGame_type(List<SpecialTag> list) {
        this.game_type = list;
    }

    public void setSort_type(List<SpecialTag> list) {
        this.sort_type = list;
    }
}
