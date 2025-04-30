package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BTDynamicModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b'\u0010(J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0011\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\nHÆ\u0003J^\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001d\u001a\u0004\b\u001e\u0010\u0004R\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR!\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010 \u001a\u0004\b!\u0010\"R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b#\u0010\u0004R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010$\u001a\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;", "", "", "component1", "()Ljava/lang/Integer;", "component2", "", "component3", "component4", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "component5", "component6", "modelType", "sort", "collectionId", "collectionTplId", "gameEntityList", "gameEntity", "copy", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/join/mgps/dto/CollectionBeanSub;)Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;", "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/String;", "getCollectionId", "()Ljava/lang/String;", "Ljava/lang/Integer;", "getModelType", "getCollectionTplId", "Ljava/util/List;", "getGameEntityList", "()Ljava/util/List;", "getSort", "Lcom/join/mgps/dto/CollectionBeanSub;", "getGameEntity", "()Lcom/join/mgps/dto/CollectionBeanSub;", "<init>", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/join/mgps/dto/CollectionBeanSub;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BTDynamicModle {
    @Nullable
    private final String collectionId;
    @Nullable
    private final String collectionTplId;
    @Nullable
    private final CollectionBeanSub gameEntity;
    @Nullable
    private final List<CollectionBeanSub> gameEntityList;
    @Nullable
    private final Integer modelType;
    @Nullable
    private final Integer sort;

    /* JADX WARN: Multi-variable type inference failed */
    public BTDynamicModle(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable List<? extends CollectionBeanSub> list, @Nullable CollectionBeanSub collectionBeanSub) {
        this.modelType = num;
        this.sort = num2;
        this.collectionId = str;
        this.collectionTplId = str2;
        this.gameEntityList = list;
        this.gameEntity = collectionBeanSub;
    }

    public static /* synthetic */ BTDynamicModle copy$default(BTDynamicModle bTDynamicModle, Integer num, Integer num2, String str, String str2, List list, CollectionBeanSub collectionBeanSub, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            num = bTDynamicModle.modelType;
        }
        if ((i2 & 2) != 0) {
            num2 = bTDynamicModle.sort;
        }
        Integer num3 = num2;
        if ((i2 & 4) != 0) {
            str = bTDynamicModle.collectionId;
        }
        String str3 = str;
        if ((i2 & 8) != 0) {
            str2 = bTDynamicModle.collectionTplId;
        }
        String str4 = str2;
        List<CollectionBeanSub> list2 = list;
        if ((i2 & 16) != 0) {
            list2 = bTDynamicModle.gameEntityList;
        }
        List list3 = list2;
        if ((i2 & 32) != 0) {
            collectionBeanSub = bTDynamicModle.gameEntity;
        }
        return bTDynamicModle.copy(num, num3, str3, str4, list3, collectionBeanSub);
    }

    @Nullable
    public final Integer component1() {
        return this.modelType;
    }

    @Nullable
    public final Integer component2() {
        return this.sort;
    }

    @Nullable
    public final String component3() {
        return this.collectionId;
    }

    @Nullable
    public final String component4() {
        return this.collectionTplId;
    }

    @Nullable
    public final List<CollectionBeanSub> component5() {
        return this.gameEntityList;
    }

    @Nullable
    public final CollectionBeanSub component6() {
        return this.gameEntity;
    }

    @NotNull
    public final BTDynamicModle copy(@Nullable Integer num, @Nullable Integer num2, @Nullable String str, @Nullable String str2, @Nullable List<? extends CollectionBeanSub> list, @Nullable CollectionBeanSub collectionBeanSub) {
        return new BTDynamicModle(num, num2, str, str2, list, collectionBeanSub);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BTDynamicModle) {
                BTDynamicModle bTDynamicModle = (BTDynamicModle) obj;
                return Intrinsics.areEqual(this.modelType, bTDynamicModle.modelType) && Intrinsics.areEqual(this.sort, bTDynamicModle.sort) && Intrinsics.areEqual(this.collectionId, bTDynamicModle.collectionId) && Intrinsics.areEqual(this.collectionTplId, bTDynamicModle.collectionTplId) && Intrinsics.areEqual(this.gameEntityList, bTDynamicModle.gameEntityList) && Intrinsics.areEqual(this.gameEntity, bTDynamicModle.gameEntity);
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final String getCollectionId() {
        return this.collectionId;
    }

    @Nullable
    public final String getCollectionTplId() {
        return this.collectionTplId;
    }

    @Nullable
    public final CollectionBeanSub getGameEntity() {
        return this.gameEntity;
    }

    @Nullable
    public final List<CollectionBeanSub> getGameEntityList() {
        return this.gameEntityList;
    }

    @Nullable
    public final Integer getModelType() {
        return this.modelType;
    }

    @Nullable
    public final Integer getSort() {
        return this.sort;
    }

    public int hashCode() {
        Integer num = this.modelType;
        int hashCode = (num != null ? num.hashCode() : 0) * 31;
        Integer num2 = this.sort;
        int hashCode2 = (hashCode + (num2 != null ? num2.hashCode() : 0)) * 31;
        String str = this.collectionId;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.collectionTplId;
        int hashCode4 = (hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<CollectionBeanSub> list = this.gameEntityList;
        int hashCode5 = (hashCode4 + (list != null ? list.hashCode() : 0)) * 31;
        CollectionBeanSub collectionBeanSub = this.gameEntity;
        return hashCode5 + (collectionBeanSub != null ? collectionBeanSub.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BTDynamicModle(modelType=" + this.modelType + ", sort=" + this.sort + ", collectionId=" + this.collectionId + ", collectionTplId=" + this.collectionTplId + ", gameEntityList=" + this.gameEntityList + ", gameEntity=" + this.gameEntity + ")";
    }
}
