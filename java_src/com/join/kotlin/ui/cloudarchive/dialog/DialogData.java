package com.join.kotlin.ui.cloudarchive.dialog;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DialogData.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J;\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0007HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\r\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u001a\u0010\u0019R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u001b\u0010\u0019R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u001c\u0010\u0019¨\u0006\u001f"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "", "", "component1", "component2", "component3", "component4", "", "component5", "title", "content", "okButn", "cancleButn", "showClose", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "other", "equals", "Z", "getShowClose", "()Z", "Ljava/lang/String;", "getContent", "()Ljava/lang/String;", "getCancleButn", "getOkButn", "getTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class DialogData {
    @NotNull
    private final String cancleButn;
    @NotNull
    private final String content;
    @NotNull
    private final String okButn;
    private final boolean showClose;
    @NotNull
    private final String title;

    public DialogData(@NotNull String title, @NotNull String content, @NotNull String okButn, @NotNull String cancleButn, boolean z3) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(okButn, "okButn");
        Intrinsics.checkNotNullParameter(cancleButn, "cancleButn");
        this.title = title;
        this.content = content;
        this.okButn = okButn;
        this.cancleButn = cancleButn;
        this.showClose = z3;
    }

    public static /* synthetic */ DialogData copy$default(DialogData dialogData, String str, String str2, String str3, String str4, boolean z3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = dialogData.title;
        }
        if ((i2 & 2) != 0) {
            str2 = dialogData.content;
        }
        String str5 = str2;
        if ((i2 & 4) != 0) {
            str3 = dialogData.okButn;
        }
        String str6 = str3;
        if ((i2 & 8) != 0) {
            str4 = dialogData.cancleButn;
        }
        String str7 = str4;
        if ((i2 & 16) != 0) {
            z3 = dialogData.showClose;
        }
        return dialogData.copy(str, str5, str6, str7, z3);
    }

    @NotNull
    public final String component1() {
        return this.title;
    }

    @NotNull
    public final String component2() {
        return this.content;
    }

    @NotNull
    public final String component3() {
        return this.okButn;
    }

    @NotNull
    public final String component4() {
        return this.cancleButn;
    }

    public final boolean component5() {
        return this.showClose;
    }

    @NotNull
    public final DialogData copy(@NotNull String title, @NotNull String content, @NotNull String okButn, @NotNull String cancleButn, boolean z3) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(okButn, "okButn");
        Intrinsics.checkNotNullParameter(cancleButn, "cancleButn");
        return new DialogData(title, content, okButn, cancleButn, z3);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof DialogData) {
                DialogData dialogData = (DialogData) obj;
                return Intrinsics.areEqual(this.title, dialogData.title) && Intrinsics.areEqual(this.content, dialogData.content) && Intrinsics.areEqual(this.okButn, dialogData.okButn) && Intrinsics.areEqual(this.cancleButn, dialogData.cancleButn) && this.showClose == dialogData.showClose;
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final String getCancleButn() {
        return this.cancleButn;
    }

    @NotNull
    public final String getContent() {
        return this.content;
    }

    @NotNull
    public final String getOkButn() {
        return this.okButn;
    }

    public final boolean getShowClose() {
        return this.showClose;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.title;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.content;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.okButn;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.cancleButn;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        boolean z3 = this.showClose;
        int i2 = z3;
        if (z3 != 0) {
            i2 = 1;
        }
        return hashCode4 + i2;
    }

    @NotNull
    public String toString() {
        return "DialogData(title=" + this.title + ", content=" + this.content + ", okButn=" + this.okButn + ", cancleButn=" + this.cancleButn + ", showClose=" + this.showClose + ")";
    }

    public /* synthetic */ DialogData(String str, String str2, String str3, String str4, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? "确定" : str3, (i2 & 8) != 0 ? "取消" : str4, (i2 & 16) != 0 ? false : z3);
    }
}
