package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class ListUserCustomGameTagBean implements Serializable {
    private ArrayList<GameTagsBean> gameTags;
    private ArrayList<GameTagsBean> personalTags;

    public ArrayList<GameTagsBean> getGameTags() {
        return this.gameTags;
    }

    public ArrayList<GameTagsBean> getPersonalTags() {
        return this.personalTags;
    }

    public void setGameTags(ArrayList<GameTagsBean> arrayList) {
        this.gameTags = arrayList;
    }

    public void setPersonalTags(ArrayList<GameTagsBean> arrayList) {
        this.personalTags = arrayList;
    }
}
