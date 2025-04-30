package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/u2;", "Lkotlinx/coroutines/i2;", "", "cause", "", "e0", "Lkotlin/coroutines/Continuation;", "e", "Lkotlin/coroutines/Continuation;", "continuation", "<init>", "(Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class u2 extends i2 {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Continuation<Unit> f72518e;

    /* JADX WARN: Multi-variable type inference failed */
    public u2(@NotNull Continuation<? super Unit> continuation) {
        this.f72518e = continuation;
    }

    @Override // kotlinx.coroutines.j0
    public void e0(@Nullable Throwable th) {
        Continuation<Unit> continuation = this.f72518e;
        Unit unit = Unit.INSTANCE;
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m24constructorimpl(unit));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e0(th);
        return Unit.INSTANCE;
    }
}
