package kotlinx.coroutines.flow;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.v0;
import org.jetbrains.annotations.NotNull;
/* compiled from: StateFlow.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000B\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a4\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b¢\u0006\u0004\b\u0007\u0010\b\u001a4\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b¢\u0006\u0004\b\t\u0010\b\u001a-\u0010\u000b\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00000\u0005H\u0086\b\u001a\u001a\u0010\u000e\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\f0\u00022\u0006\u0010\r\u001a\u00020\fH\u0000\u001a6\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0000\"\u001c\u0010\u001b\u001a\u00020\u00178\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0018\u0012\u0004\b\u0019\u0010\u001a\"\u001c\u0010\u001e\u001a\u00020\u00178\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u0018\u0012\u0004\b\u001d\u0010\u001a¨\u0006\u001f"}, d2 = {"T", "value", "Lkotlinx/coroutines/flow/k;", "a", "(Ljava/lang/Object;)Lkotlinx/coroutines/flow/k;", "Lkotlin/Function1;", "function", ai.aA, "(Lkotlinx/coroutines/flow/k;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "e", "", "update", "", "delta", "h", "Lkotlinx/coroutines/flow/v;", "Lkotlin/coroutines/CoroutineContext;", "context", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/f;", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlinx/coroutines/internal/i0;", "Lkotlinx/coroutines/internal/i0;", "getNONE$annotations", "()V", "NONE", "b", "getPENDING$annotations", "PENDING", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class w {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final i0 f72106a = new i0("NONE");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i0 f72107b = new i0("PENDING");

    @NotNull
    public static final <T> k<T> a(T t3) {
        if (t3 == null) {
            t3 = (T) kotlinx.coroutines.flow.internal.m.f72084a;
        }
        return new StateFlowImpl(t3);
    }

    @NotNull
    public static final <T> f<T> d(@NotNull v<? extends T> vVar, @NotNull CoroutineContext coroutineContext, int i2, @NotNull BufferOverflow bufferOverflow) {
        boolean z3 = true;
        if (v0.b()) {
            if (!(i2 != -1)) {
                throw new AssertionError();
            }
        }
        return ((((i2 < 0 || i2 > 1) ? false : false) || i2 == -2) && bufferOverflow == BufferOverflow.DROP_OLDEST) ? vVar : p.e(vVar, coroutineContext, i2, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [T, java.lang.Object] */
    public static final <T> T e(@NotNull k<T> kVar, @NotNull Function1<? super T, ? extends T> function1) {
        ?? r02;
        do {
            r02 = (Object) kVar.getValue();
        } while (!kVar.compareAndSet(r02, function1.invoke(r02)));
        return r02;
    }

    private static /* synthetic */ void f() {
    }

    private static /* synthetic */ void g() {
    }

    public static final void h(@NotNull k<Integer> kVar, int i2) {
        Integer value;
        do {
            value = kVar.getValue();
        } while (!kVar.compareAndSet(value, Integer.valueOf(value.intValue() + i2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T i(@NotNull k<T> kVar, @NotNull Function1<? super T, ? extends T> function1) {
        Object obj;
        T invoke;
        do {
            obj = (Object) kVar.getValue();
            invoke = function1.invoke(obj);
        } while (!kVar.compareAndSet(obj, invoke));
        return invoke;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> void update(@NotNull k<T> kVar, @NotNull Function1<? super T, ? extends T> function1) {
        Object obj;
        do {
            obj = (Object) kVar.getValue();
        } while (!kVar.compareAndSet(obj, function1.invoke(obj)));
    }
}
