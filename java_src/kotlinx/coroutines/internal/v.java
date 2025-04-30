package kotlinx.coroutines.internal;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LockFreeTaskQueue.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0010\b\u0000\u0018\u0000 \u0007*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0002\u0017\u0013B\u0017\u0012\u0006\u0010+\u001a\u00020\u0003\u0012\u0006\u0010-\u001a\u00020\u0014¢\u0006\u0004\b.\u0010/J3\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u0007\u0010\bJ3\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u00062\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u00062\u0006\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\b\u0012\u0004\u0012\u00028\u0000`\u00062\u0006\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00010 \"\u0004\b\u0001\u0010\u001d2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001e¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0014¢\u0006\u0004\b#\u0010\u0016R\u0016\u0010%\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010$R\u0013\u0010'\u001a\u00020\u00148F@\u0006¢\u0006\u0006\u001a\u0004\b&\u0010\u0016R\u0013\u0010*\u001a\u00020\u00038F@\u0006¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0016\u0010+\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010$R\u0016\u0010-\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010,¨\u00060"}, d2 = {"Lkotlinx/coroutines/internal/v;", "", "E", "", "index", "element", "Lkotlinx/coroutines/internal/Core;", "e", "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/v;", "oldHead", "newHead", "m", "(II)Lkotlinx/coroutines/internal/v;", "", "j", "()J", NoticeTopAnimActivityDialog_.f34402n, ai.aD, "(J)Lkotlinx/coroutines/internal/v;", "b", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "()Z", "a", "(Ljava/lang/Object;)I", "l", "()Ljava/lang/Object;", "k", "()Lkotlinx/coroutines/internal/v;", "R", "Lkotlin/Function1;", "transform", "", ai.aA, "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;", com.sdk.a.g.f56552a, "I", "mask", "h", "isEmpty", "f", "()I", "size", "capacity", "Z", "singleConsumer", "<init>", "(IZ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class v<E> {

    /* renamed from: h  reason: collision with root package name */
    public static final int f72228h = 8;

    /* renamed from: i  reason: collision with root package name */
    public static final int f72229i = 30;

    /* renamed from: j  reason: collision with root package name */
    public static final int f72230j = 1073741823;

    /* renamed from: k  reason: collision with root package name */
    public static final int f72231k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final long f72232l = 1073741823;

    /* renamed from: m  reason: collision with root package name */
    public static final int f72233m = 30;

    /* renamed from: n  reason: collision with root package name */
    public static final long f72234n = 1152921503533105152L;

    /* renamed from: o  reason: collision with root package name */
    public static final int f72235o = 60;

    /* renamed from: p  reason: collision with root package name */
    public static final long f72236p = 1152921504606846976L;

    /* renamed from: q  reason: collision with root package name */
    public static final int f72237q = 61;

    /* renamed from: r  reason: collision with root package name */
    public static final long f72238r = 2305843009213693952L;

    /* renamed from: s  reason: collision with root package name */
    public static final int f72239s = 1024;

    /* renamed from: u  reason: collision with root package name */
    public static final int f72241u = 0;

    /* renamed from: v  reason: collision with root package name */
    public static final int f72242v = 1;

    /* renamed from: w  reason: collision with root package name */
    public static final int f72243w = 2;
    @NotNull
    private volatile /* synthetic */ Object _next = null;
    @NotNull
    private volatile /* synthetic */ long _state = 0;

    /* renamed from: a  reason: collision with root package name */
    private final int f72244a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f72245b;

    /* renamed from: c  reason: collision with root package name */
    private final int f72246c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private /* synthetic */ AtomicReferenceArray f72247d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f72225e = new a(null);
    @JvmField
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final i0 f72240t = new i0("REMOVE_FROZEN");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f72226f = AtomicReferenceFieldUpdater.newUpdater(v.class, Object.class, "_next");

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f72227g = AtomicLongFieldUpdater.newUpdater(v.class, "_state");

    /* compiled from: LockFreeTaskQueue.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b(\u0010)J\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0004J\u0012\u0010\u0007\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0012\u0010\t\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\b\u001a\u00020\u0005JR\u0010\u0011\u001a\u00028\u0001\"\u0004\b\u0001\u0010\n*\u00020\u000226\u0010\u0010\u001a2\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00028\u00010\u000bH\u0086\b¢\u0006\u0004\b\u0011\u0010\u0012J\n\u0010\u0013\u001a\u00020\u0005*\u00020\u0002R\u0016\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0015R\u0016\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0015R\u0016\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0015R\u0016\u0010 \u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0015R\u0016\u0010!\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0015R\u0016\u0010\"\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0015R\u0016\u0010$\u001a\u00020#8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010&\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u001aR\u0016\u0010'\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0015¨\u0006*"}, d2 = {"kotlinx/coroutines/internal/v$a", "", "", "other", "e", "", "newHead", "b", "newTail", ai.aD, "T", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "tail", "block", com.xinzhu.overmind.utils.helpers.d.f64708a, "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "a", "ADD_CLOSED", "I", "ADD_FROZEN", "ADD_SUCCESS", "CAPACITY_BITS", "CLOSED_MASK", "J", "CLOSED_SHIFT", "FROZEN_MASK", "FROZEN_SHIFT", "HEAD_MASK", "HEAD_SHIFT", "INITIAL_CAPACITY", "MAX_CAPACITY_MASK", "MIN_ADD_SPIN_CAPACITY", "Lkotlinx/coroutines/internal/i0;", "REMOVE_FROZEN", "Lkotlinx/coroutines/internal/i0;", "TAIL_MASK", "TAIL_SHIFT", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j4) {
            return (j4 & v.f72238r) != 0 ? 2 : 1;
        }

        public final long b(long j4, int i2) {
            return e(j4, v.f72232l) | (i2 << 0);
        }

        public final long c(long j4, int i2) {
            return e(j4, v.f72234n) | (i2 << 30);
        }

        public final <T> T d(long j4, @NotNull Function2<? super Integer, ? super Integer, ? extends T> function2) {
            return function2.invoke(Integer.valueOf((int) ((v.f72232l & j4) >> 0)), Integer.valueOf((int) ((j4 & v.f72234n) >> 30)));
        }

        public final long e(long j4, long j5) {
            return j4 & (j5 ^ (-1));
        }
    }

    /* compiled from: LockFreeTaskQueue.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"kotlinx/coroutines/internal/v$b", "", "", "a", "I", "index", "<init>", "(I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b {
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public final int f72248a;

        public b(int i2) {
            this.f72248a = i2;
        }
    }

    public v(int i2, boolean z3) {
        this.f72244a = i2;
        this.f72245b = z3;
        int i4 = i2 - 1;
        this.f72246c = i4;
        this.f72247d = new AtomicReferenceArray(i2);
        if (!(i4 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i2 & i4) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final v<E> b(long j4) {
        v<E> vVar = new v<>(this.f72244a * 2, this.f72245b);
        int i2 = (int) ((f72232l & j4) >> 0);
        int i4 = (int) ((f72234n & j4) >> 30);
        while (true) {
            int i5 = this.f72246c;
            if ((i2 & i5) != (i4 & i5)) {
                Object obj = this.f72247d.get(i5 & i2);
                if (obj == null) {
                    obj = new b(i2);
                }
                vVar.f72247d.set(vVar.f72246c & i2, obj);
                i2++;
            } else {
                vVar._state = f72225e.e(j4, f72236p);
                return vVar;
            }
        }
    }

    private final v<E> c(long j4) {
        while (true) {
            v<E> vVar = (v) this._next;
            if (vVar != null) {
                return vVar;
            }
            f72226f.compareAndSet(this, null, b(j4));
        }
    }

    private final v<E> e(int i2, E e4) {
        Object obj = this.f72247d.get(this.f72246c & i2);
        if ((obj instanceof b) && ((b) obj).f72248a == i2) {
            this.f72247d.set(i2 & this.f72246c, e4);
            return this;
        }
        return null;
    }

    private final long j() {
        long j4;
        long j5;
        do {
            j4 = this._state;
            if ((j4 & f72236p) != 0) {
                return j4;
            }
            j5 = j4 | f72236p;
        } while (!f72227g.compareAndSet(this, j4, j5));
        return j5;
    }

    private final v<E> m(int i2, int i4) {
        long j4;
        a aVar;
        int i5;
        do {
            j4 = this._state;
            aVar = f72225e;
            i5 = (int) ((f72232l & j4) >> 0);
            if (v0.b()) {
                if (!(i5 == i2)) {
                    throw new AssertionError();
                }
            }
            if ((f72236p & j4) != 0) {
                return k();
            }
        } while (!f72227g.compareAndSet(this, j4, aVar.b(j4, i4)));
        this.f72247d.set(this.f72246c & i5, null);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(@org.jetbrains.annotations.NotNull E r14) {
        /*
            r13 = this;
        L0:
            long r2 = r13._state
            r0 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r0 = r0 & r2
            r6 = 0
            int r4 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r4 == 0) goto L12
            kotlinx.coroutines.internal.v$a r14 = kotlinx.coroutines.internal.v.f72225e
            int r14 = r14.a(r2)
            return r14
        L12:
            kotlinx.coroutines.internal.v$a r0 = kotlinx.coroutines.internal.v.f72225e
            r4 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r4 = r4 & r2
            r8 = 0
            long r4 = r4 >> r8
            int r1 = (int) r4
            r4 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r4 = r4 & r2
            r9 = 30
            long r4 = r4 >> r9
            int r9 = (int) r4
            int r10 = r13.f72246c
            int r4 = r9 + 2
            r4 = r4 & r10
            r5 = r1 & r10
            r11 = 1
            if (r4 != r5) goto L30
            return r11
        L30:
            boolean r4 = r13.f72245b
            r5 = 1073741823(0x3fffffff, float:1.9999999)
            if (r4 != 0) goto L4f
            java.util.concurrent.atomic.AtomicReferenceArray r4 = r13.f72247d
            r12 = r9 & r10
            java.lang.Object r4 = r4.get(r12)
            if (r4 == 0) goto L4f
            int r0 = r13.f72244a
            r2 = 1024(0x400, float:1.435E-42)
            if (r0 < r2) goto L4e
            int r9 = r9 - r1
            r1 = r9 & r5
            int r0 = r0 >> 1
            if (r1 <= r0) goto L0
        L4e:
            return r11
        L4f:
            int r1 = r9 + 1
            r1 = r1 & r5
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = kotlinx.coroutines.internal.v.f72227g
            long r11 = r0.c(r2, r1)
            r0 = r4
            r1 = r13
            r4 = r11
            boolean r0 = r0.compareAndSet(r1, r2, r4)
            if (r0 == 0) goto L0
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r13.f72247d
            r1 = r9 & r10
            r0.set(r1, r14)
            r0 = r13
        L69:
            long r1 = r0._state
            r3 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r1 = r1 & r3
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 != 0) goto L73
            goto L7d
        L73:
            kotlinx.coroutines.internal.v r0 = r0.k()
            kotlinx.coroutines.internal.v r0 = r0.e(r9, r14)
            if (r0 != 0) goto L69
        L7d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.v.a(java.lang.Object):int");
    }

    public final boolean d() {
        long j4;
        do {
            j4 = this._state;
            if ((j4 & f72238r) != 0) {
                return true;
            }
            if ((f72236p & j4) != 0) {
                return false;
            }
        } while (!f72227g.compareAndSet(this, j4, j4 | f72238r));
        return true;
    }

    public final int f() {
        long j4 = this._state;
        return 1073741823 & (((int) ((j4 & f72234n) >> 30)) - ((int) ((f72232l & j4) >> 0)));
    }

    public final boolean g() {
        return (this._state & f72238r) != 0;
    }

    public final boolean h() {
        long j4 = this._state;
        return ((int) ((f72232l & j4) >> 0)) == ((int) ((j4 & f72234n) >> 30));
    }

    @NotNull
    public final <R> List<R> i(@NotNull Function1<? super E, ? extends R> function1) {
        ArrayList arrayList = new ArrayList(this.f72244a);
        long j4 = this._state;
        int i2 = (int) ((f72232l & j4) >> 0);
        int i4 = (int) ((j4 & f72234n) >> 30);
        while (true) {
            int i5 = this.f72246c;
            if ((i2 & i5) == (i4 & i5)) {
                return arrayList;
            }
            Object obj = (Object) this.f72247d.get(i5 & i2);
            if (obj != 0 && !(obj instanceof b)) {
                arrayList.add(function1.invoke(obj));
            }
            i2++;
        }
    }

    @NotNull
    public final v<E> k() {
        return c(j());
    }

    @Nullable
    public final Object l() {
        while (true) {
            long j4 = this._state;
            if ((f72236p & j4) != 0) {
                return f72240t;
            }
            a aVar = f72225e;
            int i2 = (int) ((f72232l & j4) >> 0);
            int i4 = (int) ((f72234n & j4) >> 30);
            int i5 = this.f72246c;
            if ((i4 & i5) == (i2 & i5)) {
                return null;
            }
            Object obj = this.f72247d.get(i5 & i2);
            if (obj == null) {
                if (this.f72245b) {
                    return null;
                }
            } else if (obj instanceof b) {
                return null;
            } else {
                int i6 = (i2 + 1) & f72230j;
                if (f72227g.compareAndSet(this, j4, aVar.b(j4, i6))) {
                    this.f72247d.set(this.f72246c & i2, null);
                    return obj;
                } else if (this.f72245b) {
                    v<E> vVar = this;
                    do {
                        vVar = vVar.m(i2, i6);
                    } while (vVar != null);
                    return obj;
                }
            }
        }
    }
}
