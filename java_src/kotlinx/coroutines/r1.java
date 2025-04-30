package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventLoop.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0000\"\u001c\u0010\n\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u0012\u0004\b\b\u0010\t\"\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\f\"\u001c\u0010\u0010\u001a\u00020\u00058\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0007\u0012\u0004\b\u000f\u0010\t\"\u0016\u0010\u0011\u001a\u00020\u000b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\f\"\u0016\u0010\u0014\u001a\u00020\u00008\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\"\u0016\u0010\u0016\u001a\u00020\u000b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\f\"\u0016\u0010\u0018\u001a\u00020\u00008\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0013\"\u0016\u0010\u001a\u001a\u00020\u00008\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0013*\u001e\b\u0002\u0010\u001d\u001a\u0004\b\u0000\u0010\u001b\"\b\u0012\u0004\u0012\u00028\u00000\u001c2\b\u0012\u0004\u0012\u00028\u00000\u001c¨\u0006\u001e"}, d2 = {"", "timeMillis", com.xinzhu.overmind.utils.helpers.d.f64708a, "timeNanos", ai.aD, "Lkotlinx/coroutines/internal/i0;", "h", "Lkotlinx/coroutines/internal/i0;", "getCLOSED_EMPTY$annotations", "()V", "CLOSED_EMPTY", "", "I", "SCHEDULE_COMPLETED", "a", "getDISPOSED_TASK$annotations", "DISPOSED_TASK", "SCHEDULE_DISPOSED", "f", "J", "MAX_MS", "b", "SCHEDULE_OK", "e", "MS_TO_NS", com.sdk.a.g.f56552a, "MAX_DELAY_NS", "T", "Lkotlinx/coroutines/internal/v;", "Queue", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class r1 {

    /* renamed from: b  reason: collision with root package name */
    private static final int f72319b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f72320c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f72321d = 2;

    /* renamed from: e  reason: collision with root package name */
    private static final long f72322e = 1000000;

    /* renamed from: f  reason: collision with root package name */
    private static final long f72323f = 9223372036854L;

    /* renamed from: g  reason: collision with root package name */
    private static final long f72324g = 4611686018427387903L;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.i0 f72318a = new kotlinx.coroutines.internal.i0("REMOVED_TASK");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.i0 f72325h = new kotlinx.coroutines.internal.i0("CLOSED_EMPTY");

    public static final long c(long j4) {
        return j4 / f72322e;
    }

    public static final long d(long j4) {
        if (j4 <= 0) {
            return 0L;
        }
        if (j4 >= f72323f) {
            return Long.MAX_VALUE;
        }
        return f72322e * j4;
    }

    private static /* synthetic */ void e() {
    }

    private static /* synthetic */ void f() {
    }
}
