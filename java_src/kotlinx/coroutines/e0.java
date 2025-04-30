package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletableDeferred.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a.\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u001a!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"T", "Lkotlinx/coroutines/c0;", "Lkotlin/Result;", "result", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "(Lkotlinx/coroutines/c0;Ljava/lang/Object;)Z", "Lkotlinx/coroutines/c2;", "parent", "b", "value", "a", "(Ljava/lang/Object;)Lkotlinx/coroutines/c0;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class e0 {
    @NotNull
    public static final <T> c0<T> a(T t3) {
        d0 d0Var = new d0(null);
        d0Var.x(t3);
        return d0Var;
    }

    @NotNull
    public static final <T> c0<T> b(@Nullable c2 c2Var) {
        return new d0(c2Var);
    }

    public static /* synthetic */ c0 c(c2 c2Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            c2Var = null;
        }
        return b(c2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean d(@NotNull c0<T> c0Var, @NotNull Object obj) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        return m27exceptionOrNullimpl == null ? c0Var.x(obj) : c0Var.d(m27exceptionOrNullimpl);
    }
}
