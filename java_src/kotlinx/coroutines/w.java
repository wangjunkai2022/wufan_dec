package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0016\u0010\f\u001a\u00020\t8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/w;", "Lkotlinx/coroutines/d2;", "Lkotlinx/coroutines/v;", "", "cause", "", "e0", "", "x", "Lkotlinx/coroutines/x;", "e", "Lkotlinx/coroutines/x;", "childJob", "Lkotlinx/coroutines/c2;", "getParent", "()Lkotlinx/coroutines/c2;", "parent", "<init>", "(Lkotlinx/coroutines/x;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class w extends d2 implements v {
    @JvmField
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final x f72531e;

    public w(@NotNull x xVar) {
        this.f72531e = xVar;
    }

    @Override // kotlinx.coroutines.j0
    public void e0(@Nullable Throwable th) {
        this.f72531e.o(f0());
    }

    @Override // kotlinx.coroutines.v
    @NotNull
    public c2 getParent() {
        return f0();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e0(th);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.v
    public boolean x(@NotNull Throwable th) {
        return f0().m0(th);
    }
}
