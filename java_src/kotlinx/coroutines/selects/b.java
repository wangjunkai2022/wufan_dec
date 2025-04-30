package kotlinx.coroutines.selects;

import com.umeng.analytics.pro.ai;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.h0;
import kotlinx.coroutines.internal.b0;
import kotlinx.coroutines.internal.q;
import kotlinx.coroutines.internal.s;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.r;
import kotlinx.coroutines.selects.a;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Select.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0004[6\\KB\u0015\u0012\f\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\bY\u0010ZJ.\u0010\r\u001a\u00020\u000b2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\bH\u0082\b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\n\u0018\u00010\u0012j\u0004\u0018\u0001`\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J \u0010\u0018\u001a\u00020\u000b2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001aH\u0001¢\u0006\u0004\b!\u0010\u001dJ\u0017\u0010$\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u001b\u0010+\u001a\u0004\u0018\u00010\t2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J\u0019\u0010/\u001a\u0004\u0018\u00010\t2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00102\u001a\u000201H\u0016¢\u0006\u0004\b2\u00103J5\u00106\u001a\u00020\u000b*\u0002042\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t05H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b6\u00107JG\u0010;\u001a\u00020\u000b\"\u0004\b\u0001\u00108*\b\u0012\u0004\u0012\u00028\u0001092\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0:H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b;\u0010<J[\u0010@\u001a\u00020\u000b\"\u0004\b\u0001\u0010=\"\u0004\b\u0002\u00108*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020>2\u0006\u0010?\u001a\u00028\u00012\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0:H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ8\u0010D\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020B2\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t05H\u0016ø\u0001\u0000¢\u0006\u0004\bD\u0010ER\u0016\u0010G\u001a\u00020&8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bF\u0010(R\u001e\u0010J\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00078V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bH\u0010IR\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u001c\u0010P\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u0010OR(\u0010T\u001a\u0004\u0018\u00010\"2\b\u0010\n\u001a\u0004\u0018\u00010\"8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010%R\u0016\u0010X\u001a\u00020U8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bV\u0010W\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006]"}, d2 = {"Lkotlinx/coroutines/selects/b;", "R", "Lkotlinx/coroutines/internal/q;", "Lkotlinx/coroutines/selects/a;", "Lkotlinx/coroutines/selects/f;", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/Function0;", "", "value", "", "block", "j0", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "N", "()V", "i0", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "", "exception", net.lingala.zip4j.util.e.f73017f0, "(Ljava/lang/Throwable;)V", "l0", "()Ljava/lang/Object;", "e", "m0", "Lkotlinx/coroutines/j1;", "handle", "j", "(Lkotlinx/coroutines/j1;)V", "", "n", "()Z", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "k", "(Lkotlinx/coroutines/internal/s$d;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/b;", "desc", ai.az, "(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "b", "(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/d;", "Lkotlin/Function2;", ai.aE, "(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/e;", com.alipay.sdk.authjs.a.f9678l, "f", "(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "timeMillis", "h", "(JLkotlin/jvm/functions/Function1;)V", com.sdk.a.g.f56552a, "isSelected", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/coroutines/Continuation;", "uCont", "o", "()Lkotlin/coroutines/Continuation;", "completion", "k0", "()Lkotlinx/coroutines/j1;", "n0", "parentHandle", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlin/coroutines/Continuation;)V", "a", ai.aD, "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@PublishedApi
/* loaded from: classes5.dex */
public final class b<R> extends q implements kotlinx.coroutines.selects.a<R>, f<R>, Continuation<R>, CoroutineStackFrame {

    /* renamed from: e  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f72419e = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_state");

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f72420f = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_result");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Continuation<R> f72421d;
    @NotNull
    volatile /* synthetic */ Object _state = g.f();
    @NotNull
    volatile /* synthetic */ Object _result = g.c();
    @NotNull
    private volatile /* synthetic */ Object _parentHandle = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u001b\u0012\n\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u0016\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001a\u0010\u001bJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\n\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0016\u0010\u0010\u001a\u00020\r8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0015\u001a\u00020\u00118\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00168\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"kotlinx/coroutines/selects/b$a", "Lkotlinx/coroutines/internal/d;", "", "k", "", "l", "failure", "j", "affected", ai.aA, com.xinzhu.overmind.utils.helpers.d.f64708a, "", "toString", "Lkotlinx/coroutines/internal/b;", ai.aD, "Lkotlinx/coroutines/internal/b;", "desc", "", "J", com.sdk.a.g.f56552a, "()J", "opSequence", "Lkotlinx/coroutines/selects/b;", "b", "Lkotlinx/coroutines/selects/b;", "impl", "<init>", "(Lkotlinx/coroutines/selects/b;Lkotlinx/coroutines/internal/b;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class a extends kotlinx.coroutines.internal.d<Object> {
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final b<?> f72422b;
        @JvmField
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final kotlinx.coroutines.internal.b f72423c;

        /* renamed from: d  reason: collision with root package name */
        private final long f72424d = g.b().a();

        public a(@NotNull b<?> bVar, @NotNull kotlinx.coroutines.internal.b bVar2) {
            this.f72422b = bVar;
            this.f72423c = bVar2;
            bVar2.d(this);
        }

        private final void j(Object obj) {
            boolean z3 = obj == null;
            if (b.f72419e.compareAndSet(this.f72422b, this, z3 ? null : g.f()) && z3) {
                this.f72422b.i0();
            }
        }

        private final Object k() {
            b<?> bVar = this.f72422b;
            while (true) {
                Object obj = bVar._state;
                if (obj == this) {
                    return null;
                }
                if (obj instanceof b0) {
                    ((b0) obj).c(this.f72422b);
                } else if (obj == g.f()) {
                    if (b.f72419e.compareAndSet(this.f72422b, g.f(), this)) {
                        return null;
                    }
                } else {
                    return g.d();
                }
            }
        }

        private final void l() {
            b.f72419e.compareAndSet(this.f72422b, this, g.f());
        }

        @Override // kotlinx.coroutines.internal.d
        public void d(@Nullable Object obj, @Nullable Object obj2) {
            j(obj2);
            this.f72423c.a(this, obj2);
        }

        @Override // kotlinx.coroutines.internal.d
        public long g() {
            return this.f72424d;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        public Object i(@Nullable Object obj) {
            Object k4;
            if (obj != null || (k4 = k()) == null) {
                try {
                    return this.f72423c.c(this);
                } catch (Throwable th) {
                    if (obj == null) {
                        l();
                    }
                    throw th;
                }
            }
            return k4;
        }

        @Override // kotlinx.coroutines.internal.b0
        @NotNull
        public String toString() {
            return "AtomicSelectOp(sequence=" + g() + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"kotlinx/coroutines/selects/b$b", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/j1;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/j1;", "handle", "<init>", "(Lkotlinx/coroutines/j1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlinx.coroutines.selects.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0477b extends s {
        @JvmField
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final j1 f72425d;

        public C0477b(@NotNull j1 j1Var) {
            this.f72425d = j1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u001a\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\n¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/selects/b$c", "Lkotlinx/coroutines/internal/b0;", "", "affected", ai.aD, "Lkotlinx/coroutines/internal/d;", "a", "()Lkotlinx/coroutines/internal/d;", "atomicOp", "Lkotlinx/coroutines/internal/s$d;", "Lkotlinx/coroutines/internal/s$d;", "otherOp", "<init>", "(Lkotlinx/coroutines/internal/s$d;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class c extends b0 {
        @JvmField
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final s.d f72426a;

        public c(@NotNull s.d dVar) {
            this.f72426a = dVar;
        }

        @Override // kotlinx.coroutines.internal.b0
        @NotNull
        public kotlinx.coroutines.internal.d<?> a() {
            return this.f72426a.a();
        }

        @Override // kotlinx.coroutines.internal.b0
        @Nullable
        public Object c(@Nullable Object obj) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>");
            b bVar = (b) obj;
            this.f72426a.d();
            Object e4 = this.f72426a.a().e(null);
            b.f72419e.compareAndSet(bVar, this, e4 == null ? this.f72426a.f72213c : g.f());
            return e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¨\u0006\b"}, d2 = {"kotlinx/coroutines/selects/b$d", "Lkotlinx/coroutines/d2;", "", "cause", "", "e0", "<init>", "(Lkotlinx/coroutines/selects/b;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class d extends d2 {
        public d() {
        }

        @Override // kotlinx.coroutines.j0
        public void e0(@Nullable Throwable th) {
            if (b.this.n()) {
                b.this.r(f0().m());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            e0(th);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Runnable.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0000H\n¨\u0006\u0001"}, d2 = {"", "kotlinx/coroutines/w2$a", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class e implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1 f72429b;

        public e(Function1 function1) {
            this.f72429b = function1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.n()) {
                b3.a.e(this.f72429b, b.this.o());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull Continuation<? super R> continuation) {
        this.f72421d = continuation;
    }

    private final void N() {
        c2 c2Var = (c2) getContext().get(c2.Q);
        if (c2Var == null) {
            return;
        }
        j1 f4 = c2.a.f(c2Var, true, false, new d(), 2, null);
        n0(f4);
        if (g()) {
            f4.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0() {
        j1 k02 = k0();
        if (k02 != null) {
            k02.dispose();
        }
        for (s sVar = (s) O(); !Intrinsics.areEqual(sVar, this); sVar = sVar.P()) {
            if (sVar instanceof C0477b) {
                ((C0477b) sVar).f72425d.dispose();
            }
        }
    }

    private final void j0(Function0<? extends Object> function0, Function0<Unit> function02) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (v0.b() && !g()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj = this._result;
            if (obj == g.c()) {
                if (f72420f.compareAndSet(this, g.c(), function0.invoke())) {
                    return;
                }
            } else {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj != coroutine_suspended) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72420f;
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (atomicReferenceFieldUpdater.compareAndSet(this, coroutine_suspended2, g.a())) {
                    function02.invoke();
                    return;
                }
            }
        }
    }

    private final j1 k0() {
        return (j1) this._parentHandle;
    }

    private final void n0(j1 j1Var) {
        this._parentHandle = j1Var;
    }

    @Override // kotlinx.coroutines.selects.a
    public void b(@NotNull kotlinx.coroutines.selects.c cVar, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        cVar.j(this, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void f(@NotNull kotlinx.coroutines.selects.e<? super P, ? extends Q> eVar, P p3, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        eVar.C(this, p3, function2);
    }

    @Override // kotlinx.coroutines.selects.f
    public boolean g() {
        while (true) {
            Object obj = this._state;
            if (obj == g.f()) {
                return false;
            }
            if (!(obj instanceof b0)) {
                return true;
            }
            ((b0) obj).c(this);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<R> continuation = this.f72421d;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    public CoroutineContext getContext() {
        return this.f72421d.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.selects.a
    public void h(long j4, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        if (j4 <= 0) {
            if (n()) {
                b3.b.c(function1, o());
                return;
            }
            return;
        }
        j(DelayKt.d(getContext()).p(j4, new e(function1), getContext()));
    }

    @Override // kotlinx.coroutines.selects.f
    public void j(@NotNull j1 j1Var) {
        C0477b c0477b = new C0477b(j1Var);
        if (!g()) {
            A(c0477b);
            if (!g()) {
                return;
            }
        }
        j1Var.dispose();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        i0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        return kotlinx.coroutines.r.f72315d;
     */
    @Override // kotlinx.coroutines.selects.f
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object k(@org.jetbrains.annotations.Nullable kotlinx.coroutines.internal.s.d r4) {
        /*
            r3 = this;
        L0:
            java.lang.Object r0 = r3._state
            java.lang.Object r1 = kotlinx.coroutines.selects.g.f()
            r2 = 0
            if (r0 != r1) goto L37
            if (r4 != 0) goto L18
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.selects.b.f72419e
            java.lang.Object r1 = kotlinx.coroutines.selects.g.f()
            boolean r0 = r0.compareAndSet(r3, r1, r2)
            if (r0 != 0) goto L31
            goto L0
        L18:
            kotlinx.coroutines.selects.b$c r0 = new kotlinx.coroutines.selects.b$c
            r0.<init>(r4)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.selects.b.f72419e
            java.lang.Object r2 = kotlinx.coroutines.selects.g.f()
            boolean r1 = r1.compareAndSet(r3, r2, r0)
            if (r1 != 0) goto L2a
            goto L0
        L2a:
            java.lang.Object r4 = r0.c(r3)
            if (r4 == 0) goto L31
            return r4
        L31:
            r3.i0()
            kotlinx.coroutines.internal.i0 r4 = kotlinx.coroutines.r.f72315d
            return r4
        L37:
            boolean r1 = r0 instanceof kotlinx.coroutines.internal.b0
            if (r1 == 0) goto L6b
            if (r4 == 0) goto L65
            kotlinx.coroutines.internal.d r1 = r4.a()
            boolean r2 = r1 instanceof kotlinx.coroutines.selects.b.a
            if (r2 == 0) goto L59
            r2 = r1
            kotlinx.coroutines.selects.b$a r2 = (kotlinx.coroutines.selects.b.a) r2
            kotlinx.coroutines.selects.b<?> r2 = r2.f72422b
            if (r2 == r3) goto L4d
            goto L59
        L4d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot use matching select clauses on the same object"
            java.lang.String r0 = r0.toString()
            r4.<init>(r0)
            throw r4
        L59:
            r2 = r0
            kotlinx.coroutines.internal.b0 r2 = (kotlinx.coroutines.internal.b0) r2
            boolean r1 = r1.b(r2)
            if (r1 == 0) goto L65
            java.lang.Object r4 = kotlinx.coroutines.internal.c.f72163b
            return r4
        L65:
            kotlinx.coroutines.internal.b0 r0 = (kotlinx.coroutines.internal.b0) r0
            r0.c(r3)
            goto L0
        L6b:
            if (r4 != 0) goto L6e
            return r2
        L6e:
            kotlinx.coroutines.internal.s$a r4 = r4.f72213c
            if (r0 != r4) goto L75
            kotlinx.coroutines.internal.i0 r4 = kotlinx.coroutines.r.f72315d
            return r4
        L75:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.b.k(kotlinx.coroutines.internal.s$d):java.lang.Object");
    }

    @PublishedApi
    @Nullable
    public final Object l0() {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (!g()) {
            N();
        }
        Object obj = this._result;
        if (obj == g.c()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72420f;
            Object c4 = g.c();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (atomicReferenceFieldUpdater.compareAndSet(this, c4, coroutine_suspended)) {
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended2;
            }
            obj = this._result;
        }
        if (obj != g.a()) {
            if (obj instanceof h0) {
                throw ((h0) obj).f72127a;
            }
            return obj;
        }
        throw new IllegalStateException("Already resumed");
    }

    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void m(@NotNull kotlinx.coroutines.selects.e<? super P, ? extends Q> eVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        a.C0476a.a(this, eVar, function2);
    }

    @PublishedApi
    public final void m0(@NotNull Throwable th) {
        if (n()) {
            Result.Companion companion = Result.Companion;
            resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
        } else if (th instanceof CancellationException) {
        } else {
            Object l02 = l0();
            if (l02 instanceof h0) {
                Throwable th2 = ((h0) l02).f72127a;
                if (v0.e()) {
                    th2 = kotlinx.coroutines.internal.h0.u(th2);
                }
                if (th2 == (!v0.e() ? th : kotlinx.coroutines.internal.h0.u(th))) {
                    return;
                }
            }
            q0.b(getContext(), th);
        }
    }

    @Override // kotlinx.coroutines.selects.f
    public boolean n() {
        Object k4 = k(null);
        if (k4 == r.f72315d) {
            return true;
        }
        if (k4 == null) {
            return false;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Unexpected trySelectIdempotent result ", k4).toString());
    }

    @Override // kotlinx.coroutines.selects.f
    @NotNull
    public Continuation<R> o() {
        return this;
    }

    @Override // kotlinx.coroutines.selects.f
    public void r(@NotNull Throwable th) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Continuation intercepted;
        if (v0.b() && !g()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj = this._result;
            if (obj == g.c()) {
                Continuation<R> continuation = this.f72421d;
                if (f72420f.compareAndSet(this, g.c(), new h0((v0.e() && (continuation instanceof CoroutineStackFrame)) ? kotlinx.coroutines.internal.h0.o(th, (CoroutineStackFrame) continuation) : th, false, 2, null))) {
                    return;
                }
            } else {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj != coroutine_suspended) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72420f;
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (atomicReferenceFieldUpdater.compareAndSet(this, coroutine_suspended2, g.a())) {
                    intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.f72421d);
                    Result.Companion companion = Result.Companion;
                    intercepted.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th)));
                    return;
                }
            }
        }
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (v0.b() && !g()) {
            throw new AssertionError();
        }
        while (true) {
            Object obj2 = this._result;
            if (obj2 == g.c()) {
                if (f72420f.compareAndSet(this, g.c(), m0.d(obj, null, 1, null))) {
                    return;
                }
            } else {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj2 != coroutine_suspended) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72420f;
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (atomicReferenceFieldUpdater.compareAndSet(this, coroutine_suspended2, g.a())) {
                    if (Result.m30isFailureimpl(obj)) {
                        Continuation<R> continuation = this.f72421d;
                        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
                        Intrinsics.checkNotNull(m27exceptionOrNullimpl);
                        Result.Companion companion = Result.Companion;
                        if (v0.e() && (continuation instanceof CoroutineStackFrame)) {
                            m27exceptionOrNullimpl = kotlinx.coroutines.internal.h0.o(m27exceptionOrNullimpl, (CoroutineStackFrame) continuation);
                        }
                        continuation.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(m27exceptionOrNullimpl)));
                        return;
                    }
                    this.f72421d.resumeWith(obj);
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.selects.f
    @Nullable
    public Object s(@NotNull kotlinx.coroutines.internal.b bVar) {
        return new a(this, bVar).c(null);
    }

    @Override // kotlinx.coroutines.internal.s
    @NotNull
    public String toString() {
        return "SelectInstance(state=" + this._state + ", result=" + this._result + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.a
    public <Q> void u(@NotNull kotlinx.coroutines.selects.d<? extends Q> dVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        dVar.f(this, function2);
    }
}
