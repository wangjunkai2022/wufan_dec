package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharedFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\b\u0016\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006:\u0001FB\u001f\u0012\u0006\u0010J\u001a\u00020\u0015\u0012\u0006\u0010Y\u001a\u00020\u0015\u0012\u0006\u0010D\u001a\u00020C¢\u0006\u0004\be\u0010fJ\u0017\u0010\u0001\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0001\u0010\tJ\u0017\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\tJ\b\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0012\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J9\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00132\u0010\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001b\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J(\u0010#\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\rH\u0002J\b\u0010$\u001a\u00020\u000bH\u0002J\u0012\u0010&\u001a\u0004\u0018\u00010\u00102\u0006\u0010%\u001a\u00020\u0003H\u0002J\u0010\u0010'\u001a\u00020\r2\u0006\u0010%\u001a\u00020\u0003H\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010\u00102\u0006\u0010(\u001a\u00020\rH\u0002J\u001b\u0010*\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0004\b*\u0010+J3\u0010.\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010,0\u00132\u0014\u0010-\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010,0\u0013H\u0002¢\u0006\u0004\b.\u0010/J!\u00102\u001a\u00020\u000b2\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u000000H\u0096@ø\u0001\u0000¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b4\u0010\tJ\u001b\u00105\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b5\u0010\u001bJ\u000f\u00106\u001a\u00020\rH\u0000¢\u0006\u0004\b6\u00107J%\u00109\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010,0\u00132\u0006\u00108\u001a\u00020\rH\u0000¢\u0006\u0004\b9\u0010:J\b\u0010;\u001a\u00020\u0003H\u0014J\u001f\u0010=\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00132\u0006\u0010<\u001a\u00020\u0015H\u0014¢\u0006\u0004\b=\u0010>J\b\u0010?\u001a\u00020\u000bH\u0016J&\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000E2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u00152\u0006\u0010D\u001a\u00020CH\u0016R\u0016\u0010I\u001a\u00020\u00158B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0016\u0010J\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010\fR\u0016\u0010L\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010\u001aR\u0016\u0010N\u001a\u00020\u00158B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bM\u0010HR\u0016\u0010P\u001a\u00020\r8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bO\u00107R\u001c\u0010T\u001a\b\u0012\u0004\u0012\u00028\u00000Q8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bR\u0010SR\u0016\u0010V\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010\fR\u0016\u0010X\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010\fR\u0016\u0010Y\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010\fR\u0016\u0010D\u001a\u00020C8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010]\u001a\u00020\r8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\\\u00107R\u0016\u0010_\u001a\u00020\r8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b^\u00107R \u0010b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006g"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl;", "T", "Lkotlinx/coroutines/flow/internal/a;", "Lkotlinx/coroutines/flow/q;", "Lkotlinx/coroutines/flow/j;", "Lkotlinx/coroutines/flow/a;", "Lkotlinx/coroutines/flow/internal/j;", "value", "", "(Ljava/lang/Object;)Z", "U", "", "I", "", "newHead", "F", "", "item", "K", "", "curBuffer", "", "curSize", "newSize", "S", "([Ljava/lang/Object;II)[Ljava/lang/Object;", "J", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/SharedFlowImpl$a;", "emitter", "D", "newReplayIndex", "newMinCollectorIndex", "newBufferEndIndex", "newQueueEndIndex", "X", "E", "slot", "W", "V", "index", "O", "C", "(Lkotlinx/coroutines/flow/q;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "resumesIn", "L", "([Lkotlin/coroutines/Continuation;)[Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/flow/g;", "collector", "e", "(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "b", "emit", "Z", "()J", "oldIndex", "Y", "(J)[Lkotlin/coroutines/Continuation;", "G", "size", "H", "(I)[Lkotlinx/coroutines/flow/q;", "f", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/f;", "a", "R", "()I", "totalSize", "replay", "j", "minCollectorIndex", "Q", "replaySize", "N", "head", "", ai.aD, "()Ljava/util/List;", "replayCache", "k", "bufferSize", "l", "queueSize", "bufferCapacity", com.sdk.a.g.f56552a, "Lkotlinx/coroutines/channels/BufferOverflow;", "M", "bufferEndIndex", "P", "queueEndIndex", "h", "[Ljava/lang/Object;", "buffer", ai.aA, "replayIndex", "<init>", "(IILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SharedFlowImpl<T> extends kotlinx.coroutines.flow.internal.a<q> implements j<T>, kotlinx.coroutines.flow.a<T>, kotlinx.coroutines.flow.internal.j<T> {

    /* renamed from: e  reason: collision with root package name */
    private final int f71879e;

    /* renamed from: f  reason: collision with root package name */
    private final int f71880f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final BufferOverflow f71881g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Object[] f71882h;

    /* renamed from: i  reason: collision with root package name */
    private long f71883i;

    /* renamed from: j  reason: collision with root package name */
    private long f71884j;

    /* renamed from: k  reason: collision with root package name */
    private int f71885k;

    /* renamed from: l  reason: collision with root package name */
    private int f71886l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SharedFlow.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B3\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\b\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u001a\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"kotlinx/coroutines/flow/SharedFlowImpl$a", "Lkotlinx/coroutines/j1;", "", "dispose", "Lkotlin/coroutines/Continuation;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/coroutines/Continuation;", "cont", "Lkotlinx/coroutines/flow/SharedFlowImpl;", "a", "Lkotlinx/coroutines/flow/SharedFlowImpl;", "flow", "", ai.aD, "Ljava/lang/Object;", "value", "", "b", "J", "index", "<init>", "(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a implements j1 {
        @JvmField
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final SharedFlowImpl<?> f71887a;
        @JvmField

        /* renamed from: b  reason: collision with root package name */
        public long f71888b;
        @JvmField
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Object f71889c;
        @JvmField
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final Continuation<Unit> f71890d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull SharedFlowImpl<?> sharedFlowImpl, long j4, @Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
            this.f71887a = sharedFlowImpl;
            this.f71888b = j4;
            this.f71889c = obj;
            this.f71890d = continuation;
        }

        @Override // kotlinx.coroutines.j1
        public void dispose() {
            this.f71887a.D(this);
        }
    }

    /* compiled from: SharedFlow.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
            iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
            iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SharedFlowImpl(int i2, int i4, @NotNull BufferOverflow bufferOverflow) {
        this.f71879e = i2;
        this.f71880f = i4;
        this.f71881g = bufferOverflow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object C(q qVar, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Unit unit;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.q qVar2 = new kotlinx.coroutines.q(intercepted, 1);
        qVar2.N();
        synchronized (this) {
            if (V(qVar) < 0) {
                qVar.f72097b = qVar2;
                qVar.f72097b = qVar2;
            } else {
                Unit unit2 = Unit.INSTANCE;
                Result.Companion companion = Result.Companion;
                qVar2.resumeWith(Result.m24constructorimpl(unit2));
            }
            unit = Unit.INSTANCE;
        }
        Object x3 = qVar2.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return x3 == coroutine_suspended2 ? x3 : unit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(a aVar) {
        Object f4;
        synchronized (this) {
            if (aVar.f71888b < N()) {
                return;
            }
            Object[] objArr = this.f71882h;
            Intrinsics.checkNotNull(objArr);
            f4 = p.f(objArr, aVar.f71888b);
            if (f4 != aVar) {
                return;
            }
            p.h(objArr, aVar.f71888b, p.f72095a);
            E();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void E() {
        Object f4;
        if (this.f71880f != 0 || this.f71886l > 1) {
            Object[] objArr = this.f71882h;
            Intrinsics.checkNotNull(objArr);
            while (this.f71886l > 0) {
                f4 = p.f(objArr, (N() + R()) - 1);
                if (f4 != p.f72095a) {
                    return;
                }
                this.f71886l--;
                p.h(objArr, N() + R(), null);
            }
        }
    }

    private final void F(long j4) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        if (((kotlinx.coroutines.flow.internal.a) this).f72074b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f72073a) != null) {
            for (kotlinx.coroutines.flow.internal.c cVar : cVarArr) {
                if (cVar != null) {
                    q qVar = (q) cVar;
                    long j5 = qVar.f72096a;
                    if (j5 >= 0 && j5 < j4) {
                        qVar.f72096a = j4;
                    }
                }
            }
        }
        this.f71884j = j4;
    }

    private final void I() {
        Object[] objArr = this.f71882h;
        Intrinsics.checkNotNull(objArr);
        p.h(objArr, N(), null);
        this.f71885k--;
        long N = N() + 1;
        if (this.f71883i < N) {
            this.f71883i = N;
        }
        if (this.f71884j < N) {
            F(N);
        }
        if (v0.b()) {
            if (!(N() == N)) {
                throw new AssertionError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object J(T t3, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Continuation<Unit>[] continuationArr;
        a aVar;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.q qVar = new kotlinx.coroutines.q(intercepted, 1);
        qVar.N();
        Continuation<Unit>[] continuationArr2 = kotlinx.coroutines.flow.internal.b.f72077a;
        synchronized (this) {
            if (T(t3)) {
                Unit unit = Unit.INSTANCE;
                Result.Companion companion = Result.Companion;
                qVar.resumeWith(Result.m24constructorimpl(unit));
                continuationArr = L(continuationArr2);
                aVar = null;
            } else {
                a aVar2 = new a(this, R() + N(), t3, qVar);
                K(aVar2);
                this.f71886l++;
                if (this.f71880f == 0) {
                    continuationArr2 = L(continuationArr2);
                }
                continuationArr = continuationArr2;
                aVar = aVar2;
            }
        }
        if (aVar != null) {
            kotlinx.coroutines.s.a(qVar, aVar);
        }
        int i2 = 0;
        int length = continuationArr.length;
        while (i2 < length) {
            Continuation<Unit> continuation2 = continuationArr[i2];
            i2++;
            if (continuation2 != null) {
                Unit unit2 = Unit.INSTANCE;
                Result.Companion companion2 = Result.Companion;
                continuation2.resumeWith(Result.m24constructorimpl(unit2));
            }
        }
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return x3 == coroutine_suspended2 ? x3 : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(Object obj) {
        int R = R();
        Object[] objArr = this.f71882h;
        if (objArr == null) {
            objArr = S(null, 0, 2);
        } else if (R >= objArr.length) {
            objArr = S(objArr, R, objArr.length * 2);
        }
        p.h(objArr, N() + R, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object[], java.lang.Object] */
    public final Continuation<Unit>[] L(Continuation<Unit>[] continuationArr) {
        kotlinx.coroutines.flow.internal.c[] cVarArr;
        q qVar;
        Continuation<? super Unit> continuation;
        int length = continuationArr.length;
        if (((kotlinx.coroutines.flow.internal.a) this).f72074b != 0 && (cVarArr = ((kotlinx.coroutines.flow.internal.a) this).f72073a) != null) {
            int length2 = cVarArr.length;
            int i2 = 0;
            continuationArr = continuationArr;
            while (i2 < length2) {
                kotlinx.coroutines.flow.internal.c cVar = cVarArr[i2];
                if (cVar != null && (continuation = (qVar = (q) cVar).f72097b) != null && V(qVar) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        ?? copyOf = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                        continuationArr = copyOf;
                    }
                    continuationArr[length] = continuation;
                    qVar.f72097b = null;
                    length++;
                }
                i2++;
                continuationArr = continuationArr;
            }
        }
        return continuationArr;
    }

    private final long M() {
        return N() + this.f71885k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long N() {
        return Math.min(this.f71884j, this.f71883i);
    }

    private final Object O(long j4) {
        Object f4;
        Object[] objArr = this.f71882h;
        Intrinsics.checkNotNull(objArr);
        f4 = p.f(objArr, j4);
        return f4 instanceof a ? ((a) f4).f71889c : f4;
    }

    private final long P() {
        return N() + this.f71885k + this.f71886l;
    }

    private final int Q() {
        return (int) ((N() + this.f71885k) - this.f71883i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int R() {
        return this.f71885k + this.f71886l;
    }

    private final Object[] S(Object[] objArr, int i2, int i4) {
        Object f4;
        int i5 = 0;
        if (i4 > 0) {
            Object[] objArr2 = new Object[i4];
            this.f71882h = objArr2;
            if (objArr == null) {
                return objArr2;
            }
            long N = N();
            if (i2 > 0) {
                while (true) {
                    int i6 = i5 + 1;
                    long j4 = i5 + N;
                    f4 = p.f(objArr, j4);
                    p.h(objArr2, j4, f4);
                    if (i6 >= i2) {
                        break;
                    }
                    i5 = i6;
                }
            }
            return objArr2;
        }
        throw new IllegalStateException("Buffer size overflow".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean T(T t3) {
        if (n() == 0) {
            return U(t3);
        }
        if (this.f71885k >= this.f71880f && this.f71884j <= this.f71883i) {
            int i2 = b.$EnumSwitchMapping$0[this.f71881g.ordinal()];
            if (i2 == 1) {
                return false;
            }
            if (i2 == 2) {
                return true;
            }
        }
        K(t3);
        int i4 = this.f71885k + 1;
        this.f71885k = i4;
        if (i4 > this.f71880f) {
            I();
        }
        if (Q() > this.f71879e) {
            X(this.f71883i + 1, this.f71884j, M(), P());
        }
        return true;
    }

    private final boolean U(T t3) {
        if (v0.b()) {
            if (!(n() == 0)) {
                throw new AssertionError();
            }
        }
        if (this.f71879e == 0) {
            return true;
        }
        K(t3);
        int i2 = this.f71885k + 1;
        this.f71885k = i2;
        if (i2 > this.f71879e) {
            I();
        }
        this.f71884j = N() + this.f71885k;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long V(q qVar) {
        long j4 = qVar.f72096a;
        if (j4 < M()) {
            return j4;
        }
        if (this.f71880f <= 0 && j4 <= N() && this.f71886l != 0) {
            return j4;
        }
        return -1L;
    }

    private final Object W(q qVar) {
        Object obj;
        Continuation<Unit>[] continuationArr = kotlinx.coroutines.flow.internal.b.f72077a;
        synchronized (this) {
            long V = V(qVar);
            if (V < 0) {
                obj = p.f72095a;
            } else {
                long j4 = qVar.f72096a;
                Object O = O(V);
                qVar.f72096a = V + 1;
                continuationArr = Y(j4);
                obj = O;
            }
        }
        int i2 = 0;
        int length = continuationArr.length;
        while (i2 < length) {
            Continuation<Unit> continuation = continuationArr[i2];
            i2++;
            if (continuation != null) {
                Unit unit = Unit.INSTANCE;
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m24constructorimpl(unit));
            }
        }
        return obj;
    }

    private final void X(long j4, long j5, long j6, long j7) {
        long min = Math.min(j5, j4);
        if (v0.b()) {
            if (!(min >= N())) {
                throw new AssertionError();
            }
        }
        long N = N();
        if (N < min) {
            while (true) {
                long j8 = 1 + N;
                Object[] objArr = this.f71882h;
                Intrinsics.checkNotNull(objArr);
                p.h(objArr, N, null);
                if (j8 >= min) {
                    break;
                }
                N = j8;
            }
        }
        this.f71883i = j4;
        this.f71884j = j5;
        this.f71885k = (int) (j6 - min);
        this.f71886l = (int) (j7 - j6);
        if (v0.b()) {
            if (!(this.f71885k >= 0)) {
                throw new AssertionError();
            }
        }
        if (v0.b()) {
            if (!(this.f71886l >= 0)) {
                throw new AssertionError();
            }
        }
        if (v0.b()) {
            if (!(this.f71883i <= N() + ((long) this.f71885k))) {
                throw new AssertionError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @NotNull
    /* renamed from: G */
    public q j() {
        return new q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.flow.internal.a
    @NotNull
    /* renamed from: H */
    public q[] k(int i2) {
        return new q[i2];
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.coroutines.Continuation<kotlin.Unit>[] Y(long r23) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.Y(long):kotlin.coroutines.Continuation[]");
    }

    public final long Z() {
        long j4 = this.f71883i;
        if (j4 < this.f71884j) {
            this.f71884j = j4;
        }
        return j4;
    }

    @Override // kotlinx.coroutines.flow.internal.j
    @NotNull
    public f<T> a(@NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        return p.e(this, coroutineContext, i2, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.j
    public boolean b(T t3) {
        int i2;
        boolean z3;
        Continuation<Unit>[] continuationArr = kotlinx.coroutines.flow.internal.b.f72077a;
        synchronized (this) {
            i2 = 0;
            if (T(t3)) {
                continuationArr = L(continuationArr);
                z3 = true;
            } else {
                z3 = false;
            }
        }
        int length = continuationArr.length;
        while (i2 < length) {
            Continuation<Unit> continuation = continuationArr[i2];
            i2++;
            if (continuation != null) {
                Unit unit = Unit.INSTANCE;
                Result.Companion companion = Result.Companion;
                continuation.resumeWith(Result.m24constructorimpl(unit));
            }
        }
        return z3;
    }

    @Override // kotlinx.coroutines.flow.o
    @NotNull
    public List<T> c() {
        Object f4;
        List<T> emptyList;
        synchronized (this) {
            int Q = Q();
            if (Q == 0) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            ArrayList arrayList = new ArrayList(Q);
            Object[] objArr = this.f71882h;
            Intrinsics.checkNotNull(objArr);
            int i2 = 0;
            if (Q > 0) {
                while (true) {
                    int i4 = i2 + 1;
                    f4 = p.f(objArr, this.f71883i + i2);
                    arrayList.add(f4);
                    if (i4 >= Q) {
                        break;
                    }
                    i2 = i4;
                }
            }
            return arrayList;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bf A[Catch: all -> 0x006f, TRY_LEAVE, TryCatch #1 {all -> 0x006f, blocks: (B:14:0x003b, B:35:0x00a0, B:40:0x00ae, B:39:0x00ab, B:43:0x00bf, B:19:0x0059, B:22:0x006b, B:33:0x0092), top: B:53:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.flow.internal.c] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, kotlinx.coroutines.flow.q] */
    /* JADX WARN: Type inference failed for: r6v1, types: [kotlinx.coroutines.flow.internal.a] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00bc -> B:15:0x003e). Please submit an issue!!! */
    @Override // kotlinx.coroutines.flow.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object e(@org.jetbrains.annotations.NotNull kotlinx.coroutines.flow.g<? super T> r9, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.e(kotlinx.coroutines.flow.g, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.j, kotlinx.coroutines.flow.g
    @Nullable
    public Object emit(T t3, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (b(t3)) {
            return Unit.INSTANCE;
        }
        Object J = J(t3, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return J == coroutine_suspended ? J : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.j
    public void f() {
        synchronized (this) {
            X(M(), this.f71884j, M(), P());
            Unit unit = Unit.INSTANCE;
        }
    }
}
