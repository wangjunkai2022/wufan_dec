package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00068\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/u;", "Lkotlinx/coroutines/d2;", "", "cause", "", "e0", "Lkotlinx/coroutines/q;", "e", "Lkotlinx/coroutines/q;", "child", "<init>", "(Lkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class u extends d2 {
    @JvmField
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final q<?> f72517e;

    public u(@NotNull q<?> qVar) {
        this.f72517e = qVar;
    }

    @Override // kotlinx.coroutines.j0
    public void e0(@Nullable Throwable th) {
        q<?> qVar = this.f72517e;
        qVar.G(qVar.w(f0()));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e0(th);
        return Unit.INSTANCE;
    }
}
