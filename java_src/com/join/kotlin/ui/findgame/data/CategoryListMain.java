package com.join.kotlin.ui.findgame.data;

import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class CategoryListMain {
    @NotNull
    private List<CollectionBeanSub> game_list;
    @NotNull
    private TagData tag_list;

    public CategoryListMain(@NotNull List<CollectionBeanSub> list, @NotNull TagData tagData) {
        this.game_list = list;
        this.tag_list = tagData;
    }

    @NotNull
    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    @NotNull
    public TagData getTag_list() {
        return this.tag_list;
    }

    public void setGame_list(@NotNull List<CollectionBeanSub> list) {
        this.game_list = list;
    }

    public void setTag_list(@NotNull TagData tagData) {
        this.tag_list = tagData;
    }

    public CategoryListMain() {
    }
}
