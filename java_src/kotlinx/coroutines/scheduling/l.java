package kotlinx.coroutines.scheduling;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.k0;
import kotlinx.coroutines.internal.m0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Tasks.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\"\u0016\u0010\u0003\u001a\u00020\u00008\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0016\u0010\u0007\u001a\u00020\u00048\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006\"\u0016\u0010\u000b\u001a\u00020\b8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\t\u0010\n\"\u0016\u0010\r\u001a\u00020\b8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\n\"\u0016\u0010\u0011\u001a\u00020\u000e8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\"\u0016\u0010\u0013\u001a\u00020\u000e8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010\"\u0016\u0010\u0015\u001a\u00020\u000e8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0010\"\u0016\u0010\u0017\u001a\u00020\u00048\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0006\"\u0016\u0010\u0019\u001a\u00020\u000e8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0010\"\u001b\u0010\u001d\u001a\u00020\u001b*\u00020\u001a8À\u0002@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\u001c\"\u0016\u0010\u001f\u001a\u00020\u000e8\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0010¨\u0006 "}, d2 = {"Lkotlinx/coroutines/scheduling/h;", "h", "Lkotlinx/coroutines/scheduling/h;", "schedulerTimeSource", "", com.sdk.a.g.f56552a, "J", "IDLE_WORKER_KEEP_ALIVE_NS", "", "b", "Ljava/lang/String;", "DEFAULT_SCHEDULER_NAME", "a", "DEFAULT_DISPATCHER_NAME", "", com.xinzhu.overmind.utils.helpers.d.f64708a, "I", "BLOCKING_DEFAULT_PARALLELISM", "e", "CORE_POOL_SIZE", "j", "TASK_PROBABLY_BLOCKING", ai.aD, "WORK_STEALING_TIME_RESOLUTION_NS", "f", "MAX_POOL_SIZE", "Lkotlinx/coroutines/scheduling/i;", "", "(Lkotlinx/coroutines/scheduling/i;)Z", "isBlocking", ai.aA, "TASK_NON_BLOCKING", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final String f72381a = "Dispatchers.Default";
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final String f72382b = "DefaultDispatcher";
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public static final long f72383c;
    @JvmField

    /* renamed from: d  reason: collision with root package name */
    public static final int f72384d;
    @JvmField

    /* renamed from: e  reason: collision with root package name */
    public static final int f72385e;
    @JvmField

    /* renamed from: f  reason: collision with root package name */
    public static final int f72386f;
    @JvmField

    /* renamed from: g  reason: collision with root package name */
    public static final long f72387g;
    @JvmField
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static h f72388h = null;

    /* renamed from: i  reason: collision with root package name */
    public static final int f72389i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f72390j = 1;

    static {
        long e4;
        int d4;
        int coerceAtLeast;
        int d5;
        int coerceIn;
        int d6;
        long e5;
        e4 = m0.e("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, null);
        f72383c = e4;
        d4 = m0.d("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, null);
        f72384d = d4;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(k0.a(), 2);
        d5 = m0.d("kotlinx.coroutines.scheduler.core.pool.size", coerceAtLeast, 1, 0, 8, null);
        f72385e = d5;
        coerceIn = RangesKt___RangesKt.coerceIn(k0.a() * 128, d5, (int) CoroutineScheduler.f72343v);
        d6 = m0.d("kotlinx.coroutines.scheduler.max.pool.size", coerceIn, 0, CoroutineScheduler.f72343v, 4, null);
        f72386f = d6;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        e5 = m0.e("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 0L, 0L, 12, null);
        f72387g = timeUnit.toNanos(e5);
        f72388h = f.f72375a;
    }

    public static final boolean a(@NotNull i iVar) {
        return iVar.f72379b.r() == 1;
    }
}
