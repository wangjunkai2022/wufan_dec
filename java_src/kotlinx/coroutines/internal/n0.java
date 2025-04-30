package kotlinx.coroutines.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0019\u001a\u00028\u0000\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\u0001\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0001\u0010\u0005J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\f\u001a\u00020\u00032\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH\u0016J*\u0010\u000f\u001a\u0004\u0018\u00018\u0001\"\b\b\u0001\u0010\u000e*\u00020\r2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\nH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0012\u001a\u00020\u0011H\u0016R\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00028\u00008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R \u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lkotlinx/coroutines/internal/n0;", "T", "Lkotlinx/coroutines/e3;", "Lkotlin/coroutines/CoroutineContext;", "context", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "oldState", "", "w", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "minusKey", "Lkotlin/coroutines/CoroutineContext$Element;", "E", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "", "toString", "Ljava/lang/ThreadLocal;", "b", "Ljava/lang/ThreadLocal;", "threadLocal", "a", "Ljava/lang/Object;", "value", ai.aD, "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "<init>", "(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class n0<T> implements e3<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f72193a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ThreadLocal<T> f72194b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final CoroutineContext.Key<?> f72195c;

    public n0(T t3, @NotNull ThreadLocal<T> threadLocal) {
        this.f72193a = t3;
        this.f72194b = threadLocal;
        this.f72195c = new o0(threadLocal);
    }

    @Override // kotlinx.coroutines.e3
    public T T(@NotNull CoroutineContext coroutineContext) {
        T t3 = this.f72194b.get();
        this.f72194b.set(this.f72193a);
        return t3;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r3, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) e3.a.a(this, r3, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        if (Intrinsics.areEqual(getKey(), key)) {
            return this;
        }
        return null;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @NotNull
    public CoroutineContext.Key<?> getKey() {
        return this.f72195c;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return Intrinsics.areEqual(getKey(), key) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return e3.a.d(this, coroutineContext);
    }

    @NotNull
    public String toString() {
        return "ThreadLocal(value=" + this.f72193a + ", threadLocal = " + this.f72194b + ')';
    }

    @Override // kotlinx.coroutines.e3
    public void w(@NotNull CoroutineContext coroutineContext, T t3) {
        this.f72194b.set(t3);
    }
}
