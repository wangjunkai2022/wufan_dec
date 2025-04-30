package kotlinx.coroutines.debug.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConcurrentWeakMap.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u000e\u0010\u0002\u001a\u00020\u0001*\u0004\u0018\u00010\u0000H\u0002\u001a\b\u0010\u0004\u001a\u00020\u0003H\u0002\"\u0016\u0010\u0006\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0005\"\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t\"\u0016\u0010\f\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\t\"\u0016\u0010\r\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"", "Lkotlinx/coroutines/debug/internal/g;", com.xinzhu.overmind.utils.helpers.d.f64708a, "", "e", "Lkotlinx/coroutines/debug/internal/g;", "MARKED_NULL", "", "b", "I", "MIN_CAPACITY", "a", "MAGIC", "MARKED_TRUE", "Lkotlinx/coroutines/internal/i0;", ai.aD, "Lkotlinx/coroutines/internal/i0;", "REHASH", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f71171a = -1640531527;

    /* renamed from: b  reason: collision with root package name */
    private static final int f71172b = 16;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i0 f71173c = new i0("REHASH");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final g f71174d = new g(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final g f71175e = new g(Boolean.TRUE);

    /* JADX INFO: Access modifiers changed from: private */
    public static final g d(Object obj) {
        if (obj == null) {
            return f71174d;
        }
        return Intrinsics.areEqual(obj, Boolean.TRUE) ? f71175e : new g(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void e() {
        throw new UnsupportedOperationException("not implemented");
    }
}
