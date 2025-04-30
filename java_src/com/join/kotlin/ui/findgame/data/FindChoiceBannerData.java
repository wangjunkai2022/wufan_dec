package com.join.kotlin.ui.findgame.data;

import com.join.mgps.business.CollectionBeanSubBusiness;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class FindChoiceBannerData {
    @NotNull
    private CollectionBeanSubBusiness game_info;
    @NotNull
    private String pic;

    public FindChoiceBannerData(@NotNull CollectionBeanSubBusiness game_info, @NotNull String pic) {
        Intrinsics.checkNotNullParameter(game_info, "game_info");
        Intrinsics.checkNotNullParameter(pic, "pic");
        this.game_info = game_info;
        this.pic = pic;
    }

    @NotNull
    public CollectionBeanSubBusiness getGame_info() {
        return this.game_info;
    }

    @NotNull
    public String getPic() {
        return this.pic;
    }

    public FindChoiceBannerData() {
    }
}
