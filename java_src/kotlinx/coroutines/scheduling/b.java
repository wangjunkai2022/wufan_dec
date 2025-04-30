package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.h1;
import kotlinx.coroutines.internal.k0;
import kotlinx.coroutines.internal.m0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dispatcher.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0007R\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/scheduling/b;", "Lkotlinx/coroutines/scheduling/c;", "", "close", "", "toString", "L", "Lkotlinx/coroutines/CoroutineDispatcher;", "h", "Lkotlinx/coroutines/CoroutineDispatcher;", "K", "()Lkotlinx/coroutines/CoroutineDispatcher;", "IO", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class b extends c {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final b f72362g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final CoroutineDispatcher f72363h;

    static {
        int coerceAtLeast;
        int d4;
        b bVar = new b();
        f72362g = bVar;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(64, k0.a());
        d4 = m0.d(h1.f72128a, coerceAtLeast, 0, 0, 12, null);
        f72363h = new e(bVar, d4, "Dispatchers.IO", 1);
    }

    private b() {
        super(0, 0, null, 7, null);
    }

    @NotNull
    public final CoroutineDispatcher K() {
        return f72363h;
    }

    @InternalCoroutinesApi
    @NotNull
    public final String L() {
        return super.toString();
    }

    @Override // kotlinx.coroutines.scheduling.c, kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.scheduling.c, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return l.f72381a;
    }
}
