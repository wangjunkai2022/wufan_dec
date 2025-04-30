package kotlinx.coroutines.debug.internal;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import java.io.Serializable;
import java.lang.Thread;
import java.util.List;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.s0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DebuggerInfo.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006R\u0019\u0010\u0016\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0014\u001a\u0004\b\f\u0010\u0015R\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0017\u0010\u0019R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006R\u001b\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006¨\u0006$"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "Ljava/io/Serializable;", "", "f", "Ljava/lang/String;", com.xinzhu.overmind.utils.helpers.d.f64708a, "()Ljava/lang/String;", "lastObservedThreadName", "e", "lastObservedThreadState", "", "Ljava/lang/StackTraceElement;", com.sdk.a.g.f56552a, "Ljava/util/List;", ai.aD, "()Ljava/util/List;", "lastObservedStackTrace", "h", NoticeTopAnimActivityDialog_.f34402n, "", "J", "()J", "sequenceNumber", "a", "Ljava/lang/Long;", "()Ljava/lang/Long;", "coroutineId", "name", "b", "dispatcher", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "source", "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
@PublishedApi
/* loaded from: classes5.dex */
public final class DebuggerInfo implements Serializable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Long f71163a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f71164b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f71165c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f71166d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f71167e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f71168f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final List<StackTraceElement> f71169g;

    /* renamed from: h  reason: collision with root package name */
    private final long f71170h;

    public DebuggerInfo(@NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl, @NotNull CoroutineContext coroutineContext) {
        Thread.State state;
        r0 r0Var = (r0) coroutineContext.get(r0.f72316b);
        this.f71163a = r0Var == null ? null : Long.valueOf(r0Var.C());
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        this.f71164b = continuationInterceptor == null ? null : continuationInterceptor.toString();
        s0 s0Var = (s0) coroutineContext.get(s0.f72326b);
        this.f71165c = s0Var == null ? null : s0Var.C();
        this.f71166d = debugCoroutineInfoImpl.f();
        Thread thread = debugCoroutineInfoImpl.f71134e;
        this.f71167e = (thread == null || (state = thread.getState()) == null) ? null : state.toString();
        Thread thread2 = debugCoroutineInfoImpl.f71134e;
        this.f71168f = thread2 != null ? thread2.getName() : null;
        this.f71169g = debugCoroutineInfoImpl.g();
        this.f71170h = debugCoroutineInfoImpl.f71131b;
    }

    @Nullable
    public final Long a() {
        return this.f71163a;
    }

    @Nullable
    public final String b() {
        return this.f71164b;
    }

    @NotNull
    public final List<StackTraceElement> c() {
        return this.f71169g;
    }

    @Nullable
    public final String d() {
        return this.f71168f;
    }

    @Nullable
    public final String e() {
        return this.f71167e;
    }

    @Nullable
    public final String f() {
        return this.f71165c;
    }

    public final long g() {
        return this.f71170h;
    }

    @NotNull
    public final String h() {
        return this.f71166d;
    }
}
