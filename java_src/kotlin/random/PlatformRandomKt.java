package kotlin.random;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformRandom.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u001a\f\u0010\u0003\u001a\u00020\u0000*\u00020\u0001H\u0007\u001a\t\u0010\u0004\u001a\u00020\u0000H\u0081\b\u001a\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0000¨\u0006\n"}, d2 = {"Lkotlin/random/Random;", "Ljava/util/Random;", "asJavaRandom", "asKotlinRandom", "defaultPlatformRandom", "", "hi26", "low27", "", "doubleFromParts", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class PlatformRandomKt {
    @SinceKotlin(version = "1.3")
    @NotNull
    public static final java.util.Random asJavaRandom(@NotNull Random asJavaRandom) {
        java.util.Random impl;
        Intrinsics.checkNotNullParameter(asJavaRandom, "$this$asJavaRandom");
        AbstractPlatformRandom abstractPlatformRandom = (AbstractPlatformRandom) (!(asJavaRandom instanceof AbstractPlatformRandom) ? null : asJavaRandom);
        return (abstractPlatformRandom == null || (impl = abstractPlatformRandom.getImpl()) == null) ? new KotlinRandom(asJavaRandom) : impl;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final Random asKotlinRandom(@NotNull java.util.Random asKotlinRandom) {
        Random impl;
        Intrinsics.checkNotNullParameter(asKotlinRandom, "$this$asKotlinRandom");
        KotlinRandom kotlinRandom = (KotlinRandom) (!(asKotlinRandom instanceof KotlinRandom) ? null : asKotlinRandom);
        return (kotlinRandom == null || (impl = kotlinRandom.getImpl()) == null) ? new PlatformRandom(asKotlinRandom) : impl;
    }

    @InlineOnly
    private static final Random defaultPlatformRandom() {
        return PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();
    }

    public static final double doubleFromParts(int i2, int i4) {
        double d4 = (i2 << 27) + i4;
        double d5 = 9007199254740992L;
        Double.isNaN(d4);
        Double.isNaN(d5);
        return d4 / d5;
    }
}
