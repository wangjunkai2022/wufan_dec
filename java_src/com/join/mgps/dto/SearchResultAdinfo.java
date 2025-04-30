package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class SearchResultAdinfo extends RecommendAdInfoData {
    private CollectionBeanSub game_info;
    private String label;
    private int position;
    private String title;

    public CollectionBeanSub getGame_info() {
        return this.game_info;
    }

    public String getLabel() {
        return this.label;
    }

    public int getPosition() {
        return this.position;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_info(CollectionBeanSub collectionBeanSub) {
        this.game_info = collectionBeanSub;
    }

    public void setLabel(String str) {
        this.label = str;
    }

    public void setPosition(int i2) {
        this.position = i2;
    }

    public void setTitle(String str) {
        this.title = str;
    }
}
