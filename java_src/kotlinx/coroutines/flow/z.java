package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Emitters.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/flow/z;", "Lkotlinx/coroutines/flow/g;", "", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a", "Ljava/lang/Throwable;", "e", "<init>", "(Ljava/lang/Throwable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class z implements g<Object> {
    @JvmField
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f72111a;

    public z(@NotNull Throwable th) {
        this.f72111a = th;
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object emit(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        throw this.f72111a;
    }
}
