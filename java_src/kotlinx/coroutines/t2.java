package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/t2;", "T", "Lkotlinx/coroutines/i2;", "", "cause", "", "e0", "Lkotlinx/coroutines/q;", "e", "Lkotlinx/coroutines/q;", "continuation", "<init>", "(Lkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class t2<T> extends i2 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final q<T> f72498e;

    /* JADX WARN: Multi-variable type inference failed */
    public t2(@NotNull q<? super T> qVar) {
        this.f72498e = qVar;
    }

    @Override // kotlinx.coroutines.j0
    public void e0(@Nullable Throwable th) {
        Object D0 = f0().D0();
        if (v0.b() && !(!(D0 instanceof x1))) {
            throw new AssertionError();
        }
        if (D0 instanceof h0) {
            q<T> qVar = this.f72498e;
            Throwable th2 = ((h0) D0).f72127a;
            Result.Companion companion = Result.Companion;
            qVar.resumeWith(Result.m24constructorimpl(ResultKt.createFailure(th2)));
            return;
        }
        q<T> qVar2 = this.f72498e;
        Object o3 = j2.o(D0);
        Result.Companion companion2 = Result.Companion;
        qVar2.resumeWith(Result.m24constructorimpl(o3));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e0(th);
        return Unit.INSTANCE;
    }
}
