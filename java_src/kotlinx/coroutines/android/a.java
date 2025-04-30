package kotlinx.coroutines.android;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.m2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HandlerDispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00008&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\u0082\u0001\u0001\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/android/a;", "Lkotlinx/coroutines/m2;", "Lkotlinx/coroutines/b1;", "B", "()Lkotlinx/coroutines/android/a;", "immediate", "<init>", "()V", "Lkotlinx/coroutines/android/HandlerContext;", "kotlinx-coroutines-android"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public abstract class a extends m2 implements b1 {
    private a() {
    }

    public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract a B();

    @NotNull
    public j1 p(long j4, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return b1.a.b(this, j4, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.b1
    @Nullable
    public Object v(long j4, @NotNull Continuation<? super Unit> continuation) {
        return b1.a.a(this, j4, continuation);
    }
}
