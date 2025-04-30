package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.dto.BannerBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtReginResultMain.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002HÆ\u0003J\u0011\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002HÆ\u0003JE\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00022\u0010\b\u0002\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0012HÖ\u0001J\u0013\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001d\u0010\u001cR!\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001e\u0010\u001c¨\u0006!"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;", "", "", "Lcom/join/mgps/dto/BannerBean;", "component1", "Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "component2", "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "component3", "Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;", "component4", "ad_collection", "head_banner_game", "new_online_game", "dynamic_component", "copy", "", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "getHead_banner_game", "()Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "Ljava/util/List;", "getAd_collection", "()Ljava/util/List;", "getNew_online_game", "getDynamic_component", "<init>", "(Ljava/util/List;Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;Ljava/util/List;Ljava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtReginResultMain {
    @NotNull
    private final List<BannerBean> ad_collection;
    @Nullable
    private final List<BTDynamicMain> dynamic_component;
    @NotNull
    private final BtVideodata head_banner_game;
    @NotNull
    private final List<BtOnlineGame> new_online_game;

    /* JADX WARN: Multi-variable type inference failed */
    public BtReginResultMain(@NotNull List<? extends BannerBean> ad_collection, @NotNull BtVideodata head_banner_game, @NotNull List<BtOnlineGame> new_online_game, @Nullable List<BTDynamicMain> list) {
        Intrinsics.checkNotNullParameter(ad_collection, "ad_collection");
        Intrinsics.checkNotNullParameter(head_banner_game, "head_banner_game");
        Intrinsics.checkNotNullParameter(new_online_game, "new_online_game");
        this.ad_collection = ad_collection;
        this.head_banner_game = head_banner_game;
        this.new_online_game = new_online_game;
        this.dynamic_component = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BtReginResultMain copy$default(BtReginResultMain btReginResultMain, List list, BtVideodata btVideodata, List list2, List list3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = btReginResultMain.ad_collection;
        }
        if ((i2 & 2) != 0) {
            btVideodata = btReginResultMain.head_banner_game;
        }
        if ((i2 & 4) != 0) {
            list2 = btReginResultMain.new_online_game;
        }
        if ((i2 & 8) != 0) {
            list3 = btReginResultMain.dynamic_component;
        }
        return btReginResultMain.copy(list, btVideodata, list2, list3);
    }

    @NotNull
    public final List<BannerBean> component1() {
        return this.ad_collection;
    }

    @NotNull
    public final BtVideodata component2() {
        return this.head_banner_game;
    }

    @NotNull
    public final List<BtOnlineGame> component3() {
        return this.new_online_game;
    }

    @Nullable
    public final List<BTDynamicMain> component4() {
        return this.dynamic_component;
    }

    @NotNull
    public final BtReginResultMain copy(@NotNull List<? extends BannerBean> ad_collection, @NotNull BtVideodata head_banner_game, @NotNull List<BtOnlineGame> new_online_game, @Nullable List<BTDynamicMain> list) {
        Intrinsics.checkNotNullParameter(ad_collection, "ad_collection");
        Intrinsics.checkNotNullParameter(head_banner_game, "head_banner_game");
        Intrinsics.checkNotNullParameter(new_online_game, "new_online_game");
        return new BtReginResultMain(ad_collection, head_banner_game, new_online_game, list);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BtReginResultMain) {
                BtReginResultMain btReginResultMain = (BtReginResultMain) obj;
                return Intrinsics.areEqual(this.ad_collection, btReginResultMain.ad_collection) && Intrinsics.areEqual(this.head_banner_game, btReginResultMain.head_banner_game) && Intrinsics.areEqual(this.new_online_game, btReginResultMain.new_online_game) && Intrinsics.areEqual(this.dynamic_component, btReginResultMain.dynamic_component);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final List<BannerBean> getAd_collection() {
        return this.ad_collection;
    }

    @Nullable
    public final List<BTDynamicMain> getDynamic_component() {
        return this.dynamic_component;
    }

    @NotNull
    public final BtVideodata getHead_banner_game() {
        return this.head_banner_game;
    }

    @NotNull
    public final List<BtOnlineGame> getNew_online_game() {
        return this.new_online_game;
    }

    public int hashCode() {
        List<BannerBean> list = this.ad_collection;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        BtVideodata btVideodata = this.head_banner_game;
        int hashCode2 = (hashCode + (btVideodata != null ? btVideodata.hashCode() : 0)) * 31;
        List<BtOnlineGame> list2 = this.new_online_game;
        int hashCode3 = (hashCode2 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<BTDynamicMain> list3 = this.dynamic_component;
        return hashCode3 + (list3 != null ? list3.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BtReginResultMain(ad_collection=" + this.ad_collection + ", head_banner_game=" + this.head_banner_game + ", new_online_game=" + this.new_online_game + ", dynamic_component=" + this.dynamic_component + ")";
    }
}
