package kotlinx.coroutines.internal;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadContext.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0081\b\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0013\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003HÂ\u0003J\u0017\u0010\u0006\u001a\u00020\u00002\f\b\u0002\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0003HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u001a\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/internal/o0;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/internal/n0;", "Ljava/lang/ThreadLocal;", "a", "threadLocal", "b", "", "toString", "", TTDownloadField.TT_HASHCODE, "", "other", "", "equals", "Ljava/lang/ThreadLocal;", "<init>", "(Ljava/lang/ThreadLocal;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@PublishedApi
/* loaded from: classes5.dex */
public final class o0 implements CoroutineContext.Key<n0<?>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ThreadLocal<?> f72196a;

    public o0(@NotNull ThreadLocal<?> threadLocal) {
        this.f72196a = threadLocal;
    }

    private final ThreadLocal<?> a() {
        return this.f72196a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ o0 c(o0 o0Var, ThreadLocal threadLocal, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            threadLocal = o0Var.f72196a;
        }
        return o0Var.b(threadLocal);
    }

    @NotNull
    public final o0 b(@NotNull ThreadLocal<?> threadLocal) {
        return new o0(threadLocal);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o0) && Intrinsics.areEqual(this.f72196a, ((o0) obj).f72196a);
    }

    public int hashCode() {
        return this.f72196a.hashCode();
    }

    @NotNull
    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f72196a + ')';
    }
}
