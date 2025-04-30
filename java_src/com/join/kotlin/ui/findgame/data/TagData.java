package com.join.kotlin.ui.findgame.data;

import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class TagData {
    private int id;
    @NotNull
    private String title;
    private int type;

    public TagData(int i2, int i4, @NotNull String str) {
        this.id = i2;
        this.type = i4;
        this.title = str;
    }

    public int getId() {
        return this.id;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setTitle(@NotNull String str) {
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public TagData(int i2, @NotNull String str) {
        this.id = i2;
        this.title = str;
    }

    public TagData() {
    }
}
