package kotlin.collections;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlin/collections/ArraysKt__ArraysJVMKt", "kotlin/collections/ArraysKt__ArraysKt", "kotlin/collections/ArraysKt___ArraysJvmKt", "kotlin/collections/ArraysKt___ArraysKt"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ArraysKt extends ArraysKt___ArraysKt {
    private ArraysKt() {
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ byte[] copyInto(@NotNull byte[] bArr, @NotNull byte[] bArr2, int i2, int i4, int i5) {
        return ArraysKt___ArraysJvmKt.copyInto(bArr, bArr2, i2, i4, i5);
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static /* bridge */ /* synthetic */ <T> T[] copyInto(@NotNull T[] tArr, @NotNull T[] tArr2, int i2, int i4, int i5) {
        return (T[]) ArraysKt___ArraysJvmKt.copyInto(tArr, tArr2, i2, i4, i5);
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "copyOfRange")
    @NotNull
    @PublishedApi
    public static /* bridge */ /* synthetic */ <T> T[] copyOfRange(@NotNull T[] tArr, int i2, int i4) {
        return (T[]) ArraysKt___ArraysJvmKt.copyOfRange(tArr, i2, i4);
    }

    @Nullable
    public static /* bridge */ /* synthetic */ <T> T getOrNull(@NotNull T[] tArr, int i2) {
        return (T) ArraysKt___ArraysKt.getOrNull(tArr, i2);
    }

    @NotNull
    public static /* bridge */ /* synthetic */ <T> T[] plus(@NotNull T[] tArr, T t3) {
        return (T[]) ArraysKt___ArraysJvmKt.plus(tArr, t3);
    }

    @Nullable
    public static /* bridge */ /* synthetic */ <T> T singleOrNull(@NotNull T[] tArr) {
        return (T) ArraysKt___ArraysKt.singleOrNull(tArr);
    }
}
