package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletableDeferred.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u0011\u0012\b\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\"\u0010#J\u000f\u0010\u0005\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJJ\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0001\u0010\t2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\n2\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fH\u0016ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017H\u0016R\u0016\u0010\u001c\u001a\u00020\u00148P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"Lkotlinx/coroutines/d0;", "T", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/c0;", "Lkotlinx/coroutines/selects/d;", "e", "()Ljava/lang/Object;", "n", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "f", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function2;)V", "value", "", "x", "(Ljava/lang/Object;)Z", "", "exception", com.xinzhu.overmind.utils.helpers.d.f64708a, "A0", "()Z", "onCancelComplete", "D", "()Lkotlinx/coroutines/selects/d;", "onAwait", "Lkotlinx/coroutines/c2;", "parent", "<init>", "(Lkotlinx/coroutines/c2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class d0<T> extends JobSupport implements c0<T>, kotlinx.coroutines.selects.d<T> {
    public d0(@Nullable c2 c2Var) {
        super(true);
        G0(c2Var);
    }

    @Override // kotlinx.coroutines.JobSupport
    public boolean A0() {
        return true;
    }

    @Override // kotlinx.coroutines.z0
    @NotNull
    public kotlinx.coroutines.selects.d<T> D() {
        return this;
    }

    @Override // kotlinx.coroutines.c0
    public boolean d(@NotNull Throwable th) {
        return O0(new h0(th, false, 2, null));
    }

    @Override // kotlinx.coroutines.z0
    public T e() {
        return (T) u0();
    }

    @Override // kotlinx.coroutines.selects.d
    public <R> void f(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        b1(fVar, function2);
    }

    @Override // kotlinx.coroutines.z0
    @Nullable
    public Object n(@NotNull Continuation<? super T> continuation) {
        return d0(continuation);
    }

    @Override // kotlinx.coroutines.c0
    public boolean x(T t3) {
        return O0(t3);
    }
}
