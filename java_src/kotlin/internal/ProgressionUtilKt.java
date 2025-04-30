package kotlin.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.PublishedApi;
/* compiled from: progressionUtil.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\u001a\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0002\u001a\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0004H\u0002\u001a \u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0000H\u0002\u001a \u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u001a \u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0001\u001a \u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0001¨\u0006\u000b"}, d2 = {"", "a", "b", "mod", "", ai.aD, "differenceModulo", "start", "end", "step", "getProgressionLastElement", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ProgressionUtilKt {
    private static final int differenceModulo(int i2, int i4, int i5) {
        return mod(mod(i2, i5) - mod(i4, i5), i5);
    }

    @PublishedApi
    public static final int getProgressionLastElement(int i2, int i4, int i5) {
        if (i5 > 0) {
            return i2 >= i4 ? i4 : i4 - differenceModulo(i4, i2, i5);
        } else if (i5 < 0) {
            return i2 <= i4 ? i4 : i4 + differenceModulo(i2, i4, -i5);
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }

    private static final int mod(int i2, int i4) {
        int i5 = i2 % i4;
        return i5 >= 0 ? i5 : i5 + i4;
    }

    private static final long differenceModulo(long j4, long j5, long j6) {
        return mod(mod(j4, j6) - mod(j5, j6), j6);
    }

    private static final long mod(long j4, long j5) {
        long j6 = j4 % j5;
        return j6 >= 0 ? j6 : j6 + j5;
    }

    @PublishedApi
    public static final long getProgressionLastElement(long j4, long j5, long j6) {
        if (j6 > 0) {
            return j4 >= j5 ? j5 : j5 - differenceModulo(j5, j4, j6);
        } else if (j6 < 0) {
            return j4 <= j5 ? j5 : j5 + differenceModulo(j4, j5, -j6);
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }
}
