package com.join.kotlin.ui.findgame.data;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class GameSubTypeData implements Serializable {
    private int id;
    @NotNull
    private String pic;
    private boolean selected;
    @NotNull
    private String title;

    public GameSubTypeData(int i2, @NotNull String str, @NotNull String str2) {
        this.id = 0;
        this.id = i2;
        this.title = str;
        this.pic = this.pic;
    }

    public int getId() {
        return this.id;
    }

    @NotNull
    public String getPic() {
        return this.pic;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPic(@NotNull String str) {
        this.pic = str;
    }

    public void setSelected(boolean z3) {
        this.selected = z3;
    }

    public void setTitle(@NotNull String str) {
        this.title = str;
    }

    public GameSubTypeData() {
        this.id = 0;
    }
}
