package kotlinx.coroutines.sync;

import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.b0;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.q;
import kotlinx.coroutines.internal.r;
import kotlinx.coroutines.internal.s;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.p;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Mutex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0000\u0018\u00002\u00020\u00012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00010\u0002:\u0006%&\t \u000b\u0015B\u000f\u0012\u0006\u0010\"\u001a\u00020\b¢\u0006\u0004\b#\u0010$J\u001d\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u0007JT\u0010\u0012\u001a\u00020\u0005\"\u0004\b\u0000\u0010\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\"\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000fH\u0016ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\nJ\u0019\u0010\u0015\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\b8@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR$\u0010\u001f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00020\u00010\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl;", "Lkotlinx/coroutines/sync/c;", "Lkotlinx/coroutines/selects/e;", "", "owner", "", ai.aA, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a", "(Ljava/lang/Object;)Z", ai.aD, "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", "C", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "e", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Ljava/lang/Object;)V", "", "toString", "()Ljava/lang/String;", "h", "()Z", "isLockedEmptyQueueState", "f", "()Lkotlinx/coroutines/selects/e;", "onLock", "b", "isLocked", "locked", "<init>", "(Z)V", "LockCont", "LockSelect", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class MutexImpl implements kotlinx.coroutines.sync.c, kotlinx.coroutines.selects.e<Object, kotlinx.coroutines.sync.c> {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f72436a = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "_state");
    @NotNull
    volatile /* synthetic */ Object _state;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\n¢\u0006\u0004\b\u000f\u0010\u0010J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\n8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$LockCont;", "Lkotlinx/coroutines/sync/MutexImpl$a;", "Lkotlinx/coroutines/sync/MutexImpl;", "", "f0", "token", "", "e0", "", "toString", "Lkotlinx/coroutines/p;", "f", "Lkotlinx/coroutines/p;", "cont", "owner", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/p;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class LockCont extends a {
        @JvmField
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public final p<Unit> f72437f;

        /* JADX WARN: Multi-variable type inference failed */
        public LockCont(@Nullable Object obj, @NotNull p<? super Unit> pVar) {
            super(obj);
            this.f72437f = pVar;
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.a
        public void e0(@NotNull Object obj) {
            this.f72437f.V(obj);
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.a
        @Nullable
        public Object f0() {
            p<Unit> pVar = this.f72437f;
            Unit unit = Unit.INSTANCE;
            final MutexImpl mutexImpl = MutexImpl.this;
            return pVar.L(unit, null, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$LockCont$tryResumeLockWaiter$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    MutexImpl.this.d(this.f72446d);
                }
            });
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return "LockCont[" + this.f72446d + ", " + this.f72437f + "] for " + MutexImpl.this;
        }
    }

    /* compiled from: Mutex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00060\u0002R\u00020\u0003BF\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\"\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000fø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\n\u001a\u00020\tH\u0016R\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR5\u0010\u0014\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000f8\u0006@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$LockSelect;", "R", "Lkotlinx/coroutines/sync/MutexImpl$a;", "Lkotlinx/coroutines/sync/MutexImpl;", "", "f0", "token", "", "e0", "", "toString", "Lkotlinx/coroutines/selects/f;", "f", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/sync/c;", "Lkotlin/coroutines/Continuation;", g.f56552a, "Lkotlin/jvm/functions/Function2;", "block", "owner", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private final class LockSelect<R> extends a {
        @JvmField
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public final kotlinx.coroutines.selects.f<R> f72441f;
        @JvmField
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        public final Function2<kotlinx.coroutines.sync.c, Continuation<? super R>, Object> f72442g;

        /* JADX WARN: Multi-variable type inference failed */
        public LockSelect(@Nullable Object obj, @NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super kotlinx.coroutines.sync.c, ? super Continuation<? super R>, ? extends Object> function2) {
            super(obj);
            this.f72441f = fVar;
            this.f72442g = function2;
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.a
        public void e0(@NotNull Object obj) {
            i0 i0Var;
            if (v0.b()) {
                i0Var = MutexKt.f72464c;
                if (!(obj == i0Var)) {
                    throw new AssertionError();
                }
            }
            Function2<kotlinx.coroutines.sync.c, Continuation<? super R>, Object> function2 = this.f72442g;
            MutexImpl mutexImpl = MutexImpl.this;
            Continuation<R> o3 = this.f72441f.o();
            final MutexImpl mutexImpl2 = MutexImpl.this;
            b3.a.f(function2, mutexImpl, o3, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$LockSelect$completeResumeLockWaiter$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    MutexImpl.this.d(this.f72446d);
                }
            });
        }

        @Override // kotlinx.coroutines.sync.MutexImpl.a
        @Nullable
        public Object f0() {
            i0 i0Var;
            if (this.f72441f.n()) {
                i0Var = MutexKt.f72464c;
                return i0Var;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return "LockSelect[" + this.f72446d + ", " + this.f72441f + "] for " + MutexImpl.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\t\b¢\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\f\u0010\rJ\u0006\u0010\u0004\u001a\u00020\u0003J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H&R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"kotlinx/coroutines/sync/MutexImpl$a", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/j1;", "", "dispose", "", "f0", "token", "e0", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Object;", "owner", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public abstract class a extends s implements j1 {
        @JvmField
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Object f72446d;

        public a(@Nullable Object obj) {
            this.f72446d = obj;
        }

        @Override // kotlinx.coroutines.j1
        public final void dispose() {
            X();
        }

        public abstract void e0(@NotNull Object obj);

        @Nullable
        public abstract Object f0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Mutex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0007\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"kotlinx/coroutines/sync/MutexImpl$b", "Lkotlinx/coroutines/internal/q;", "", "toString", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Object;", "owner", "<init>", "(Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b extends q {
        @JvmField
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public Object f72448d;

        public b(@NotNull Object obj) {
            this.f72448d = obj;
        }

        @Override // kotlinx.coroutines.internal.s
        @NotNull
        public String toString() {
            return "LockedQueue[" + this.f72448d + ']';
        }
    }

    /* compiled from: Mutex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001:\u0001\bB\u0019\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000f\u0010\u0010J\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016J\u001e\u0010\b\u001a\u00020\u00072\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"kotlinx/coroutines/sync/MutexImpl$c", "Lkotlinx/coroutines/internal/b;", "Lkotlinx/coroutines/internal/d;", "op", "", ai.aD, "failure", "", "a", "Ljava/lang/Object;", "owner", "Lkotlinx/coroutines/sync/MutexImpl;", "b", "Lkotlinx/coroutines/sync/MutexImpl;", "mutex", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class c extends kotlinx.coroutines.internal.b {
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final MutexImpl f72449b;
        @JvmField
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final Object f72450c;

        /* compiled from: Mutex.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0004\b\n\u0010\u000bJ\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R \u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\u0006\u0010\b¨\u0006\f"}, d2 = {"kotlinx/coroutines/sync/MutexImpl$c$a", "Lkotlinx/coroutines/internal/b0;", "", "affected", ai.aD, "Lkotlinx/coroutines/internal/d;", "a", "Lkotlinx/coroutines/internal/d;", "()Lkotlinx/coroutines/internal/d;", "atomicOp", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl$c;Lkotlinx/coroutines/internal/d;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
        /* loaded from: classes5.dex */
        private final class a extends b0 {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final kotlinx.coroutines.internal.d<?> f72451a;

            public a(@NotNull kotlinx.coroutines.internal.d<?> dVar) {
                this.f72451a = dVar;
            }

            @Override // kotlinx.coroutines.internal.b0
            @NotNull
            public kotlinx.coroutines.internal.d<?> a() {
                return this.f72451a;
            }

            @Override // kotlinx.coroutines.internal.b0
            @Nullable
            public Object c(@Nullable Object obj) {
                Object a4 = a().h() ? MutexKt.f72468g : a();
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl");
                MutexImpl.f72436a.compareAndSet((MutexImpl) obj, this, a4);
                return null;
            }
        }

        public c(@NotNull MutexImpl mutexImpl, @Nullable Object obj) {
            this.f72449b = mutexImpl;
            this.f72450c = obj;
        }

        @Override // kotlinx.coroutines.internal.b
        public void a(@NotNull kotlinx.coroutines.internal.d<?> dVar, @Nullable Object obj) {
            kotlinx.coroutines.sync.b bVar;
            if (obj != null) {
                bVar = MutexKt.f72468g;
            } else {
                Object obj2 = this.f72450c;
                bVar = obj2 == null ? MutexKt.f72467f : new kotlinx.coroutines.sync.b(obj2);
            }
            MutexImpl.f72436a.compareAndSet(this.f72449b, dVar, bVar);
        }

        @Override // kotlinx.coroutines.internal.b
        @Nullable
        public Object c(@NotNull kotlinx.coroutines.internal.d<?> dVar) {
            kotlinx.coroutines.sync.b bVar;
            i0 i0Var;
            a aVar = new a(dVar);
            MutexImpl mutexImpl = this.f72449b;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.f72436a;
            bVar = MutexKt.f72468g;
            if (!atomicReferenceFieldUpdater.compareAndSet(mutexImpl, bVar, aVar)) {
                i0Var = MutexKt.f72462a;
                return i0Var;
            }
            return aVar.c(this.f72449b);
        }
    }

    /* compiled from: Mutex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016R\u0016\u0010\f\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"kotlinx/coroutines/sync/MutexImpl$d", "Lkotlinx/coroutines/internal/d;", "Lkotlinx/coroutines/sync/MutexImpl;", "affected", "", "k", "failure", "", "j", "Lkotlinx/coroutines/sync/MutexImpl$b;", "b", "Lkotlinx/coroutines/sync/MutexImpl$b;", "queue", "<init>", "(Lkotlinx/coroutines/sync/MutexImpl$b;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class d extends kotlinx.coroutines.internal.d<MutexImpl> {
        @JvmField
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final b f72453b;

        public d(@NotNull b bVar) {
            this.f72453b = bVar;
        }

        @Override // kotlinx.coroutines.internal.d
        /* renamed from: j */
        public void d(@NotNull MutexImpl mutexImpl, @Nullable Object obj) {
            MutexImpl.f72436a.compareAndSet(mutexImpl, this, obj == null ? MutexKt.f72468g : this.f72453b);
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: k */
        public Object i(@NotNull MutexImpl mutexImpl) {
            i0 i0Var;
            if (this.f72453b.f0()) {
                return null;
            }
            i0Var = MutexKt.f72463b;
            return i0Var;
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/sync/MutexImpl$e", "Lkotlinx/coroutines/internal/s$c;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core", "kotlinx/coroutines/internal/s$f"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class e extends s.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ s f72454d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ MutexImpl f72455e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Object f72456f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(s sVar, MutexImpl mutexImpl, Object obj) {
            super(sVar);
            this.f72454d = sVar;
            this.f72455e = mutexImpl;
            this.f72456f = obj;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: k */
        public Object i(@NotNull s sVar) {
            if (this.f72455e._state == this.f72456f) {
                return null;
            }
            return r.a();
        }
    }

    /* compiled from: LockFreeLinkedList.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/sync/MutexImpl$f", "Lkotlinx/coroutines/internal/s$c;", "Lkotlinx/coroutines/internal/s;", "Lkotlinx/coroutines/internal/Node;", "affected", "", "k", "kotlinx-coroutines-core", "kotlinx/coroutines/internal/s$f"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class f extends s.c {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ s f72457d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ MutexImpl f72458e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Object f72459f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(s sVar, MutexImpl mutexImpl, Object obj) {
            super(sVar);
            this.f72457d = sVar;
            this.f72458e = mutexImpl;
            this.f72459f = obj;
        }

        @Override // kotlinx.coroutines.internal.d
        @Nullable
        /* renamed from: k */
        public Object i(@NotNull s sVar) {
            if (this.f72458e._state == this.f72459f) {
                return null;
            }
            return r.a();
        }
    }

    public MutexImpl(boolean z3) {
        this._state = z3 ? MutexKt.f72467f : MutexKt.f72468g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object i(final Object obj, Continuation<? super Unit> continuation) {
        Continuation intercepted;
        i0 i0Var;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.q b4 = kotlinx.coroutines.s.b(intercepted);
        LockCont lockCont = new LockCont(obj, b4);
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                kotlinx.coroutines.sync.b bVar = (kotlinx.coroutines.sync.b) obj2;
                Object obj3 = bVar.f72494a;
                i0Var = MutexKt.f72466e;
                if (obj3 != i0Var) {
                    f72436a.compareAndSet(this, obj2, new b(bVar.f72494a));
                } else {
                    if (f72436a.compareAndSet(this, obj2, obj == null ? MutexKt.f72467f : new kotlinx.coroutines.sync.b(obj))) {
                        b4.y(Unit.INSTANCE, new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$lockSuspend$2$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                                MutexImpl.this.d(obj);
                            }
                        });
                        break;
                    }
                }
            } else if (obj2 instanceof b) {
                boolean z3 = false;
                if (((b) obj2).f72448d != obj) {
                    s sVar = (s) obj2;
                    e eVar = new e(lockCont, this, obj2);
                    while (true) {
                        int c02 = sVar.Q().c0(lockCont, sVar, eVar);
                        if (c02 == 1) {
                            z3 = true;
                            break;
                        } else if (c02 == 2) {
                            break;
                        }
                    }
                    if (z3) {
                        kotlinx.coroutines.s.c(b4, lockCont);
                        break;
                    }
                } else {
                    throw new IllegalStateException(Intrinsics.stringPlus("Already locked by ", obj).toString());
                }
            } else if (!(obj2 instanceof b0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj2).toString());
            } else {
                ((b0) obj2).c(this);
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

    @Override // kotlinx.coroutines.selects.e
    public <R> void C(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @Nullable Object obj, @NotNull Function2<? super kotlinx.coroutines.sync.c, ? super Continuation<? super R>, ? extends Object> function2) {
        i0 i0Var;
        i0 i0Var2;
        while (!fVar.g()) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                kotlinx.coroutines.sync.b bVar = (kotlinx.coroutines.sync.b) obj2;
                Object obj3 = bVar.f72494a;
                i0Var = MutexKt.f72466e;
                if (obj3 != i0Var) {
                    f72436a.compareAndSet(this, obj2, new b(bVar.f72494a));
                } else {
                    Object s3 = fVar.s(new c(this, obj));
                    if (s3 == null) {
                        b3.b.d(function2, this, fVar.o());
                        return;
                    } else if (s3 == kotlinx.coroutines.selects.g.d()) {
                        return;
                    } else {
                        i0Var2 = MutexKt.f72462a;
                        if (s3 != i0Var2 && s3 != kotlinx.coroutines.internal.c.f72163b) {
                            throw new IllegalStateException(Intrinsics.stringPlus("performAtomicTrySelect(TryLockDesc) returned ", s3).toString());
                        }
                    }
                }
            } else if (obj2 instanceof b) {
                boolean z3 = false;
                if (((b) obj2).f72448d != obj) {
                    LockSelect lockSelect = new LockSelect(obj, fVar, function2);
                    s sVar = (s) obj2;
                    f fVar2 = new f(lockSelect, this, obj2);
                    while (true) {
                        int c02 = sVar.Q().c0(lockSelect, sVar, fVar2);
                        if (c02 == 1) {
                            z3 = true;
                            break;
                        } else if (c02 == 2) {
                            break;
                        }
                    }
                    if (z3) {
                        fVar.j(lockSelect);
                        return;
                    }
                } else {
                    throw new IllegalStateException(Intrinsics.stringPlus("Already locked by ", obj).toString());
                }
            } else if (!(obj2 instanceof b0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj2).toString());
            } else {
                ((b0) obj2).c(this);
            }
        }
    }

    @Override // kotlinx.coroutines.sync.c
    public boolean a(@Nullable Object obj) {
        i0 i0Var;
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                Object obj3 = ((kotlinx.coroutines.sync.b) obj2).f72494a;
                i0Var = MutexKt.f72466e;
                if (obj3 != i0Var) {
                    return false;
                }
                if (f72436a.compareAndSet(this, obj2, obj == null ? MutexKt.f72467f : new kotlinx.coroutines.sync.b(obj))) {
                    return true;
                }
            } else if (obj2 instanceof b) {
                if (((b) obj2).f72448d != obj) {
                    return false;
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Already locked by ", obj).toString());
            } else if (!(obj2 instanceof b0)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj2).toString());
            } else {
                ((b0) obj2).c(this);
            }
        }
    }

    @Override // kotlinx.coroutines.sync.c
    public boolean b() {
        i0 i0Var;
        while (true) {
            Object obj = this._state;
            if (obj instanceof kotlinx.coroutines.sync.b) {
                Object obj2 = ((kotlinx.coroutines.sync.b) obj).f72494a;
                i0Var = MutexKt.f72466e;
                return obj2 != i0Var;
            } else if (obj instanceof b) {
                return true;
            } else {
                if (!(obj instanceof b0)) {
                    throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj).toString());
                }
                ((b0) obj).c(this);
            }
        }
    }

    @Override // kotlinx.coroutines.sync.c
    @Nullable
    public Object c(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (a(obj)) {
            return Unit.INSTANCE;
        }
        Object i2 = i(obj, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return i2 == coroutine_suspended ? i2 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.sync.c
    public void d(@Nullable Object obj) {
        kotlinx.coroutines.sync.b bVar;
        i0 i0Var;
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.b) {
                if (obj == null) {
                    Object obj3 = ((kotlinx.coroutines.sync.b) obj2).f72494a;
                    i0Var = MutexKt.f72466e;
                    if (!(obj3 != i0Var)) {
                        throw new IllegalStateException("Mutex is not locked".toString());
                    }
                } else {
                    kotlinx.coroutines.sync.b bVar2 = (kotlinx.coroutines.sync.b) obj2;
                    if (!(bVar2.f72494a == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + bVar2.f72494a + " but expected " + obj).toString());
                    }
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f72436a;
                bVar = MutexKt.f72468g;
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj2, bVar)) {
                    return;
                }
            } else if (obj2 instanceof b0) {
                ((b0) obj2).c(this);
            } else if (obj2 instanceof b) {
                if (obj != null) {
                    b bVar3 = (b) obj2;
                    if (!(bVar3.f72448d == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + bVar3.f72448d + " but expected " + obj).toString());
                    }
                }
                b bVar4 = (b) obj2;
                s Z = bVar4.Z();
                if (Z == null) {
                    d dVar = new d(bVar4);
                    if (f72436a.compareAndSet(this, obj2, dVar) && dVar.c(this) == null) {
                        return;
                    }
                } else {
                    a aVar = (a) Z;
                    Object f02 = aVar.f0();
                    if (f02 != null) {
                        Object obj4 = aVar.f72446d;
                        if (obj4 == null) {
                            obj4 = MutexKt.f72465d;
                        }
                        bVar4.f72448d = obj4;
                        aVar.e0(f02);
                        return;
                    }
                }
            } else {
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj2).toString());
            }
        }
    }

    @Override // kotlinx.coroutines.sync.c
    public boolean e(@NotNull Object obj) {
        Object obj2 = this._state;
        if (obj2 instanceof kotlinx.coroutines.sync.b) {
            if (((kotlinx.coroutines.sync.b) obj2).f72494a == obj) {
                return true;
            }
        } else if ((obj2 instanceof b) && ((b) obj2).f72448d == obj) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.sync.c
    @NotNull
    public kotlinx.coroutines.selects.e<Object, kotlinx.coroutines.sync.c> f() {
        return this;
    }

    public final boolean h() {
        Object obj = this._state;
        return (obj instanceof b) && ((b) obj).f0();
    }

    @NotNull
    public String toString() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof kotlinx.coroutines.sync.b) {
                return "Mutex[" + ((kotlinx.coroutines.sync.b) obj).f72494a + ']';
            } else if (!(obj instanceof b0)) {
                if (obj instanceof b) {
                    return "Mutex[" + ((b) obj).f72448d + ']';
                }
                throw new IllegalStateException(Intrinsics.stringPlus("Illegal state ", obj).toString());
            } else {
                ((b0) obj).c(this);
            }
        }
    }
}
