package kotlinx.coroutines.debug.internal;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DebugCoroutineInfo.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010'\u001a\u00020&\u0012\u0006\u0010\u001b\u001a\u00020\u0016¢\u0006\u0004\b(\u0010)R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b8G@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u000b\u001a\u0004\b\u0014\u0010\rR\u0019\u0010\u001b\u001a\u00020\u00168\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001b\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u001d\u001a\u0004\b\u0017\u0010\u001eR\u0019\u0010$\u001a\u00020 8\u0006@\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u0003\u0010#R\u001b\u0010%\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001d\u001a\u0004\b!\u0010\u001e¨\u0006*"}, d2 = {"Lkotlinx/coroutines/debug/internal/b;", "", "", "e", "Ljava/lang/String;", "f", "()Ljava/lang/String;", NoticeTopAnimActivityDialog_.f34402n, "", "Ljava/lang/StackTraceElement;", "h", "Ljava/util/List;", com.sdk.a.g.f56552a, "()Ljava/util/List;", "lastObservedStackTrace", "Ljava/lang/Thread;", "Ljava/lang/Thread;", com.xinzhu.overmind.utils.helpers.d.f64708a, "()Ljava/lang/Thread;", "lastObservedThread", "b", "creationStackTrace", "Lkotlin/coroutines/CoroutineContext;", "a", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "creationStackBottom", "", ai.aD, "J", "()J", "sequenceNumber", "lastObservedFrame", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "source", "<init>", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@PublishedApi
/* loaded from: classes5.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f71176a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineStackFrame f71177b;

    /* renamed from: c  reason: collision with root package name */
    private final long f71178c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<StackTraceElement> f71179d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f71180e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final Thread f71181f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final CoroutineStackFrame f71182g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final List<StackTraceElement> f71183h;

    public b(@NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl, @NotNull CoroutineContext coroutineContext) {
        this.f71176a = coroutineContext;
        this.f71177b = debugCoroutineInfoImpl.c();
        this.f71178c = debugCoroutineInfoImpl.f71131b;
        this.f71179d = debugCoroutineInfoImpl.d();
        this.f71180e = debugCoroutineInfoImpl.f();
        this.f71181f = debugCoroutineInfoImpl.f71134e;
        this.f71182g = debugCoroutineInfoImpl.e();
        this.f71183h = debugCoroutineInfoImpl.g();
    }

    @Nullable
    public final CoroutineStackFrame a() {
        return this.f71177b;
    }

    @NotNull
    public final List<StackTraceElement> b() {
        return this.f71179d;
    }

    @Nullable
    public final CoroutineStackFrame c() {
        return this.f71182g;
    }

    @Nullable
    public final Thread d() {
        return this.f71181f;
    }

    public final long e() {
        return this.f71178c;
    }

    @NotNull
    public final String f() {
        return this.f71180e;
    }

    @JvmName(name = "lastObservedStackTrace")
    @NotNull
    public final List<StackTraceElement> g() {
        return this.f71183h;
    }

    @NotNull
    public final CoroutineContext getContext() {
        return this.f71176a;
    }
}
