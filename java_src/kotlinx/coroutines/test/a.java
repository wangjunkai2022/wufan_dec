package kotlinx.coroutines.test;

import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.internal.q0;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.n1;
import kotlinx.coroutines.p;
import kotlinx.coroutines.w0;
import net.lingala.zip4j.util.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TestCoroutineContext.kt */
@Deprecated(level = DeprecationLevel.WARNING, message = "This API has been deprecated to integrate with Structured Concurrency.", replaceWith = @ReplaceWith(expression = "TestCoroutineScope", imports = {"kotlin.coroutines.test"}))
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0001-B\u0013\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u00010!¢\u0006\u0004\bG\u0010HJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u001c\u0010\n\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0007H\u0002J7\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\r2\u0006\u0010\u000e\u001a\u00028\u00002\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00028\u00000\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J*\u0010\u0017\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0014*\u00020\u00102\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0096\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0014\u0010\u0019\u001a\u00020\u00012\n\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u0015H\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010\u001d\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u0018\u0010\u001e\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J$\u0010'\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#J$\u0010(\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#J$\u0010)\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0#J*\u0010+\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020!2\u0018\u0010&\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0*\u0012\u0004\u0012\u00020%0#J\b\u0010,\u001a\u00020!H\u0016R\u0018\u0010/\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00101\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010\u0006R\u001c\u00105\u001a\b\u0012\u0004\u0012\u00020\t028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010;\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010\u0006R\u001a\u0010?\u001a\u00060<R\u00020\u00008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u001c\u0010C\u001a\b\u0012\u0004\u0012\u00020$0@8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0019\u0010F\u001a\b\u0012\u0004\u0012\u00020$0*8F@\u0006¢\u0006\u0006\u001a\u0004\bD\u0010E¨\u0006I"}, d2 = {"Lkotlinx/coroutines/test/a;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "J", "", "delayTime", "Lkotlinx/coroutines/test/c;", "N", "O", "targetTime", "R", "initial", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "Ljava/util/concurrent/TimeUnit;", "unit", "L", ai.av, e.f73017f0, "P", "I", "", "message", "Lkotlin/Function1;", "", "", "predicate", "G", "v", ai.aB, "", "C", "toString", "a", "Ljava/lang/String;", "name", g.f56552a, "time", "Lkotlinx/coroutines/internal/q0;", "e", "Lkotlinx/coroutines/internal/q0;", "queue", "Lkotlinx/coroutines/CoroutineExceptionHandler;", d.f64708a, "Lkotlinx/coroutines/CoroutineExceptionHandler;", "ctxHandler", "f", "counter", "Lkotlinx/coroutines/test/a$a;", ai.aD, "Lkotlinx/coroutines/test/a$a;", "ctxDispatcher", "", "b", "Ljava/util/List;", "uncaughtExceptions", "K", "()Ljava/util/List;", "exceptions", "<init>", "(Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class a implements CoroutineContext {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f72499a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<Throwable> f72500b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final C0478a f72501c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final CoroutineExceptionHandler f72502d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final q0<c> f72503e;

    /* renamed from: f  reason: collision with root package name */
    private long f72504f;

    /* renamed from: g  reason: collision with root package name */
    private long f72505g;

    /* compiled from: TestCoroutineContext.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u001c\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u000eH\u0016J$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\f2\n\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0013\u001a\u00020\fH\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0016¨\u0006\u0018"}, d2 = {"kotlinx/coroutines/test/a$a", "Lkotlinx/coroutines/n1;", "Lkotlinx/coroutines/b1;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "", "N", "", "timeMillis", "Lkotlinx/coroutines/p;", "continuation", g.f56552a, "Lkotlinx/coroutines/j1;", ai.av, "L", "", "toString", "<init>", "(Lkotlinx/coroutines/test/a;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlinx.coroutines.test.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private final class C0478a extends n1 implements b1 {

        /* compiled from: TestCoroutineContext.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0004"}, d2 = {"kotlinx/coroutines/test/a$a$a", "Lkotlinx/coroutines/j1;", "", "dispose", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlinx.coroutines.test.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0479a implements j1 {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a f72507a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ c f72508b;

            C0479a(a aVar, c cVar) {
                this.f72507a = aVar;
                this.f72508b = cVar;
            }

            @Override // kotlinx.coroutines.j1
            public void dispose() {
                this.f72507a.f72503e.j(this.f72508b);
            }
        }

        /* compiled from: Runnable.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0000H\n¨\u0006\u0001"}, d2 = {"", "kotlinx/coroutines/w2$a", "<anonymous>"}, k = 3, mv = {1, 5, 1})
        /* renamed from: kotlinx.coroutines.test.a$a$b */
        /* loaded from: classes5.dex */
        public static final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ p f72509a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ C0478a f72510b;

            public b(p pVar, C0478a c0478a) {
                this.f72509a = pVar;
                this.f72510b = c0478a;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f72509a.M(this.f72510b, Unit.INSTANCE);
            }
        }

        public C0478a() {
            n1.H(this, false, 1, null);
        }

        @Override // kotlinx.coroutines.n1
        public long L() {
            return a.this.O();
        }

        @Override // kotlinx.coroutines.n1
        public boolean N() {
            return true;
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
            a.this.J(runnable);
        }

        @Override // kotlinx.coroutines.b1
        public void g(long j4, @NotNull p<? super Unit> pVar) {
            a.this.N(new b(pVar, this), j4);
        }

        @Override // kotlinx.coroutines.b1
        @NotNull
        public j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
            return new C0479a(a.this, a.this.N(runnable, j4));
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        @NotNull
        public String toString() {
            return "Dispatcher(" + a.this + ')';
        }

        @Override // kotlinx.coroutines.b1
        @Nullable
        public Object v(long j4, @NotNull Continuation<? super Unit> continuation) {
            return b1.a.a(this, j4, continuation);
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\t¸\u0006\n"}, d2 = {"kotlinx/coroutines/test/a$b", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "exception", "", "handleException", "kotlinx-coroutines-core", "kotlinx/coroutines/q0$a"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f72511a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(CoroutineExceptionHandler.b bVar, a aVar) {
            super(bVar);
            this.f72511a = aVar;
        }

        @Override // kotlinx.coroutines.CoroutineExceptionHandler
        public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
            this.f72511a.f72500b.add(th);
        }
    }

    public a() {
        this(null, 1, null);
    }

    public a(@Nullable String str) {
        this.f72499a = str;
        this.f72500b = new ArrayList();
        this.f72501c = new C0478a();
        this.f72502d = new b(CoroutineExceptionHandler.P, this);
        this.f72503e = new q0<>();
    }

    public static /* synthetic */ void B(a aVar, String str, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "";
        }
        aVar.z(str, function1);
    }

    public static /* synthetic */ void F(a aVar, String str, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "";
        }
        aVar.C(str, function1);
    }

    public static /* synthetic */ void H(a aVar, String str, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "";
        }
        aVar.G(str, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J(Runnable runnable) {
        q0<c> q0Var = this.f72503e;
        long j4 = this.f72504f;
        this.f72504f = 1 + j4;
        q0Var.b(new c(runnable, j4, 0L, 4, null));
    }

    public static /* synthetic */ long M(a aVar, TimeUnit timeUnit, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        return aVar.L(timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final c N(Runnable runnable, long j4) {
        long j5 = this.f72504f;
        this.f72504f = 1 + j5;
        c cVar = new c(runnable, j5, this.f72505g + TimeUnit.MILLISECONDS.toNanos(j4));
        this.f72503e.b(cVar);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long O() {
        c h4 = this.f72503e.h();
        if (h4 != null) {
            R(h4.f72514c);
        }
        return this.f72503e.g() ? Long.MAX_VALUE : 0L;
    }

    private final void R(long j4) {
        c cVar;
        while (true) {
            q0<c> q0Var = this.f72503e;
            synchronized (q0Var) {
                c e4 = q0Var.e();
                if (e4 != null) {
                    cVar = (e4.f72514c > j4 ? 1 : (e4.f72514c == j4 ? 0 : -1)) <= 0 ? q0Var.k(0) : null;
                }
            }
            c cVar2 = cVar;
            if (cVar2 == null) {
                return;
            }
            long j5 = cVar2.f72514c;
            if (j5 != 0) {
                this.f72505g = j5;
            }
            cVar2.run();
        }
    }

    public static /* synthetic */ long q(a aVar, long j4, TimeUnit timeUnit, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        return aVar.p(j4, timeUnit);
    }

    public static /* synthetic */ void s(a aVar, long j4, TimeUnit timeUnit, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        }
        aVar.r(j4, timeUnit);
    }

    public static /* synthetic */ void y(a aVar, String str, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = "";
        }
        aVar.v(str, function1);
    }

    public final void C(@NotNull String str, @NotNull Function1<? super List<? extends Throwable>, Boolean> function1) {
        if (function1.invoke(this.f72500b).booleanValue()) {
            this.f72500b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    public final void G(@NotNull String str, @NotNull Function1<? super Throwable, Boolean> function1) {
        if (this.f72500b.size() == 1 && function1.invoke(this.f72500b.get(0)).booleanValue()) {
            this.f72500b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    public final void I() {
        if (this.f72503e.g()) {
            return;
        }
        this.f72503e.d();
    }

    @NotNull
    public final List<Throwable> K() {
        return this.f72500b;
    }

    public final long L(@NotNull TimeUnit timeUnit) {
        return timeUnit.convert(this.f72505g, TimeUnit.NANOSECONDS);
    }

    public final void P() {
        R(this.f72505g);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return function2.invoke((R) function2.invoke(r3, this.f72501c), this.f72502d);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        if (key == ContinuationInterceptor.Key) {
            return this.f72501c;
        }
        if (key == CoroutineExceptionHandler.P) {
            return this.f72502d;
        }
        return null;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return key == ContinuationInterceptor.Key ? this.f72502d : key == CoroutineExceptionHandler.P ? this.f72501c : this;
    }

    public final long p(long j4, @NotNull TimeUnit timeUnit) {
        long j5 = this.f72505g;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        r(timeUnit.toNanos(j4) + j5, timeUnit2);
        return timeUnit.convert(this.f72505g - j5, timeUnit2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return CoroutineContext.DefaultImpls.plus(this, coroutineContext);
    }

    public final void r(long j4, @NotNull TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j4);
        R(nanos);
        if (nanos > this.f72505g) {
            this.f72505g = nanos;
        }
    }

    @NotNull
    public String toString() {
        String str = this.f72499a;
        return str == null ? Intrinsics.stringPlus("TestCoroutineContext@", w0.b(this)) : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void v(@NotNull String str, @NotNull Function1<? super Throwable, Boolean> function1) {
        List<Throwable> list = this.f72500b;
        boolean z3 = true;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (!function1.invoke(it2.next()).booleanValue()) {
                    z3 = false;
                    break;
                }
            }
        }
        if (z3) {
            this.f72500b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void z(@NotNull String str, @NotNull Function1<? super Throwable, Boolean> function1) {
        List<Throwable> list = this.f72500b;
        boolean z3 = false;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                } else if (function1.invoke(it2.next()).booleanValue()) {
                    z3 = true;
                    break;
                }
            }
        }
        if (z3) {
            this.f72500b.clear();
            return;
        }
        throw new AssertionError(str);
    }

    public /* synthetic */ a(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str);
    }
}
