package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class HotGameFavbean {
    private List<String> game_ico;
    private int id;
    private String nick_name;
    private String title;

    public List<String> getGame_ico() {
        return this.game_ico;
    }

    public int getId() {
        return this.id;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_ico(List<String> list) {
        this.game_ico = list;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
