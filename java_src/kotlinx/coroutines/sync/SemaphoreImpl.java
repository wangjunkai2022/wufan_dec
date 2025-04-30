package kotlinx.coroutines.sync;

import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.p;
import kotlinx.coroutines.q;
import kotlinx.coroutines.s;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Semaphore.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u001b\u001a\u00020\u0011¢\u0006\u0004\b\u001c\u0010\u001dJ\u0013\u0010\u0003\u001a\u00020\u0002H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u001d\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\f\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\tJ\u000f\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u0013\u0010\u000e\u001a\u00020\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00118V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0015R\"\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00020\u00178\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreImpl;", "Lkotlinx/coroutines/sync/d;", "", g.f56552a, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/p;", "cont", "", "h", "(Lkotlinx/coroutines/p;)Z", "j", "()Z", ai.aA, "b", ai.aD, "release", "()V", "", "a", "()I", "availablePermits", "I", "permits", "Lkotlin/Function1;", "", "Lkotlin/jvm/functions/Function1;", "onCancellationRelease", "acquiredPermits", "<init>", "(II)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SemaphoreImpl implements d {

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72474c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "head");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f72475d = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72476e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f72477f = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx");

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ AtomicIntegerFieldUpdater f72478g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits");
    @NotNull
    volatile /* synthetic */ int _availablePermits;

    /* renamed from: a  reason: collision with root package name */
    private final int f72479a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function1<Throwable, Unit> f72480b;
    @NotNull
    private volatile /* synthetic */ long deqIdx = 0;
    @NotNull
    private volatile /* synthetic */ long enqIdx = 0;
    @NotNull
    private volatile /* synthetic */ Object head;
    @NotNull
    private volatile /* synthetic */ Object tail;

    public SemaphoreImpl(int i2, int i4) {
        this.f72479a = i2;
        boolean z3 = true;
        if (!(i2 > 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Semaphore should have at least 1 permit, but had ", Integer.valueOf(i2)).toString());
        }
        if ((i4 < 0 || i4 > i2) ? false : false) {
            e eVar = new e(0L, null, 2);
            this.head = eVar;
            this.tail = eVar;
            this._availablePermits = i2 - i4;
            this.f72480b = new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.SemaphoreImpl$onCancellationRelease$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Throwable th) {
                    SemaphoreImpl.this.release();
                }
            };
            return;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("The number of acquired permits should be in 0..", Integer.valueOf(i2)).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g(Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q b4 = s.b(intercepted);
        while (true) {
            if (!h(b4)) {
                if (f72478g.getAndDecrement(this) > 0) {
                    b4.y(Unit.INSTANCE, this.f72480b);
                    break;
                }
            } else {
                break;
            }
        }
        Object x3 = b4.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return x3 == coroutine_suspended2 ? x3 : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0074, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(kotlinx.coroutines.p<? super kotlin.Unit> r18) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.h(kotlinx.coroutines.p):boolean");
    }

    private final boolean i(p<? super Unit> pVar) {
        Object L = pVar.L(Unit.INSTANCE, null, this.f72480b);
        if (L == null) {
            return false;
        }
        pVar.V(L);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0070, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean j() {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreImpl.j():boolean");
    }

    @Override // kotlinx.coroutines.sync.d
    public int a() {
        return Math.max(this._availablePermits, 0);
    }

    @Override // kotlinx.coroutines.sync.d
    public boolean b() {
        int i2;
        do {
            i2 = this._availablePermits;
            if (i2 <= 0) {
                return false;
            }
        } while (!f72478g.compareAndSet(this, i2, i2 - 1));
        return true;
    }

    @Override // kotlinx.coroutines.sync.d
    @Nullable
    public Object c(@NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (f72478g.getAndDecrement(this) > 0) {
            return Unit.INSTANCE;
        }
        Object g4 = g(continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.sync.d
    public void release() {
        while (true) {
            int i2 = this._availablePermits;
            int i4 = this.f72479a;
            if (i2 < i4) {
                if (f72478g.compareAndSet(this, i2, i2 + 1) && (i2 >= 0 || j())) {
                    return;
                }
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("The number of released permits cannot be greater than ", Integer.valueOf(i4)).toString());
            }
        }
    }
}
