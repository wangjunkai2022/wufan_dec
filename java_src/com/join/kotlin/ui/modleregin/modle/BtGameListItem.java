package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.mgps.activity.PapayPayDetialActivity_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BtGameListItem.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0006\u0010\u0014\u001a\u00020\n\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b.\u0010/J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0004HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\t\u001a\u00020\u0004HÆ\u0003J\t\u0010\u000b\u001a\u00020\nHÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0003J_\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\n2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\fHÆ\u0001J\t\u0010\u0017\u001a\u00020\u0004HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010\u0014\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u001f\u001a\u0004\b \u0010!R$\u0010\u0015\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010'\u001a\u0004\b(\u0010)R\u0019\u0010\u0013\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010'\u001a\u0004\b*\u0010)R\u0019\u0010\u0011\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010'\u001a\u0004\b+\u0010)R\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010'\u001a\u0004\b,\u0010)R\u0019\u0010\u000f\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010'\u001a\u0004\b-\u0010)¨\u00060"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BtGameListItem;", "", "", "component1", "", "component2", "component3", "component4", "component5", "component6", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "component7", "Lcom/join/kotlin/domain/common/AppListItemShowBean;", "component8", "position", "icon", "iconGif", "gameName", "tags", PapayPayDetialActivity_.f34856k, "gameInfo", "appitemShow", "copy", "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "I", "getPosition", "()I", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "getGameInfo", "()Lcom/join/mgps/business/CollectionBeanSubBusiness;", "Lcom/join/kotlin/domain/common/AppListItemShowBean;", "getAppitemShow", "()Lcom/join/kotlin/domain/common/AppListItemShowBean;", "setAppitemShow", "(Lcom/join/kotlin/domain/common/AppListItemShowBean;)V", "Ljava/lang/String;", "getTags", "()Ljava/lang/String;", "getInfo", "getGameName", "getIconGif", "getIcon", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/business/CollectionBeanSubBusiness;Lcom/join/kotlin/domain/common/AppListItemShowBean;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtGameListItem {
    @Nullable
    private AppListItemShowBean appitemShow;
    @NotNull
    private final CollectionBeanSubBusiness gameInfo;
    @NotNull
    private final String gameName;
    @NotNull
    private final String icon;
    @Nullable
    private final String iconGif;
    @NotNull
    private final String info;
    private final int position;
    @Nullable
    private final String tags;

    public BtGameListItem(int i2, @NotNull String icon, @Nullable String str, @NotNull String gameName, @Nullable String str2, @NotNull String info, @NotNull CollectionBeanSubBusiness gameInfo, @Nullable AppListItemShowBean appListItemShowBean) {
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameInfo, "gameInfo");
        this.position = i2;
        this.icon = icon;
        this.iconGif = str;
        this.gameName = gameName;
        this.tags = str2;
        this.info = info;
        this.gameInfo = gameInfo;
        this.appitemShow = appListItemShowBean;
    }

    public final int component1() {
        return this.position;
    }

    @NotNull
    public final String component2() {
        return this.icon;
    }

    @Nullable
    public final String component3() {
        return this.iconGif;
    }

    @NotNull
    public final String component4() {
        return this.gameName;
    }

    @Nullable
    public final String component5() {
        return this.tags;
    }

    @NotNull
    public final String component6() {
        return this.info;
    }

    @NotNull
    public final CollectionBeanSubBusiness component7() {
        return this.gameInfo;
    }

    @Nullable
    public final AppListItemShowBean component8() {
        return this.appitemShow;
    }

    @NotNull
    public final BtGameListItem copy(int i2, @NotNull String icon, @Nullable String str, @NotNull String gameName, @Nullable String str2, @NotNull String info, @NotNull CollectionBeanSubBusiness gameInfo, @Nullable AppListItemShowBean appListItemShowBean) {
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(gameName, "gameName");
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(gameInfo, "gameInfo");
        return new BtGameListItem(i2, icon, str, gameName, str2, info, gameInfo, appListItemShowBean);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BtGameListItem) {
                BtGameListItem btGameListItem = (BtGameListItem) obj;
                return this.position == btGameListItem.position && Intrinsics.areEqual(this.icon, btGameListItem.icon) && Intrinsics.areEqual(this.iconGif, btGameListItem.iconGif) && Intrinsics.areEqual(this.gameName, btGameListItem.gameName) && Intrinsics.areEqual(this.tags, btGameListItem.tags) && Intrinsics.areEqual(this.info, btGameListItem.info) && Intrinsics.areEqual(this.gameInfo, btGameListItem.gameInfo) && Intrinsics.areEqual(this.appitemShow, btGameListItem.appitemShow);
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final AppListItemShowBean getAppitemShow() {
        return this.appitemShow;
    }

    @NotNull
    public final CollectionBeanSubBusiness getGameInfo() {
        return this.gameInfo;
    }

    @NotNull
    public final String getGameName() {
        return this.gameName;
    }

    @NotNull
    public final String getIcon() {
        return this.icon;
    }

    @Nullable
    public final String getIconGif() {
        return this.iconGif;
    }

    @NotNull
    public final String getInfo() {
        return this.info;
    }

    public final int getPosition() {
        return this.position;
    }

    @Nullable
    public final String getTags() {
        return this.tags;
    }

    public int hashCode() {
        int i2 = this.position * 31;
        String str = this.icon;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.iconGif;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.gameName;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.tags;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.info;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        CollectionBeanSubBusiness collectionBeanSubBusiness = this.gameInfo;
        int hashCode6 = (hashCode5 + (collectionBeanSubBusiness != null ? collectionBeanSubBusiness.hashCode() : 0)) * 31;
        AppListItemShowBean appListItemShowBean = this.appitemShow;
        return hashCode6 + (appListItemShowBean != null ? appListItemShowBean.hashCode() : 0);
    }

    public final void setAppitemShow(@Nullable AppListItemShowBean appListItemShowBean) {
        this.appitemShow = appListItemShowBean;
    }

    @NotNull
    public String toString() {
        return "BtGameListItem(position=" + this.position + ", icon=" + this.icon + ", iconGif=" + this.iconGif + ", gameName=" + this.gameName + ", tags=" + this.tags + ", info=" + this.info + ", gameInfo=" + this.gameInfo + ", appitemShow=" + this.appitemShow + ")";
    }

    public /* synthetic */ BtGameListItem(int i2, String str, String str2, String str3, String str4, String str5, CollectionBeanSubBusiness collectionBeanSubBusiness, AppListItemShowBean appListItemShowBean, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i4 & 2) != 0 ? "" : str, str2, (i4 & 8) != 0 ? "" : str3, str4, (i4 & 32) != 0 ? "" : str5, collectionBeanSubBusiness, appListItemShowBean);
    }
}
