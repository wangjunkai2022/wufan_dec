package kotlin.random;

import com.umeng.analytics.pro.ai;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: XorWowRandom.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0011\b\u0000\u0018\u0000 \u00142\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0014B9\b\u0000\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0010B\u0019\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0004\u0012\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b\u000f\u0010\u0013J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016R\u0016\u0010\b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0016\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0016\u0010\f\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0016\u0010\r\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0016\u0010\u000e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\t¨\u0006\u0015"}, d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "nextInt", "bitCount", "nextBits", ai.aB, "I", "y", "v", "addend", "w", "x", "<init>", "(IIIIII)V", "seed1", "seed2", "(II)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class XorWowRandom extends Random implements Serializable {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @Deprecated
    private static final long serialVersionUID = 0;
    private int addend;

    /* renamed from: v  reason: collision with root package name */
    private int f70695v;

    /* renamed from: w  reason: collision with root package name */
    private int f70696w;

    /* renamed from: x  reason: collision with root package name */
    private int f70697x;

    /* renamed from: y  reason: collision with root package name */
    private int f70698y;

    /* renamed from: z  reason: collision with root package name */
    private int f70699z;

    /* compiled from: XorWowRandom.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/random/XorWowRandom$Companion;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public XorWowRandom(int i2, int i4, int i5, int i6, int i7, int i8) {
        this.f70697x = i2;
        this.f70698y = i4;
        this.f70699z = i5;
        this.f70696w = i6;
        this.f70695v = i7;
        this.addend = i8;
        int i9 = i2 | i4 | i5 | i6 | i7;
        if (!(i9 != 0)) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.".toString());
        }
        for (int i10 = 0; i10 < 64; i10++) {
            nextInt();
        }
    }

    @Override // kotlin.random.Random
    public int nextBits(int i2) {
        return RandomKt.takeUpperBits(nextInt(), i2);
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        int i2 = this.f70697x;
        int i4 = i2 ^ (i2 >>> 2);
        this.f70697x = this.f70698y;
        this.f70698y = this.f70699z;
        this.f70699z = this.f70696w;
        int i5 = this.f70695v;
        this.f70696w = i5;
        int i6 = ((i4 ^ (i4 << 1)) ^ i5) ^ (i5 << 4);
        this.f70695v = i6;
        int i7 = this.addend + 362437;
        this.addend = i7;
        return i6 + i7;
    }

    public XorWowRandom(int i2, int i4) {
        this(i2, i4, 0, 0, i2 ^ (-1), (i2 << 10) ^ (i4 >>> 4));
    }
}
