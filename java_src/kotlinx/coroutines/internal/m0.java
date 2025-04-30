package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: SystemProps.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u001a,\u0010\b\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u0005H\u0000\u001a,\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\t2\b\b\u0002\u0010\u0006\u001a\u00020\t2\b\b\u0002\u0010\u0007\u001a\u00020\tH\u0000¨\u0006\u000b"}, d2 = {"", "propertyName", "", "defaultValue", ai.aD, "", "minValue", "maxValue", "a", "", "b", "kotlinx-coroutines-core"}, k = 5, mv = {1, 5, 1}, xs = "kotlinx/coroutines/internal/SystemPropsKt")
/* loaded from: classes5.dex */
public final /* synthetic */ class m0 {
    public static final int a(@NotNull String str, int i2, int i4, int i5) {
        return (int) k0.c(str, i2, i4, i5);
    }

    public static final long b(@NotNull String str, long j4, long j5, long j6) {
        Long longOrNull;
        String d4 = k0.d(str);
        if (d4 == null) {
            return j4;
        }
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(d4);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + d4 + '\'').toString());
        }
        long longValue = longOrNull.longValue();
        boolean z3 = false;
        if (j5 <= longValue && longValue <= j6) {
            z3 = true;
        }
        if (z3) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j5 + ".." + j6 + ", but is '" + longValue + '\'').toString());
    }

    public static final boolean c(@NotNull String str, boolean z3) {
        String d4 = k0.d(str);
        return d4 == null ? z3 : Boolean.parseBoolean(d4);
    }

    public static /* synthetic */ int d(String str, int i2, int i4, int i5, int i6, Object obj) {
        if ((i6 & 4) != 0) {
            i4 = 1;
        }
        if ((i6 & 8) != 0) {
            i5 = Integer.MAX_VALUE;
        }
        return k0.b(str, i2, i4, i5);
    }

    public static /* synthetic */ long e(String str, long j4, long j5, long j6, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            j5 = 1;
        }
        long j7 = j5;
        if ((i2 & 8) != 0) {
            j6 = Long.MAX_VALUE;
        }
        return k0.c(str, j4, j7, j6);
    }
}
