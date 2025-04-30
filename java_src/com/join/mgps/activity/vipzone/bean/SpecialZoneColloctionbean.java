package com.join.mgps.activity.vipzone.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class SpecialZoneColloctionbean {
    String collection_id;
    List<IconGame> game_list;
    String title;
    String tpl_type;

    public String getCollection_id() {
        return this.collection_id;
    }

    public List<IconGame> getGame_list() {
        return this.game_list;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCollection_id(String str) {
        this.collection_id = str;
    }

    public void setGame_list(List<IconGame> list) {
        this.game_list = list;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }
}
