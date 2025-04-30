package kotlin.random;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformRandom.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u0000 \u000b2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u000bB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlin/random/PlatformRandom;", "Lkotlin/random/AbstractPlatformRandom;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/Random;", "impl", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "<init>", "(Ljava/util/Random;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class PlatformRandom extends AbstractPlatformRandom implements Serializable {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @Deprecated
    private static final long serialVersionUID = 0;
    @NotNull
    private final java.util.Random impl;

    /* compiled from: PlatformRandom.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/random/PlatformRandom$Companion;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public PlatformRandom(@NotNull java.util.Random impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        this.impl = impl;
    }

    @Override // kotlin.random.AbstractPlatformRandom
    @NotNull
    public java.util.Random getImpl() {
        return this.impl;
    }
}
