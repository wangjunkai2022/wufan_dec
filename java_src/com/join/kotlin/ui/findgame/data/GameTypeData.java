package com.join.kotlin.ui.findgame.data;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3.dex */
public class GameTypeData {
    private int id;
    private boolean isSelected;
    @Nullable
    private List<GameSubTypeData> sub_game_type;
    @NotNull
    private String title;
    private int type;

    public GameTypeData(int i2, @NotNull String title, int i4, @Nullable List<GameSubTypeData> list, boolean z3) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.id = i2;
        this.title = title;
        this.type = i4;
        this.sub_game_type = list;
        this.isSelected = z3;
    }

    public int getId() {
        return this.id;
    }

    @Nullable
    public List<GameSubTypeData> getSub_game_type() {
        return this.sub_game_type;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setSelected(boolean z3) {
        this.isSelected = z3;
    }

    public void setSub_game_type(@Nullable List<GameSubTypeData> list) {
        this.sub_game_type = list;
    }

    public void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public GameTypeData() {
    }
}
