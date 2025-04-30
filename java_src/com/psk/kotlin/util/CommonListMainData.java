package com.psk.kotlin.util;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CommonListMainData.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0001\u0012\b\b\u0002\u0010\n\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\u001f\u0010 J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0001HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0005HÆ\u0003J1\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\t\u0010\r\u001a\u00020\u0005HÖ\u0001J\t\u0010\u000e\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\t\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u001c¨\u0006!"}, d2 = {"Lcom/psk/kotlin/util/CommonListMainData;", "", "", "component1", "component2", "", "component3", "component4", "type", "any", "reMarks", "id", "copy", "toString", TTDownloadField.TT_HASHCODE, "other", "", "equals", "I", "getType", "()I", "Ljava/lang/Object;", "getAny", "()Ljava/lang/Object;", "Ljava/lang/String;", "getReMarks", "()Ljava/lang/String;", "setReMarks", "(Ljava/lang/String;)V", "getId", "setId", "<init>", "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class CommonListMainData {
    @NotNull
    private final Object any;
    @NotNull
    private String id;
    @NotNull
    private String reMarks;
    private final int type;

    public CommonListMainData(int i2, @NotNull Object any, @NotNull String reMarks, @NotNull String id) {
        Intrinsics.checkNotNullParameter(any, "any");
        Intrinsics.checkNotNullParameter(reMarks, "reMarks");
        Intrinsics.checkNotNullParameter(id, "id");
        this.type = i2;
        this.any = any;
        this.reMarks = reMarks;
        this.id = id;
    }

    public static /* synthetic */ CommonListMainData copy$default(CommonListMainData commonListMainData, int i2, Object obj, String str, String str2, int i4, Object obj2) {
        if ((i4 & 1) != 0) {
            i2 = commonListMainData.type;
        }
        if ((i4 & 2) != 0) {
            obj = commonListMainData.any;
        }
        if ((i4 & 4) != 0) {
            str = commonListMainData.reMarks;
        }
        if ((i4 & 8) != 0) {
            str2 = commonListMainData.id;
        }
        return commonListMainData.copy(i2, obj, str, str2);
    }

    public final int component1() {
        return this.type;
    }

    @NotNull
    public final Object component2() {
        return this.any;
    }

    @NotNull
    public final String component3() {
        return this.reMarks;
    }

    @NotNull
    public final String component4() {
        return this.id;
    }

    @NotNull
    public final CommonListMainData copy(int i2, @NotNull Object any, @NotNull String reMarks, @NotNull String id) {
        Intrinsics.checkNotNullParameter(any, "any");
        Intrinsics.checkNotNullParameter(reMarks, "reMarks");
        Intrinsics.checkNotNullParameter(id, "id");
        return new CommonListMainData(i2, any, reMarks, id);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof CommonListMainData) {
                CommonListMainData commonListMainData = (CommonListMainData) obj;
                return this.type == commonListMainData.type && Intrinsics.areEqual(this.any, commonListMainData.any) && Intrinsics.areEqual(this.reMarks, commonListMainData.reMarks) && Intrinsics.areEqual(this.id, commonListMainData.id);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final Object getAny() {
        return this.any;
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final String getReMarks() {
        return this.reMarks;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int i2 = this.type * 31;
        Object obj = this.any;
        int hashCode = (i2 + (obj != null ? obj.hashCode() : 0)) * 31;
        String str = this.reMarks;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.id;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.id = str;
    }

    public final void setReMarks(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.reMarks = str;
    }

    @NotNull
    public String toString() {
        return "CommonListMainData(type=" + this.type + ", any=" + this.any + ", reMarks=" + this.reMarks + ", id=" + this.id + ")";
    }

    public /* synthetic */ CommonListMainData(int i2, Object obj, String str, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, obj, (i4 & 4) != 0 ? "" : str, (i4 & 8) != 0 ? "" : str2);
    }
}
