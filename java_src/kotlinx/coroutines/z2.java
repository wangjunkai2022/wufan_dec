package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B6\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002R/\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00078\u0002@\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/z2;", "R", "Lkotlinx/coroutines/i2;", "", "cause", "", "e0", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "f", "Lkotlin/jvm/functions/Function1;", "block", "Lkotlinx/coroutines/selects/f;", "e", "Lkotlinx/coroutines/selects/f;", "select", "<init>", "(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
final class z2<R> extends i2 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final kotlinx.coroutines.selects.f<R> f72549e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Function1<Continuation<? super R>, Object> f72550f;

    /* JADX WARN: Multi-variable type inference failed */
    public z2(@NotNull kotlinx.coroutines.selects.f<? super R> fVar, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        this.f72549e = fVar;
        this.f72550f = function1;
    }

    @Override // kotlinx.coroutines.j0
    public void e0(@Nullable Throwable th) {
        if (this.f72549e.n()) {
            b3.a.e(this.f72550f, this.f72549e.o());
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e0(th);
        return Unit.INSTANCE;
    }
}
