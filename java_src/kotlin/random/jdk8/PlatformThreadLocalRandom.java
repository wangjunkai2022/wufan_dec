package kotlin.random.jdk8;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.AbstractPlatformRandom;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformThreadLocalRandom.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\bH\u0016R\u0016\u0010\r\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lkotlin/random/jdk8/PlatformThreadLocalRandom;", "Lkotlin/random/AbstractPlatformRandom;", "", "from", "until", "nextInt", "", "nextLong", "", "nextDouble", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "<init>", "()V", "kotlin-stdlib-jdk8"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class PlatformThreadLocalRandom extends AbstractPlatformRandom {
    @Override // kotlin.random.AbstractPlatformRandom
    @NotNull
    public Random getImpl() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        Intrinsics.checkNotNullExpressionValue(current, "ThreadLocalRandom.current()");
        return current;
    }

    @Override // kotlin.random.Random
    public double nextDouble(double d4) {
        return ThreadLocalRandom.current().nextDouble(d4);
    }

    @Override // kotlin.random.Random
    public int nextInt(int i2, int i4) {
        return ThreadLocalRandom.current().nextInt(i2, i4);
    }

    @Override // kotlin.random.Random
    public long nextLong(long j4) {
        return ThreadLocalRandom.current().nextLong(j4);
    }

    @Override // kotlin.random.Random
    public long nextLong(long j4, long j5) {
        return ThreadLocalRandom.current().nextLong(j4, j5);
    }
}
