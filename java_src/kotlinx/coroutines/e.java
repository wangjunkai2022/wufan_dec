package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Await.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0002\b\u0004B\u001d\u0012\u0014\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005R$\u0010\n\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/e;", "T", "", "", "b", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lkotlinx/coroutines/z0;", "a", "[Lkotlinx/coroutines/z0;", "deferreds", "<init>", "([Lkotlinx/coroutines/z0;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class e<T> {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ AtomicIntegerFieldUpdater f71191b = AtomicIntegerFieldUpdater.newUpdater(e.class, "notCompletedCount");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final z0<T>[] f71192a;
    @NotNull
    volatile /* synthetic */ int notCompletedCount;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Await.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R<\u0010\u001b\u001a\u000e\u0018\u00010\u0014R\b\u0012\u0004\u0012\u00028\u00000\u00152\u0012\u0010\u0016\u001a\u000e\u0018\u00010\u0014R\b\u0012\u0004\u0012\u00028\u00000\u00158F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"kotlinx/coroutines/e$a", "Lkotlinx/coroutines/i2;", "", "cause", "", "e0", "(Ljava/lang/Throwable;)V", "Lkotlinx/coroutines/p;", "", "e", "Lkotlinx/coroutines/p;", "continuation", "Lkotlinx/coroutines/j1;", "f", "Lkotlinx/coroutines/j1;", "i0", "()Lkotlinx/coroutines/j1;", "k0", "(Lkotlinx/coroutines/j1;)V", "handle", "Lkotlinx/coroutines/e$b;", "Lkotlinx/coroutines/e;", "value", "h0", "()Lkotlinx/coroutines/e$b;", "j0", "(Lkotlinx/coroutines/e$b;)V", "disposer", "<init>", "(Lkotlinx/coroutines/e;Lkotlinx/coroutines/p;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class a extends i2 {
        @NotNull
        private volatile /* synthetic */ Object _disposer = null;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final p<List<? extends T>> f71193e;

        /* renamed from: f  reason: collision with root package name */
        public j1 f71194f;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull p<? super List<? extends T>> pVar) {
            this.f71193e = pVar;
        }

        @Override // kotlinx.coroutines.j0
        public void e0(@Nullable Throwable th) {
            if (th != null) {
                Object p3 = this.f71193e.p(th);
                if (p3 != null) {
                    this.f71193e.V(p3);
                    e<T>.b h02 = h0();
                    if (h02 == null) {
                        return;
                    }
                    h02.b();
                    return;
                }
                return;
            }
            if (e.f71191b.decrementAndGet(e.this) == 0) {
                p<List<? extends T>> pVar = this.f71193e;
                z0[] z0VarArr = ((e) e.this).f71192a;
                ArrayList arrayList = new ArrayList(z0VarArr.length);
                for (z0 z0Var : z0VarArr) {
                    arrayList.add(z0Var.e());
                }
                Result.Companion companion = Result.Companion;
                pVar.resumeWith(Result.m24constructorimpl(arrayList));
            }
        }

        @Nullable
        public final e<T>.b h0() {
            return (b) this._disposer;
        }

        @NotNull
        public final j1 i0() {
            j1 j1Var = this.f71194f;
            if (j1Var != null) {
                return j1Var;
            }
            Intrinsics.throwUninitializedPropertyAccessException("handle");
            throw null;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            e0(th);
            return Unit.INSTANCE;
        }

        public final void j0(@Nullable e<T>.b bVar) {
            this._disposer = bVar;
        }

        public final void k0(@NotNull j1 j1Var) {
            this.f71194f = j1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Await.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0010\r\u001a\u0012\u0012\u000e\u0012\f0\nR\b\u0012\u0004\u0012\u00028\u00000\u000b0\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0013\u0010\u0006\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016R&\u0010\r\u001a\u0012\u0012\u000e\u0012\f0\nR\b\u0012\u0004\u0012\u00028\u00000\u000b0\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\f¨\u0006\u0010"}, d2 = {"kotlinx/coroutines/e$b", "Lkotlinx/coroutines/n;", "", "b", "", "cause", "a", "", "toString", "", "Lkotlinx/coroutines/e$a;", "Lkotlinx/coroutines/e;", "[Lkotlinx/coroutines/e$a;", "nodes", "<init>", "(Lkotlinx/coroutines/e;[Lkotlinx/coroutines/e$a;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public final class b extends n {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final e<T>.a[] f71196a;

        public b(@NotNull e<T>.a[] aVarArr) {
            this.f71196a = aVarArr;
        }

        @Override // kotlinx.coroutines.o
        public void a(@Nullable Throwable th) {
            b();
        }

        public final void b() {
            for (e<T>.a aVar : this.f71196a) {
                aVar.i0().dispose();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            a(th);
            return Unit.INSTANCE;
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f71196a + ']';
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@NotNull z0<? extends T>[] z0VarArr) {
        this.f71192a = z0VarArr;
        this.notCompletedCount = z0VarArr.length;
    }

    @Nullable
    public final Object b(@NotNull Continuation<? super List<? extends T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        q qVar = new q(intercepted, 1);
        qVar.N();
        int length = this.f71192a.length;
        a[] aVarArr = new a[length];
        for (int i2 = 0; i2 < length; i2++) {
            z0 z0Var = this.f71192a[i2];
            z0Var.start();
            a aVar = new a(qVar);
            aVar.k0(z0Var.u(aVar));
            Unit unit = Unit.INSTANCE;
            aVarArr[i2] = aVar;
        }
        e<T>.b bVar = new b(aVarArr);
        for (int i4 = 0; i4 < length; i4++) {
            aVarArr[i4].j0(bVar);
        }
        if (qVar.isCompleted()) {
            bVar.b();
        } else {
            qVar.l(bVar);
        }
        Object x3 = qVar.x();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (x3 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return x3;
    }
}
