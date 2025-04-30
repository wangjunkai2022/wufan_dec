package kotlin.collections.builders;

import com.join.mgps.activity.MyAccountLoginActivity_;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListBuilder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\u001a#\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a1\u0010\n\u001a\u00020\t\"\u0004\b\u0000\u0010\u0006*\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a/\u0010\f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\f\u0010\r\u001a;\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a-\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u0004\b\u0000\u0010\u0006*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0013\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0018\u001a\u00020\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u0016\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a/\u0010\u001c\u001a\u00020\u0017\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"E", "", "size", "", "arrayOfUninitializedElements", "(I)[Ljava/lang/Object;", "T", "offset", "length", "", "subarrayContentToString", "([Ljava/lang/Object;II)Ljava/lang/String;", "subarrayContentHashCode", "([Ljava/lang/Object;II)I", "", "other", "", "subarrayContentEquals", "([Ljava/lang/Object;IILjava/util/List;)Z", "newSize", "copyOfUninitializedElements", "([Ljava/lang/Object;I)[Ljava/lang/Object;", "index", "", "resetAt", "([Ljava/lang/Object;I)V", MyAccountLoginActivity_.J, "toIndex", "resetRange", "([Ljava/lang/Object;II)V", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ListBuilderKt {
    @NotNull
    public static final <E> E[] arrayOfUninitializedElements(int i2) {
        if (i2 >= 0) {
            return (E[]) new Object[i2];
        }
        throw new IllegalArgumentException("capacity must be non-negative.".toString());
    }

    @NotNull
    public static final <T> T[] copyOfUninitializedElements(@NotNull T[] copyOfUninitializedElements, int i2) {
        Intrinsics.checkNotNullParameter(copyOfUninitializedElements, "$this$copyOfUninitializedElements");
        T[] tArr = (T[]) Arrays.copyOf(copyOfUninitializedElements, i2);
        Intrinsics.checkNotNullExpressionValue(tArr, "java.util.Arrays.copyOf(this, newSize)");
        Objects.requireNonNull(tArr, "null cannot be cast to non-null type kotlin.Array<T>");
        return tArr;
    }

    public static final <E> void resetAt(@NotNull E[] resetAt, int i2) {
        Intrinsics.checkNotNullParameter(resetAt, "$this$resetAt");
        resetAt[i2] = null;
    }

    public static final <E> void resetRange(@NotNull E[] resetRange, int i2, int i4) {
        Intrinsics.checkNotNullParameter(resetRange, "$this$resetRange");
        while (i2 < i4) {
            resetAt(resetRange, i2);
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> boolean subarrayContentEquals(T[] tArr, int i2, int i4, List<?> list) {
        if (i4 != list.size()) {
            return false;
        }
        for (int i5 = 0; i5 < i4; i5++) {
            if (true ^ Intrinsics.areEqual(tArr[i2 + i5], list.get(i5))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> int subarrayContentHashCode(T[] tArr, int i2, int i4) {
        int i5 = 1;
        for (int i6 = 0; i6 < i4; i6++) {
            T t3 = tArr[i2 + i6];
            i5 = (i5 * 31) + (t3 != null ? t3.hashCode() : 0);
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> String subarrayContentToString(T[] tArr, int i2, int i4) {
        StringBuilder sb = new StringBuilder((i4 * 3) + 2);
        sb.append("[");
        for (int i5 = 0; i5 < i4; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            sb.append(tArr[i2 + i5]);
        }
        sb.append("]");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }
}
