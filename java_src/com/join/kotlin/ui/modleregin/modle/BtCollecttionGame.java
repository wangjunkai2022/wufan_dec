package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtCollecttionGame.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J#\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\u0002HÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtCollecttionGame;", "", "", "component1", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "component2", "collectionId", "gameInfoList", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/util/List;", "getGameInfoList", "()Ljava/util/List;", "Ljava/lang/String;", "getCollectionId", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtCollecttionGame {
    @NotNull
    private final String collectionId;
    @NotNull
    private final List<CollectionBeanSub> gameInfoList;

    /* JADX WARN: Multi-variable type inference failed */
    public BtCollecttionGame(@NotNull String collectionId, @NotNull List<? extends CollectionBeanSub> gameInfoList) {
        Intrinsics.checkNotNullParameter(collectionId, "collectionId");
        Intrinsics.checkNotNullParameter(gameInfoList, "gameInfoList");
        this.collectionId = collectionId;
        this.gameInfoList = gameInfoList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BtCollecttionGame copy$default(BtCollecttionGame btCollecttionGame, String str, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = btCollecttionGame.collectionId;
        }
        if ((i2 & 2) != 0) {
            list = btCollecttionGame.gameInfoList;
        }
        return btCollecttionGame.copy(str, list);
    }

    @NotNull
    public final String component1() {
        return this.collectionId;
    }

    @NotNull
    public final List<CollectionBeanSub> component2() {
        return this.gameInfoList;
    }

    @NotNull
    public final BtCollecttionGame copy(@NotNull String collectionId, @NotNull List<? extends CollectionBeanSub> gameInfoList) {
        Intrinsics.checkNotNullParameter(collectionId, "collectionId");
        Intrinsics.checkNotNullParameter(gameInfoList, "gameInfoList");
        return new BtCollecttionGame(collectionId, gameInfoList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BtCollecttionGame) {
                BtCollecttionGame btCollecttionGame = (BtCollecttionGame) obj;
                return Intrinsics.areEqual(this.collectionId, btCollecttionGame.collectionId) && Intrinsics.areEqual(this.gameInfoList, btCollecttionGame.gameInfoList);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final String getCollectionId() {
        return this.collectionId;
    }

    @NotNull
    public final List<CollectionBeanSub> getGameInfoList() {
        return this.gameInfoList;
    }

    public int hashCode() {
        String str = this.collectionId;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        List<CollectionBeanSub> list = this.gameInfoList;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BtCollecttionGame(collectionId=" + this.collectionId + ", gameInfoList=" + this.gameInfoList + ")";
    }
}
