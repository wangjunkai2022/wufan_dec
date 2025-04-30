package com.join.kotlin.ui.modleregin.modle;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BTDynamicMain.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0003J1\u0010\u000b\u001a\u00020\u00002\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\b\u0002\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010\f\u001a\u00020\u0005HÖ\u0001J\t\u0010\u000e\u001a\u00020\rHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0012\u001a\u0004\b\u0015\u0010\u0014R!\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/ui/modleregin/modle/BTDynamicMain;", "", "", "Lcom/join/kotlin/ui/modleregin/modle/BTDynamicModle;", "component1", "", "component2", "component3", "components", "title", "subTitle", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "getSubTitle", "Ljava/util/List;", "getComponents", "()Ljava/util/List;", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BTDynamicMain {
    @Nullable
    private final List<BTDynamicModle> components;
    @Nullable
    private final String subTitle;
    @NotNull
    private final String title;

    public BTDynamicMain(@Nullable List<BTDynamicModle> list, @NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.components = list;
        this.title = title;
        this.subTitle = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BTDynamicMain copy$default(BTDynamicMain bTDynamicMain, List list, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = bTDynamicMain.components;
        }
        if ((i2 & 2) != 0) {
            str = bTDynamicMain.title;
        }
        if ((i2 & 4) != 0) {
            str2 = bTDynamicMain.subTitle;
        }
        return bTDynamicMain.copy(list, str, str2);
    }

    @Nullable
    public final List<BTDynamicModle> component1() {
        return this.components;
    }

    @NotNull
    public final String component2() {
        return this.title;
    }

    @Nullable
    public final String component3() {
        return this.subTitle;
    }

    @NotNull
    public final BTDynamicMain copy(@Nullable List<BTDynamicModle> list, @NotNull String title, @Nullable String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new BTDynamicMain(list, title, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof BTDynamicMain) {
                BTDynamicMain bTDynamicMain = (BTDynamicMain) obj;
                return Intrinsics.areEqual(this.components, bTDynamicMain.components) && Intrinsics.areEqual(this.title, bTDynamicMain.title) && Intrinsics.areEqual(this.subTitle, bTDynamicMain.subTitle);
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final List<BTDynamicModle> getComponents() {
        return this.components;
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
        List<BTDynamicModle> list = this.components;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.title;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.subTitle;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BTDynamicMain(components=" + this.components + ", title=" + this.title + ", subTitle=" + this.subTitle + ")";
    }
}
