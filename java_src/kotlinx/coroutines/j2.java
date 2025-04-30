package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JobSupport.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0014\u001a\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000\u001a\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000H\u0000\"\u0016\u0010\u0006\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005\"\u001c\u0010\f\u001a\u00020\u00078\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u0012\u0004\b\n\u0010\u000b\"\u001c\u0010\u000f\u001a\u00020\u00078\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\r\u0010\t\u0012\u0004\b\u000e\u0010\u000b\"\u001c\u0010\u0014\u001a\u00020\u00108\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u0012\u0004\b\u0013\u0010\u000b\"\u001c\u0010\u0017\u001a\u00020\u00078\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0015\u0010\t\u0012\u0004\b\u0016\u0010\u000b\"\u0016\u0010\u0018\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0005\"\u001c\u0010\u001b\u001a\u00020\u00078\u0000@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0019\u0010\t\u0012\u0004\b\u001a\u0010\u000b\"\u001c\u0010\u001e\u001a\u00020\u00108\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u0012\u0012\u0004\b\u001d\u0010\u000b\"\u001c\u0010!\u001a\u00020\u00078\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001f\u0010\t\u0012\u0004\b \u0010\u000b\"\u0016\u0010#\u001a\u00020\u00038\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u0005¨\u0006$"}, d2 = {"", com.sdk.a.g.f56552a, "o", "", "e", "I", "RETRY", "Lkotlinx/coroutines/internal/i0;", "a", "Lkotlinx/coroutines/internal/i0;", "getCOMPLETING_ALREADY$annotations", "()V", "COMPLETING_ALREADY", "h", "getSEALED$annotations", "SEALED", "Lkotlinx/coroutines/m1;", ai.aA, "Lkotlinx/coroutines/m1;", "getEMPTY_NEW$annotations", "EMPTY_NEW", com.xinzhu.overmind.utils.helpers.d.f64708a, "getTOO_LATE_TO_CANCEL$annotations", "TOO_LATE_TO_CANCEL", "TRUE", "b", "getCOMPLETING_WAITING_CHILDREN$annotations", "COMPLETING_WAITING_CHILDREN", "j", "getEMPTY_ACTIVE$annotations", "EMPTY_ACTIVE", ai.aD, "getCOMPLETING_RETRY$annotations", "COMPLETING_RETRY", "f", "FALSE", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class j2 {

    /* renamed from: e  reason: collision with root package name */
    private static final int f72260e = -1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f72261f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final int f72262g = 1;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.i0 f72256a = new kotlinx.coroutines.internal.i0("COMPLETING_ALREADY");
    @JvmField
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final kotlinx.coroutines.internal.i0 f72257b = new kotlinx.coroutines.internal.i0("COMPLETING_WAITING_CHILDREN");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.i0 f72258c = new kotlinx.coroutines.internal.i0("COMPLETING_RETRY");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.i0 f72259d = new kotlinx.coroutines.internal.i0("TOO_LATE_TO_CANCEL");
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final kotlinx.coroutines.internal.i0 f72263h = new kotlinx.coroutines.internal.i0("SEALED");
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final m1 f72264i = new m1(false);
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final m1 f72265j = new m1(true);

    @Nullable
    public static final Object g(@Nullable Object obj) {
        return obj instanceof x1 ? new y1((x1) obj) : obj;
    }

    private static /* synthetic */ void h() {
    }

    private static /* synthetic */ void i() {
    }

    public static /* synthetic */ void j() {
    }

    private static /* synthetic */ void k() {
    }

    private static /* synthetic */ void l() {
    }

    private static /* synthetic */ void m() {
    }

    private static /* synthetic */ void n() {
    }

    @Nullable
    public static final Object o(@Nullable Object obj) {
        y1 y1Var = obj instanceof y1 ? (y1) obj : null;
        return y1Var == null ? obj : y1Var.f72544a;
    }
}
