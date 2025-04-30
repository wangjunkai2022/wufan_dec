package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractTimeSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\t\u0010\u0001\u001a\u00020\u0000H\u0081\b\u001a\t\u0010\u0002\u001a\u00020\u0000H\u0081\b\u001a\u0019\u0010\u0006\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0081\b\u001a\t\u0010\b\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\t\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\n\u001a\u00020\u0007H\u0081\b\u001a\t\u0010\u000b\u001a\u00020\u0007H\u0081\b\u001a\u0019\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0000H\u0081\b\u001a\u0011\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0081\b\"$\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0001\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"", "a", ai.aD, "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "k", "", com.sdk.a.g.f56552a, "h", "e", "j", "", "blocker", "nanos", com.xinzhu.overmind.utils.helpers.d.f64708a, "Ljava/lang/Thread;", "thread", ai.aA, "Lkotlinx/coroutines/b;", "Lkotlinx/coroutines/b;", "b", "()Lkotlinx/coroutines/b;", "f", "(Lkotlinx/coroutines/b;)V", "timeSource", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static b f70766a;

    @InlineOnly
    private static final long a() {
        b b4 = b();
        return b4 == null ? System.currentTimeMillis() : b4.a();
    }

    @Nullable
    public static final b b() {
        return f70766a;
    }

    @InlineOnly
    private static final long c() {
        b b4 = b();
        return b4 == null ? System.nanoTime() : b4.b();
    }

    @InlineOnly
    private static final void d(Object obj, long j4) {
        b b4 = b();
        if (b4 == null) {
            LockSupport.parkNanos(obj, j4);
        } else {
            b4.c(obj, j4);
        }
    }

    @InlineOnly
    private static final void e() {
        b b4 = b();
        if (b4 == null) {
            return;
        }
        b4.d();
    }

    public static final void f(@Nullable b bVar) {
        f70766a = bVar;
    }

    @InlineOnly
    private static final void g() {
        b b4 = b();
        if (b4 == null) {
            return;
        }
        b4.e();
    }

    @InlineOnly
    private static final void h() {
        b b4 = b();
        if (b4 == null) {
            return;
        }
        b4.f();
    }

    @InlineOnly
    private static final void i(Thread thread) {
        b b4 = b();
        if (b4 == null) {
            LockSupport.unpark(thread);
        } else {
            b4.g(thread);
        }
    }

    @InlineOnly
    private static final void j() {
        b b4 = b();
        if (b4 == null) {
            return;
        }
        b4.h();
    }

    @InlineOnly
    private static final Runnable k(Runnable runnable) {
        b b4 = b();
        return b4 == null ? runnable : b4.i(runnable);
    }
}
