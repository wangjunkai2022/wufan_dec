package com.join.mgps.activity.vipzone.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class VipCenterGameListitem {
    private int board_id;
    private List<IconGame> game_list;
    private String subtitle;
    private String title;

    public int getBoard_id() {
        return this.board_id;
    }

    public List<IconGame> getGame_list() {
        return this.game_list;
    }

    public String getSubtitle() {
        return this.subtitle;
    }

    public String getTitle() {
        return this.title;
    }

    public void setBoard_id(int i2) {
        this.board_id = i2;
    }

    public void setGame_list(List<IconGame> list) {
        this.game_list = list;
    }

    public void setSubtitle(String str) {
        this.subtitle = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
