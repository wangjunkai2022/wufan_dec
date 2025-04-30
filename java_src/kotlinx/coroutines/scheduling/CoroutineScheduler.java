package kotlinx.coroutines.scheduling;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineScheduler.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0000\u0018\u0000 \u00112\u00020\u00012\u00020\u0002:\u0003\u0006T^B+\u0012\u0006\u0010S\u001a\u00020\f\u0012\u0006\u0010P\u001a\u00020\f\u0012\b\b\u0002\u0010V\u001a\u00020\u000f\u0012\b\b\u0002\u0010X\u001a\u00020B¢\u0006\u0004\b\\\u0010]J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\b\u0018\u00010\bR\u00020\u0000H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\bR\u00020\u0000H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u0013\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\fH\u0082\b¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\fH\u0082\b¢\u0006\u0004\b\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019H\u0082\b¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0005H\u0082\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u001e\u0010\u0018J\u0017\u0010 \u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010!J\u0019\u0010\"\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0005H\u0002¢\u0006\u0004\b$\u0010\u001dJ\u000f\u0010%\u001a\u00020\fH\u0002¢\u0006\u0004\b%\u0010\u0015J+\u0010'\u001a\u0004\u0018\u00010\u0003*\b\u0018\u00010\bR\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010(J\u0015\u0010)\u001a\b\u0018\u00010\bR\u00020\u0000H\u0002¢\u0006\u0004\b)\u0010\nJ)\u0010,\u001a\u00020\u00192\n\u0010\u000b\u001a\u00060\bR\u00020\u00002\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020\f¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\u00052\n\u0010\u000b\u001a\u00060\bR\u00020\u0000¢\u0006\u0004\b.\u0010/J\u0018\u00100\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0086\b¢\u0006\u0004\b0\u0010\u0012J\u001b\u00104\u001a\u00020\u00192\n\u00103\u001a\u000601j\u0002`2H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0019H\u0016¢\u0006\u0004\b6\u0010\u001bJ\u0015\u00108\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u000f¢\u0006\u0004\b8\u00109J-\u0010=\u001a\u00020\u00192\n\u0010:\u001a\u000601j\u0002`22\b\b\u0002\u0010<\u001a\u00020;2\b\b\u0002\u0010&\u001a\u00020\u0005¢\u0006\u0004\b=\u0010>J!\u0010?\u001a\u00020\u00032\n\u0010:\u001a\u000601j\u0002`22\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\u0019¢\u0006\u0004\bA\u0010\u001bJ\u000f\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bC\u0010DJ\u0015\u0010E\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020G8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010HR\"\u0010L\u001a\u000e\u0012\n\u0012\b\u0018\u00010\bR\u00020\u00000J8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b?\u0010KR\u0017\u0010N\u001a\u00020\f8Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bM\u0010\u0015R\u0016\u0010P\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u0010OR\u0016\u0010R\u001a\u00020G8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bQ\u0010HR\u0016\u0010S\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010OR\u0016\u0010V\u001a\u00020\u000f8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010X\u001a\u00020B8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010WR\u0017\u0010Z\u001a\u00020\f8Â\u0002@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bY\u0010\u0015R\u0013\u0010[\u001a\u00020\u00058F@\u0006¢\u0006\u0006\u001a\u0004\b[\u0010\u001d¨\u0006_"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/scheduling/i;", "task", "", "a", "(Lkotlinx/coroutines/scheduling/i;)Z", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;", ai.aE, "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;", "worker", "", ai.aF, "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;)I", "", NoticeTopAnimActivityDialog_.f34402n, "h", "(J)I", com.xinzhu.overmind.utils.helpers.d.f64708a, ai.az, "()I", "m", net.lingala.zip4j.util.e.f73017f0, "()J", "", "k", "()V", "D", "()Z", "x", "skipUnpark", "A", "(Z)V", "E", "(J)Z", "G", "e", "tailDispatch", "C", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;Lkotlinx/coroutines/scheduling/i;Z)Lkotlinx/coroutines/scheduling/i;", ai.aA, "oldIndex", "newIndex", "w", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;II)V", "v", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;)Z", "b", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "command", "execute", "(Ljava/lang/Runnable;)V", "close", "timeout", ai.aB, "(J)V", "block", "Lkotlinx/coroutines/scheduling/j;", "taskContext", "n", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;Z)V", com.sdk.a.g.f56552a, "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/j;)Lkotlinx/coroutines/scheduling/i;", "B", "", "toString", "()Ljava/lang/String;", "y", "(Lkotlinx/coroutines/scheduling/i;)V", "Lkotlinx/coroutines/scheduling/d;", "Lkotlinx/coroutines/scheduling/d;", "globalCpuQueue", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "workers", "q", "createdWorkers", "I", "maxPoolSize", "f", "globalBlockingQueue", "corePoolSize", ai.aD, "J", "idleWorkerKeepAliveNs", "Ljava/lang/String;", "schedulerName", ai.av, "availableCpuPermits", "isTerminated", "<init>", "(IIJLjava/lang/String;)V", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class CoroutineScheduler implements Executor, Closeable {

    /* renamed from: m  reason: collision with root package name */
    private static final int f72334m = -1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f72335n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f72336o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f72337p = 21;

    /* renamed from: q  reason: collision with root package name */
    private static final long f72338q = 2097151;

    /* renamed from: r  reason: collision with root package name */
    private static final long f72339r = 4398044413952L;

    /* renamed from: s  reason: collision with root package name */
    private static final int f72340s = 42;

    /* renamed from: t  reason: collision with root package name */
    private static final long f72341t = 9223367638808264704L;

    /* renamed from: u  reason: collision with root package name */
    public static final int f72342u = 1;

    /* renamed from: v  reason: collision with root package name */
    public static final int f72343v = 2097150;

    /* renamed from: w  reason: collision with root package name */
    private static final long f72344w = 2097151;

    /* renamed from: x  reason: collision with root package name */
    private static final long f72345x = -2097152;

    /* renamed from: y  reason: collision with root package name */
    private static final long f72346y = 2097152;
    @NotNull
    private volatile /* synthetic */ int _isTerminated;
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public final int f72347a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final int f72348b;
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public final long f72349c;
    @NotNull
    volatile /* synthetic */ long controlState;
    @JvmField
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f72350d;
    @JvmField
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final d f72351e;
    @JvmField
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final d f72352f;
    @JvmField
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final AtomicReferenceArray<c> f72353g;
    @NotNull
    private volatile /* synthetic */ long parkedWorkersStack;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f72329h = new a(null);
    @JvmField
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final i0 f72333l = new i0("NOT_IN_STACK");

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f72330i = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");

    /* renamed from: j  reason: collision with root package name */
    static final /* synthetic */ AtomicLongFieldUpdater f72331j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f72332k = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "<init>", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0016\u0010\f\u001a\u00020\u00058\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0016\u0010\r\u001a\u00020\u00058\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0016\u0010\u000f\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0011\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0007R\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0016\u0010\u0014\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0016\u0010\u0015\u001a\u00020\u00058\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0007¨\u0006\u0018"}, d2 = {"kotlinx/coroutines/scheduling/CoroutineScheduler$a", "", "", "BLOCKING_MASK", "J", "", "BLOCKING_SHIFT", "I", "CLAIMED", "CPU_PERMITS_MASK", "CPU_PERMITS_SHIFT", "CREATED_MASK", "MAX_SUPPORTED_POOL_SIZE", "MIN_SUPPORTED_POOL_SIZE", "Lkotlinx/coroutines/internal/i0;", "NOT_IN_STACK", "Lkotlinx/coroutines/internal/i0;", "PARKED", "PARKED_INDEX_MASK", "PARKED_VERSION_INC", "PARKED_VERSION_MASK", "TERMINATED", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            iArr[WorkerState.PARKING.ordinal()] = 1;
            iArr[WorkerState.BLOCKING.ordinal()] = 2;
            iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            iArr[WorkerState.DORMANT.ordinal()] = 4;
            iArr[WorkerState.TERMINATED.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CoroutineScheduler(int i2, int i4, long j4, @NotNull String str) {
        this.f72347a = i2;
        this.f72348b = i4;
        this.f72349c = j4;
        this.f72350d = str;
        if (!(i2 >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i2 + " should be at least 1").toString());
        }
        if (!(i4 >= i2)) {
            throw new IllegalArgumentException(("Max pool size " + i4 + " should be greater than or equals to core pool size " + i2).toString());
        }
        if (!(i4 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i4 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j4 > 0) {
            this.f72351e = new d();
            this.f72352f = new d();
            this.parkedWorkersStack = 0L;
            this.f72353g = new AtomicReferenceArray<>(i4 + 1);
            this.controlState = i2 << 42;
            this._isTerminated = 0;
            return;
        }
        throw new IllegalArgumentException(("Idle worker keep alive time " + j4 + " must be positive").toString());
    }

    private final void A(boolean z3) {
        long addAndGet = f72331j.addAndGet(this, 2097152L);
        if (z3 || G() || E(addAndGet)) {
            return;
        }
        G();
    }

    private final i C(c cVar, i iVar, boolean z3) {
        if (cVar == null || cVar.f72356b == WorkerState.TERMINATED) {
            return iVar;
        }
        if (iVar.f72379b.r() == 0 && cVar.f72356b == WorkerState.BLOCKING) {
            return iVar;
        }
        cVar.f72360f = true;
        return cVar.f72355a.a(iVar, z3);
    }

    private final boolean D() {
        long j4;
        do {
            j4 = this.controlState;
            if (((int) ((f72341t & j4) >> 42)) == 0) {
                return false;
            }
        } while (!f72331j.compareAndSet(this, j4, j4 - 4398046511104L));
        return true;
    }

    private final boolean E(long j4) {
        int coerceAtLeast;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(((int) (2097151 & j4)) - ((int) ((j4 & f72339r) >> 21)), 0);
        if (coerceAtLeast < this.f72347a) {
            int e4 = e();
            if (e4 == 1 && this.f72347a > 1) {
                e();
            }
            if (e4 > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean F(CoroutineScheduler coroutineScheduler, long j4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j4 = coroutineScheduler.controlState;
        }
        return coroutineScheduler.E(j4);
    }

    private final boolean G() {
        c u3;
        do {
            u3 = u();
            if (u3 == null) {
                return false;
            }
        } while (!c.f72354h.compareAndSet(u3, -1, 0));
        LockSupport.unpark(u3);
        return true;
    }

    private final boolean a(i iVar) {
        if (iVar.f72379b.r() == 1) {
            return this.f72352f.a(iVar);
        }
        return this.f72351e.a(iVar);
    }

    private final int d(long j4) {
        return (int) ((j4 & f72339r) >> 21);
    }

    private final int e() {
        int coerceAtLeast;
        synchronized (this.f72353g) {
            if (isTerminated()) {
                return -1;
            }
            long j4 = this.controlState;
            int i2 = (int) (j4 & 2097151);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i2 - ((int) ((j4 & f72339r) >> 21)), 0);
            if (coerceAtLeast >= this.f72347a) {
                return 0;
            }
            if (i2 >= this.f72348b) {
                return 0;
            }
            int i4 = ((int) (this.controlState & 2097151)) + 1;
            if (i4 > 0 && this.f72353g.get(i4) == null) {
                c cVar = new c(i4);
                this.f72353g.set(i4, cVar);
                if (i4 == ((int) (2097151 & f72331j.incrementAndGet(this)))) {
                    cVar.start();
                    return coerceAtLeast + 1;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private final int h(long j4) {
        return (int) (j4 & 2097151);
    }

    private final c i() {
        Thread currentThread = Thread.currentThread();
        c cVar = currentThread instanceof c ? (c) currentThread : null;
        if (cVar != null && Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return cVar;
        }
        return null;
    }

    private final void k() {
        f72331j.addAndGet(this, f72345x);
    }

    private final int m() {
        return (int) (f72331j.getAndDecrement(this) & 2097151);
    }

    public static /* synthetic */ void o(CoroutineScheduler coroutineScheduler, Runnable runnable, j jVar, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            jVar = g.f72376a;
        }
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        coroutineScheduler.n(runnable, jVar, z3);
    }

    private final int p() {
        return (int) ((this.controlState & f72341t) >> 42);
    }

    private final int q() {
        return (int) (this.controlState & 2097151);
    }

    private final long r() {
        return f72331j.addAndGet(this, 2097152L);
    }

    private final int s() {
        return (int) (f72331j.incrementAndGet(this) & 2097151);
    }

    private final int t(c cVar) {
        Object g4 = cVar.g();
        while (g4 != f72333l) {
            if (g4 == null) {
                return 0;
            }
            c cVar2 = (c) g4;
            int f4 = cVar2.f();
            if (f4 != 0) {
                return f4;
            }
            g4 = cVar2.g();
        }
        return -1;
    }

    private final c u() {
        while (true) {
            long j4 = this.parkedWorkersStack;
            c cVar = this.f72353g.get((int) (2097151 & j4));
            if (cVar == null) {
                return null;
            }
            long j5 = (2097152 + j4) & f72345x;
            int t3 = t(cVar);
            if (t3 >= 0 && f72330i.compareAndSet(this, j4, t3 | j5)) {
                cVar.p(f72333l);
                return cVar;
            }
        }
    }

    private final long x() {
        return f72331j.addAndGet(this, 4398046511104L);
    }

    public final void B() {
        if (G() || F(this, 0L, 1, null)) {
            return;
        }
        G();
    }

    public final int b(long j4) {
        return (int) ((j4 & f72341t) >> 42);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        z(com.join.mgps.data.c.f47286a);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        o(this, runnable, null, false, 6, null);
    }

    @NotNull
    public final i g(@NotNull Runnable runnable, @NotNull j jVar) {
        long a4 = l.f72388h.a();
        if (runnable instanceof i) {
            i iVar = (i) runnable;
            iVar.f72378a = a4;
            iVar.f72379b = jVar;
            return iVar;
        }
        return new k(runnable, a4, jVar);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final void n(@NotNull Runnable runnable, @NotNull j jVar, boolean z3) {
        kotlinx.coroutines.b b4 = kotlinx.coroutines.c.b();
        if (b4 != null) {
            b4.e();
        }
        i g4 = g(runnable, jVar);
        c i2 = i();
        i C = C(i2, g4, z3);
        if (C != null && !a(C)) {
            throw new RejectedExecutionException(Intrinsics.stringPlus(this.f72350d, " was terminated"));
        }
        boolean z4 = z3 && i2 != null;
        if (g4.f72379b.r() != 0) {
            A(z4);
        } else if (z4) {
        } else {
            B();
        }
    }

    @NotNull
    public String toString() {
        int i2;
        int i4;
        int i5;
        int i6;
        ArrayList arrayList = new ArrayList();
        int length = this.f72353g.length();
        int i7 = 0;
        if (1 < length) {
            i4 = 0;
            int i8 = 0;
            i5 = 0;
            i6 = 0;
            int i9 = 1;
            while (true) {
                int i10 = i9 + 1;
                c cVar = this.f72353g.get(i9);
                if (cVar != null) {
                    int f4 = cVar.f72355a.f();
                    int i11 = b.$EnumSwitchMapping$0[cVar.f72356b.ordinal()];
                    if (i11 == 1) {
                        i7++;
                    } else if (i11 == 2) {
                        i4++;
                        StringBuilder sb = new StringBuilder();
                        sb.append(f4);
                        sb.append('b');
                        arrayList.add(sb.toString());
                    } else if (i11 == 3) {
                        i8++;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(f4);
                        sb2.append('c');
                        arrayList.add(sb2.toString());
                    } else if (i11 == 4) {
                        i5++;
                        if (f4 > 0) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(f4);
                            sb3.append('d');
                            arrayList.add(sb3.toString());
                        }
                    } else if (i11 == 5) {
                        i6++;
                    }
                }
                if (i10 >= length) {
                    break;
                }
                i9 = i10;
            }
            i2 = i7;
            i7 = i8;
        } else {
            i2 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
        }
        long j4 = this.controlState;
        return this.f72350d + '@' + w0.b(this) + "[Pool Size {core = " + this.f72347a + ", max = " + this.f72348b + "}, Worker States {CPU = " + i7 + ", blocking = " + i4 + ", parked = " + i2 + ", dormant = " + i5 + ", terminated = " + i6 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f72351e.c() + ", global blocking queue size = " + this.f72352f.c() + ", Control State {created workers= " + ((int) (2097151 & j4)) + ", blocking tasks = " + ((int) ((f72339r & j4) >> 21)) + ", CPUs acquired = " + (this.f72347a - ((int) ((f72341t & j4) >> 42))) + "}]";
    }

    public final boolean v(@NotNull c cVar) {
        long j4;
        long j5;
        int f4;
        if (cVar.g() != f72333l) {
            return false;
        }
        do {
            j4 = this.parkedWorkersStack;
            int i2 = (int) (2097151 & j4);
            j5 = (2097152 + j4) & f72345x;
            f4 = cVar.f();
            if (v0.b()) {
                if (!(f4 != 0)) {
                    throw new AssertionError();
                }
            }
            cVar.p(this.f72353g.get(i2));
        } while (!f72330i.compareAndSet(this, j4, f4 | j5));
        return true;
    }

    public final void w(@NotNull c cVar, int i2, int i4) {
        while (true) {
            long j4 = this.parkedWorkersStack;
            int i5 = (int) (2097151 & j4);
            long j5 = (2097152 + j4) & f72345x;
            if (i5 == i2) {
                i5 = i4 == 0 ? t(cVar) : i4;
            }
            if (i5 >= 0 && f72330i.compareAndSet(this, j4, j5 | i5)) {
                return;
            }
        }
    }

    public final void y(@NotNull i iVar) {
        try {
            iVar.run();
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                kotlinx.coroutines.b b4 = kotlinx.coroutines.c.b();
                if (b4 == null) {
                }
            } finally {
                kotlinx.coroutines.b b5 = kotlinx.coroutines.c.b();
                if (b5 != null) {
                    b5.f();
                }
            }
        }
    }

    public final void z(long j4) {
        int i2;
        if (f72332k.compareAndSet(this, 0, 1)) {
            c i4 = i();
            synchronized (this.f72353g) {
                i2 = (int) (this.controlState & 2097151);
            }
            if (1 <= i2) {
                int i5 = 1;
                while (true) {
                    int i6 = i5 + 1;
                    c cVar = this.f72353g.get(i5);
                    Intrinsics.checkNotNull(cVar);
                    c cVar2 = cVar;
                    if (cVar2 != i4) {
                        while (cVar2.isAlive()) {
                            LockSupport.unpark(cVar2);
                            cVar2.join(j4);
                        }
                        WorkerState workerState = cVar2.f72356b;
                        if (v0.b()) {
                            if (!(workerState == WorkerState.TERMINATED)) {
                                throw new AssertionError();
                            }
                        }
                        cVar2.f72355a.g(this.f72352f);
                    }
                    if (i5 == i2) {
                        break;
                    }
                    i5 = i6;
                }
            }
            this.f72352f.b();
            this.f72351e.b();
            while (true) {
                i e4 = i4 == null ? null : i4.e(true);
                if (e4 == null && (e4 = this.f72351e.g()) == null && (e4 = this.f72352f.g()) == null) {
                    break;
                }
                y(e4);
            }
            if (i4 != null) {
                i4.t(WorkerState.TERMINATED);
            }
            if (v0.b()) {
                if (!(((int) ((this.controlState & f72341t) >> 42)) == this.f72347a)) {
                    throw new AssertionError();
                }
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u000b\b\u0080\u0004\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bD\u0010EB\u0011\b\u0016\u0012\u0006\u00108\u001a\u00020\u000e¢\u0006\u0004\bD\u0010FJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0007J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0016\u0010\u0011J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001c\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001d\u0010\u0019J\u0015\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0007J\u0015\u0010$\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b&\u0010\u0019R\u0016\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010*R\u0016\u0010-\u001a\u00020\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010,R\u0016\u00100\u001a\u00020.8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010/R\u0016\u00103\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00102R\u0014\u00107\u001a\u0002048Æ\u0002@\u0006¢\u0006\u0006\u001a\u0004\b5\u00106R*\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u000e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010*\u001a\u0004\b'\u0010:\"\u0004\b;\u0010\u0011R$\u0010=\u001a\u0004\u0018\u00010<8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u0016\u0010C\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u00102¨\u0006G"}, d2 = {"kotlinx/coroutines/scheduling/CoroutineScheduler$c", "Ljava/lang/Thread;", "", "q", "()Z", "", "n", "()V", net.lingala.zip4j.util.e.f73017f0, "j", "Lkotlinx/coroutines/scheduling/i;", "task", ai.aD, "(Lkotlinx/coroutines/scheduling/i;)V", "", "taskMode", "b", "(I)V", "a", "l", "v", "mode", ai.aA, "scanLocalQueue", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Z)Lkotlinx/coroutines/scheduling/i;", "m", "()Lkotlinx/coroutines/scheduling/i;", "blockingOnly", ai.aE, "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", ai.aF, "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "run", "upperBound", "k", "(I)I", "e", "f", "Z", "mayHaveLocalTasks", "I", "rngState", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", NoticeTopAnimActivityDialog_.f34402n, "Lkotlinx/coroutines/scheduling/m;", "Lkotlinx/coroutines/scheduling/m;", "localQueue", "", "J", "minDelayUntilStealableTaskNs", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "h", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "index", "indexInArray", "()I", "o", "", "nextParkedWorker", "Ljava/lang/Object;", com.sdk.a.g.f56552a, "()Ljava/lang/Object;", ai.av, "(Ljava/lang/Object;)V", "terminationDeadline", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class c extends Thread {

        /* renamed from: h  reason: collision with root package name */
        static final /* synthetic */ AtomicIntegerFieldUpdater f72354h = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl");
        @JvmField
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final m f72355a;
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public WorkerState f72356b;

        /* renamed from: c  reason: collision with root package name */
        private long f72357c;

        /* renamed from: d  reason: collision with root package name */
        private long f72358d;

        /* renamed from: e  reason: collision with root package name */
        private int f72359e;
        @JvmField

        /* renamed from: f  reason: collision with root package name */
        public boolean f72360f;
        private volatile int indexInArray;
        @Nullable
        private volatile Object nextParkedWorker;
        @NotNull
        volatile /* synthetic */ int workerCtl;

        private c() {
            setDaemon(true);
            this.f72355a = new m();
            this.f72356b = WorkerState.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = CoroutineScheduler.f72333l;
            this.f72359e = Random.Default.nextInt();
        }

        private final void a(int i2) {
            if (i2 == 0) {
                return;
            }
            CoroutineScheduler.f72331j.addAndGet(CoroutineScheduler.this, CoroutineScheduler.f72345x);
            WorkerState workerState = this.f72356b;
            if (workerState != WorkerState.TERMINATED) {
                if (v0.b()) {
                    if (!(workerState == WorkerState.BLOCKING)) {
                        throw new AssertionError();
                    }
                }
                this.f72356b = WorkerState.DORMANT;
            }
        }

        private final void b(int i2) {
            if (i2 != 0 && t(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.B();
            }
        }

        private final void c(i iVar) {
            int r3 = iVar.f72379b.r();
            i(r3);
            b(r3);
            CoroutineScheduler.this.y(iVar);
            a(r3);
        }

        private final i d(boolean z3) {
            i m4;
            i m5;
            if (z3) {
                boolean z4 = k(CoroutineScheduler.this.f72347a * 2) == 0;
                if (z4 && (m5 = m()) != null) {
                    return m5;
                }
                i h4 = this.f72355a.h();
                if (h4 != null) {
                    return h4;
                }
                if (!z4 && (m4 = m()) != null) {
                    return m4;
                }
            } else {
                i m6 = m();
                if (m6 != null) {
                    return m6;
                }
            }
            return u(false);
        }

        private final void i(int i2) {
            this.f72357c = 0L;
            if (this.f72356b == WorkerState.PARKING) {
                if (v0.b()) {
                    if (!(i2 == 1)) {
                        throw new AssertionError();
                    }
                }
                this.f72356b = WorkerState.BLOCKING;
            }
        }

        private final boolean j() {
            return this.nextParkedWorker != CoroutineScheduler.f72333l;
        }

        private final void l() {
            if (this.f72357c == 0) {
                this.f72357c = System.nanoTime() + CoroutineScheduler.this.f72349c;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f72349c);
            if (System.nanoTime() - this.f72357c >= 0) {
                this.f72357c = 0L;
                v();
            }
        }

        private final i m() {
            if (k(2) == 0) {
                i g4 = CoroutineScheduler.this.f72351e.g();
                return g4 == null ? CoroutineScheduler.this.f72352f.g() : g4;
            }
            i g5 = CoroutineScheduler.this.f72352f.g();
            return g5 == null ? CoroutineScheduler.this.f72351e.g() : g5;
        }

        private final void n() {
            loop0: while (true) {
                boolean z3 = false;
                while (!CoroutineScheduler.this.isTerminated() && this.f72356b != WorkerState.TERMINATED) {
                    i e4 = e(this.f72360f);
                    if (e4 != null) {
                        this.f72358d = 0L;
                        c(e4);
                    } else {
                        this.f72360f = false;
                        if (this.f72358d == 0) {
                            r();
                        } else if (z3) {
                            t(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f72358d);
                            this.f72358d = 0L;
                        } else {
                            z3 = true;
                        }
                    }
                }
            }
            t(WorkerState.TERMINATED);
        }

        private final boolean q() {
            boolean z3;
            if (this.f72356b != WorkerState.CPU_ACQUIRED) {
                CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                while (true) {
                    long j4 = coroutineScheduler.controlState;
                    if (((int) ((CoroutineScheduler.f72341t & j4) >> 42)) != 0) {
                        if (CoroutineScheduler.f72331j.compareAndSet(coroutineScheduler, j4, j4 - 4398046511104L)) {
                            z3 = true;
                            break;
                        }
                    } else {
                        z3 = false;
                        break;
                    }
                }
                if (!z3) {
                    return false;
                }
                this.f72356b = WorkerState.CPU_ACQUIRED;
            }
            return true;
        }

        private final void r() {
            if (!j()) {
                CoroutineScheduler.this.v(this);
                return;
            }
            if (v0.b()) {
                if (!(this.f72355a.f() == 0)) {
                    throw new AssertionError();
                }
            }
            this.workerCtl = -1;
            while (j() && this.workerCtl == -1 && !CoroutineScheduler.this.isTerminated() && this.f72356b != WorkerState.TERMINATED) {
                t(WorkerState.PARKING);
                Thread.interrupted();
                l();
            }
        }

        private final i u(boolean z3) {
            long l4;
            if (v0.b()) {
                if (!(this.f72355a.f() == 0)) {
                    throw new AssertionError();
                }
            }
            int i2 = (int) (CoroutineScheduler.this.controlState & 2097151);
            if (i2 < 2) {
                return null;
            }
            int k4 = k(i2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long j4 = Long.MAX_VALUE;
            for (int i4 = 0; i4 < i2; i4++) {
                k4++;
                if (k4 > i2) {
                    k4 = 1;
                }
                c cVar = coroutineScheduler.f72353g.get(k4);
                if (cVar != null && cVar != this) {
                    if (v0.b()) {
                        if (!(this.f72355a.f() == 0)) {
                            throw new AssertionError();
                        }
                    }
                    if (z3) {
                        l4 = this.f72355a.k(cVar.f72355a);
                    } else {
                        l4 = this.f72355a.l(cVar.f72355a);
                    }
                    if (l4 == -1) {
                        return this.f72355a.h();
                    }
                    if (l4 > 0) {
                        j4 = Math.min(j4, l4);
                    }
                }
            }
            if (j4 == Long.MAX_VALUE) {
                j4 = 0;
            }
            this.f72358d = j4;
            return null;
        }

        private final void v() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.f72353g) {
                if (coroutineScheduler.isTerminated()) {
                    return;
                }
                if (((int) (coroutineScheduler.controlState & 2097151)) <= coroutineScheduler.f72347a) {
                    return;
                }
                if (f72354h.compareAndSet(this, -1, 1)) {
                    int f4 = f();
                    o(0);
                    coroutineScheduler.w(this, f4, 0);
                    int andDecrement = (int) (2097151 & CoroutineScheduler.f72331j.getAndDecrement(coroutineScheduler));
                    if (andDecrement != f4) {
                        c cVar = coroutineScheduler.f72353g.get(andDecrement);
                        Intrinsics.checkNotNull(cVar);
                        c cVar2 = cVar;
                        coroutineScheduler.f72353g.set(f4, cVar2);
                        cVar2.o(f4);
                        coroutineScheduler.w(cVar2, andDecrement, f4);
                    }
                    coroutineScheduler.f72353g.set(andDecrement, null);
                    Unit unit = Unit.INSTANCE;
                    this.f72356b = WorkerState.TERMINATED;
                }
            }
        }

        @Nullable
        public final i e(boolean z3) {
            i g4;
            if (q()) {
                return d(z3);
            }
            if (z3) {
                g4 = this.f72355a.h();
                if (g4 == null) {
                    g4 = CoroutineScheduler.this.f72352f.g();
                }
            } else {
                g4 = CoroutineScheduler.this.f72352f.g();
            }
            return g4 == null ? u(true) : g4;
        }

        public final int f() {
            return this.indexInArray;
        }

        @Nullable
        public final Object g() {
            return this.nextParkedWorker;
        }

        @NotNull
        public final CoroutineScheduler h() {
            return CoroutineScheduler.this;
        }

        public final int k(int i2) {
            int i4 = this.f72359e;
            int i5 = i4 ^ (i4 << 13);
            int i6 = i5 ^ (i5 >> 17);
            int i7 = i6 ^ (i6 << 5);
            this.f72359e = i7;
            int i8 = i2 - 1;
            return (i8 & i2) == 0 ? i7 & i8 : (i7 & Integer.MAX_VALUE) % i2;
        }

        public final void o(int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.f72350d);
            sb.append("-worker-");
            sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
            setName(sb.toString());
            this.indexInArray = i2;
        }

        public final void p(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            n();
        }

        public final boolean t(@NotNull WorkerState workerState) {
            WorkerState workerState2 = this.f72356b;
            boolean z3 = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z3) {
                CoroutineScheduler.f72331j.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.f72356b = workerState;
            }
            return z3;
        }

        public c(int i2) {
            this();
            o(i2);
        }
    }

    public /* synthetic */ CoroutineScheduler(int i2, int i4, long j4, String str, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i4, (i5 & 4) != 0 ? l.f72387g : j4, (i5 & 8) != 0 ? l.f72382b : str);
    }
}
