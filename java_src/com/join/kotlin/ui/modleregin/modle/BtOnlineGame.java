package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtOnlineGame.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003J#\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u00022\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "", "", "component1", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "component2", "onlineTime", "gameEntityList", "copy", "", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/util/List;", "getGameEntityList", "()Ljava/util/List;", "J", "getOnlineTime", "()J", "<init>", "(JLjava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtOnlineGame {
    @NotNull
    private final List<CollectionBeanSub> gameEntityList;
    private final long onlineTime;

    /* JADX WARN: Multi-variable type inference failed */
    public BtOnlineGame(long j4, @NotNull List<? extends CollectionBeanSub> gameEntityList) {
        Intrinsics.checkNotNullParameter(gameEntityList, "gameEntityList");
        this.onlineTime = j4;
        this.gameEntityList = gameEntityList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BtOnlineGame copy$default(BtOnlineGame btOnlineGame, long j4, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = btOnlineGame.onlineTime;
        }
        if ((i2 & 2) != 0) {
            list = btOnlineGame.gameEntityList;
        }
        return btOnlineGame.copy(j4, list);
    }

    public final long component1() {
        return this.onlineTime;
    }

    @NotNull
    public final List<CollectionBeanSub> component2() {
        return this.gameEntityList;
    }

    @NotNull
    public final BtOnlineGame copy(long j4, @NotNull List<? extends CollectionBeanSub> gameEntityList) {
        Intrinsics.checkNotNullParameter(gameEntityList, "gameEntityList");
        return new BtOnlineGame(j4, gameEntityList);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BtOnlineGame) {
                BtOnlineGame btOnlineGame = (BtOnlineGame) obj;
                return this.onlineTime == btOnlineGame.onlineTime && Intrinsics.areEqual(this.gameEntityList, btOnlineGame.gameEntityList);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final List<CollectionBeanSub> getGameEntityList() {
        return this.gameEntityList;
    }

    public final long getOnlineTime() {
        return this.onlineTime;
    }

    public int hashCode() {
        long j4 = this.onlineTime;
        int i2 = ((int) (j4 ^ (j4 >>> 32))) * 31;
        List<CollectionBeanSub> list = this.gameEntityList;
        return i2 + (list != null ? list.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BtOnlineGame(onlineTime=" + this.onlineTime + ", gameEntityList=" + this.gameEntityList + ")";
    }
}
