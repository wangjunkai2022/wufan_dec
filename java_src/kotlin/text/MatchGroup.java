package kotlin.text;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Regex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lkotlin/text/MatchGroup;", "", "", "component1", "Lkotlin/ranges/IntRange;", "component2", "value", "range", "copy", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "<init>", "(Ljava/lang/String;Lkotlin/ranges/IntRange;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class MatchGroup {
    @NotNull
    private final IntRange range;
    @NotNull
    private final String value;

    public MatchGroup(@NotNull String value, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(range, "range");
        this.value = value;
        this.range = range;
    }

    public static /* synthetic */ MatchGroup copy$default(MatchGroup matchGroup, String str, IntRange intRange, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = matchGroup.value;
        }
        if ((i2 & 2) != 0) {
            intRange = matchGroup.range;
        }
        return matchGroup.copy(str, intRange);
    }

    @NotNull
    public final String component1() {
        return this.value;
    }

    @NotNull
    public final IntRange component2() {
        return this.range;
    }

    @NotNull
    public final MatchGroup copy(@NotNull String value, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(range, "range");
        return new MatchGroup(value, range);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof MatchGroup) {
                MatchGroup matchGroup = (MatchGroup) obj;
                return Intrinsics.areEqual(this.value, matchGroup.value) && Intrinsics.areEqual(this.range, matchGroup.range);
            }
            return false;
        }
        return true;
    }

    @NotNull
    public final IntRange getRange() {
        return this.range;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.value;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        IntRange intRange = this.range;
        return hashCode + (intRange != null ? intRange.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "MatchGroup(value=" + this.value + ", range=" + this.range + ")";
    }
}
