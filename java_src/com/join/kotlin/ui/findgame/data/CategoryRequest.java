package com.join.kotlin.ui.findgame.data;
/* loaded from: classes3.dex */
public class CategoryRequest {
    private int featureType;
    private int gameSortType;
    private int gameType;
    private int limit;
    private int modelType;
    private int page;
    private int playType;
    private int tagId;
    private int themeType;
    private int uid;

    public CategoryRequest(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.gameSortType = 1;
        this.page = 1;
        this.limit = 10;
        this.featureType = i2;
        this.gameSortType = i4;
        this.gameType = i5;
        this.modelType = i6;
        this.page = i7;
        this.playType = i8;
        this.tagId = i9;
        this.themeType = i10;
        this.uid = i11;
    }

    public int getFeatureType() {
        return this.featureType;
    }

    public int getGameSortType() {
        return this.gameSortType;
    }

    public int getGameType() {
        return this.gameType;
    }

    public int getLimit() {
        return this.limit;
    }

    public int getModelType() {
        return this.modelType;
    }

    public int getPage() {
        return this.page;
    }

    public int getPlayType() {
        return this.playType;
    }

    public int getTagId() {
        return this.tagId;
    }

    public int getThemeType() {
        return this.themeType;
    }

    public int getUid() {
        return this.uid;
    }

    public void resetData() {
        this.featureType = 0;
        this.gameSortType = 1;
        this.gameType = 0;
        this.modelType = 0;
        this.page = 1;
        this.playType = 0;
        this.tagId = 0;
        this.themeType = 0;
        this.uid = 0;
        this.limit = 10;
    }

    public void setFeatureType(int i2) {
        this.featureType = i2;
    }

    public void setGameSortType(int i2) {
        this.gameSortType = i2;
    }

    public void setGameType(int i2) {
        this.gameType = i2;
    }

    public void setLimit(int i2) {
        this.limit = i2;
    }

    public void setModelType(int i2) {
        this.modelType = i2;
    }

    public void setPage(int i2) {
        this.page = i2;
    }

    public void setPlayType(int i2) {
        this.playType = i2;
    }

    public void setTagId(int i2) {
        this.tagId = i2;
    }

    public void setThemeType(int i2) {
        this.themeType = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public CategoryRequest() {
        this.gameSortType = 1;
        this.page = 1;
        this.limit = 10;
    }
}
