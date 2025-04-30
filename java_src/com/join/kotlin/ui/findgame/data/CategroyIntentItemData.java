package com.join.kotlin.ui.findgame.data;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class CategroyIntentItemData implements Serializable {
    private GameSubTypeData featureType;
    private GameSubTypeData gameType;
    private GameSubTypeData modelType;
    private GameSubTypeData playType;
    private GameSubTypeData themeType;

    public CategroyIntentItemData() {
    }

    public GameSubTypeData getFeatureType() {
        return this.featureType;
    }

    public GameSubTypeData getGameType() {
        return this.gameType;
    }

    public GameSubTypeData getModelType() {
        return this.modelType;
    }

    public GameSubTypeData getPlayType() {
        return this.playType;
    }

    public GameSubTypeData getThemeType() {
        return this.themeType;
    }

    public void setFeatureType(GameSubTypeData gameSubTypeData) {
        this.featureType = gameSubTypeData;
    }

    public void setGameType(GameSubTypeData gameSubTypeData) {
        this.gameType = gameSubTypeData;
    }

    public void setModelType(GameSubTypeData gameSubTypeData) {
        this.modelType = gameSubTypeData;
    }

    public void setPlayType(GameSubTypeData gameSubTypeData) {
        this.playType = gameSubTypeData;
    }

    public void setThemeType(GameSubTypeData gameSubTypeData) {
        this.themeType = gameSubTypeData;
    }

    public CategroyIntentItemData(GameSubTypeData gameSubTypeData, GameSubTypeData gameSubTypeData2, GameSubTypeData gameSubTypeData3, GameSubTypeData gameSubTypeData4, GameSubTypeData gameSubTypeData5) {
        this.gameType = gameSubTypeData;
        this.modelType = gameSubTypeData2;
        this.playType = gameSubTypeData3;
        this.themeType = gameSubTypeData4;
        this.featureType = gameSubTypeData5;
    }
}
