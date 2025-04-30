package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.join.mgps.Util.IntentDateBean;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TitleModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0004\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ>\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u0010\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0011HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0015\u001a\u0004\b\u0016\u0010\tR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019¨\u0006 "}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/TitleModle;", "", "", "component1", "component2", "Lcom/join/mgps/Util/IntentDateBean;", "component3", "", "component4", "()Ljava/lang/Boolean;", "title", "subTitle", "intentDateBean", "showWhiteBack", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)Lcom/join/kotlin/ui/modleregin/modle/TitleModle;", "toString", "", TTDownloadField.TT_HASHCODE, "other", "equals", "Ljava/lang/Boolean;", "getShowWhiteBack", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "Lcom/join/mgps/Util/IntentDateBean;", "getIntentDateBean", "()Lcom/join/mgps/Util/IntentDateBean;", "getSubTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Ljava/lang/Boolean;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class TitleModle {
    @Nullable
    private final IntentDateBean intentDateBean;
    @Nullable
    private final Boolean showWhiteBack;
    @Nullable
    private final String subTitle;
    @NotNull
    private final String title;

    public TitleModle(@NotNull String title, @Nullable String str, @Nullable IntentDateBean intentDateBean, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.subTitle = str;
        this.intentDateBean = intentDateBean;
        this.showWhiteBack = bool;
    }

    public static /* synthetic */ TitleModle copy$default(TitleModle titleModle, String str, String str2, IntentDateBean intentDateBean, Boolean bool, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = titleModle.title;
        }
        if ((i2 & 2) != 0) {
            str2 = titleModle.subTitle;
        }
        if ((i2 & 4) != 0) {
            intentDateBean = titleModle.intentDateBean;
        }
        if ((i2 & 8) != 0) {
            bool = titleModle.showWhiteBack;
        }
        return titleModle.copy(str, str2, intentDateBean, bool);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @Nullable
    public final String component2() {
        return this.subTitle;
    }

    @Nullable
    public final IntentDateBean component3() {
        return this.intentDateBean;
    }

    @Nullable
    public final Boolean component4() {
        return this.showWhiteBack;
    }

    @NotNull
    public final TitleModle copy(@NotNull String title, @Nullable String str, @Nullable IntentDateBean intentDateBean, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new TitleModle(title, str, intentDateBean, bool);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof TitleModle) {
                TitleModle titleModle = (TitleModle) obj;
                return Intrinsics.areEqual(this.title, titleModle.title) && Intrinsics.areEqual(this.subTitle, titleModle.subTitle) && Intrinsics.areEqual(this.intentDateBean, titleModle.intentDateBean) && Intrinsics.areEqual(this.showWhiteBack, titleModle.showWhiteBack);
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final IntentDateBean getIntentDateBean() {
        return this.intentDateBean;
    }

    @Nullable
    public final Boolean getShowWhiteBack() {
        return this.showWhiteBack;
    }

    @Nullable
    public final String getSubTitle() {
        return this.subTitle;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.subTitle;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        IntentDateBean intentDateBean = this.intentDateBean;
        int hashCode3 = (hashCode2 + (intentDateBean != null ? intentDateBean.hashCode() : 0)) * 31;
        Boolean bool = this.showWhiteBack;
        return hashCode3 + (bool != null ? bool.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "TitleModle(title=" + this.title + ", subTitle=" + this.subTitle + ", intentDateBean=" + this.intentDateBean + ", showWhiteBack=" + this.showWhiteBack + ")";
    }

    public /* synthetic */ TitleModle(String str, String str2, IntentDateBean intentDateBean, Boolean bool, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, intentDateBean, (i2 & 8) != 0 ? Boolean.FALSE : bool);
    }
}
