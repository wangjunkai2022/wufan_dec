package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.dto.CollectionBeanSub;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtVideodata.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u001f\u0010 J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0005HÆ\u0003J\t\u0010\t\u001a\u00020\bHÆ\u0003J:\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0010\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u001e\u0010\u001a¨\u0006!"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "", "", "component1", "()Ljava/lang/Long;", "", "component2", "component3", "Lcom/join/mgps/dto/CollectionBeanSub;", "component4", "onlineTime", "videoUrl", "imageUrl", "gameEntity", "copy", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;)Lcom/join/kotlin/ui/modleregin/modle/BtVideodata;", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/Long;", "getOnlineTime", "Ljava/lang/String;", "getImageUrl", "()Ljava/lang/String;", "Lcom/join/mgps/dto/CollectionBeanSub;", "getGameEntity", "()Lcom/join/mgps/dto/CollectionBeanSub;", "getVideoUrl", "<init>", "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/CollectionBeanSub;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtVideodata {
    @NotNull
    private final CollectionBeanSub gameEntity;
    @NotNull
    private final String imageUrl;
    @Nullable
    private final Long onlineTime;
    @NotNull
    private final String videoUrl;

    public BtVideodata(@Nullable Long l4, @NotNull String videoUrl, @NotNull String imageUrl, @NotNull CollectionBeanSub gameEntity) {
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(gameEntity, "gameEntity");
        this.onlineTime = l4;
        this.videoUrl = videoUrl;
        this.imageUrl = imageUrl;
        this.gameEntity = gameEntity;
    }

    public static /* synthetic */ BtVideodata copy$default(BtVideodata btVideodata, Long l4, String str, String str2, CollectionBeanSub collectionBeanSub, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            l4 = btVideodata.onlineTime;
        }
        if ((i2 & 2) != 0) {
            str = btVideodata.videoUrl;
        }
        if ((i2 & 4) != 0) {
            str2 = btVideodata.imageUrl;
        }
        if ((i2 & 8) != 0) {
            collectionBeanSub = btVideodata.gameEntity;
        }
        return btVideodata.copy(l4, str, str2, collectionBeanSub);
    }

    @Nullable
    public final Long component1() {
        return this.onlineTime;
    }

    @NotNull
    public final String component2() {
        return this.videoUrl;
    }

    @NotNull
    public final String component3() {
        return this.imageUrl;
    }

    @NotNull
    public final CollectionBeanSub component4() {
        return this.gameEntity;
    }

    @NotNull
    public final BtVideodata copy(@Nullable Long l4, @NotNull String videoUrl, @NotNull String imageUrl, @NotNull CollectionBeanSub gameEntity) {
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(imageUrl, "imageUrl");
        Intrinsics.checkNotNullParameter(gameEntity, "gameEntity");
        return new BtVideodata(l4, videoUrl, imageUrl, gameEntity);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BtVideodata) {
                BtVideodata btVideodata = (BtVideodata) obj;
                return Intrinsics.areEqual(this.onlineTime, btVideodata.onlineTime) && Intrinsics.areEqual(this.videoUrl, btVideodata.videoUrl) && Intrinsics.areEqual(this.imageUrl, btVideodata.imageUrl) && Intrinsics.areEqual(this.gameEntity, btVideodata.gameEntity);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final CollectionBeanSub getGameEntity() {
        return this.gameEntity;
    }

    @NotNull
    public final String getImageUrl() {
        return this.imageUrl;
    }

    @Nullable
    public final Long getOnlineTime() {
        return this.onlineTime;
    }

    @NotNull
    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        Long l4 = this.onlineTime;
        int hashCode = (l4 != null ? l4.hashCode() : 0) * 31;
        String str = this.videoUrl;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.imageUrl;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        CollectionBeanSub collectionBeanSub = this.gameEntity;
        return hashCode3 + (collectionBeanSub != null ? collectionBeanSub.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BtVideodata(onlineTime=" + this.onlineTime + ", videoUrl=" + this.videoUrl + ", imageUrl=" + this.imageUrl + ", gameEntity=" + this.gameEntity + ")";
    }
}
