package kotlinx.coroutines.sync;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.m0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Semaphore.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0000\u001a8\u0010\b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0005*\u00020\u00032\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\b\u0010\t\u001a\u001a\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002\"\u001c\u0010\u0013\u001a\u00020\u00008\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u0012\u0004\b\u0011\u0010\u0012\"\u001c\u0010\u0018\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u0012\u0004\b\u0017\u0010\u0012\"\u001c\u0010\u001b\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u0012\u0004\b\u001a\u0010\u0012\"\u001c\u0010\u001d\u001a\u00020\u00008\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0010\u0012\u0004\b\u001c\u0010\u0012\"\u001c\u0010 \u001a\u00020\u00148\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u0016\u0012\u0004\b\u001f\u0010\u0012\"\u001c\u0010#\u001a\u00020\u00148\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b!\u0010\u0016\u0012\u0004\b\"\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"", "permits", "acquiredPermits", "Lkotlinx/coroutines/sync/d;", "a", "T", "Lkotlin/Function0;", "action", "q", "(Lkotlinx/coroutines/sync/d;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "id", "Lkotlinx/coroutines/sync/e;", "prev", "j", "f", "I", "getSEGMENT_SIZE$annotations", "()V", "SEGMENT_SIZE", "Lkotlinx/coroutines/internal/i0;", "b", "Lkotlinx/coroutines/internal/i0;", "getPERMIT$annotations", "PERMIT", com.xinzhu.overmind.utils.helpers.d.f64708a, "getBROKEN$annotations", "BROKEN", "getMAX_SPIN_CYCLES$annotations", "MAX_SPIN_CYCLES", ai.aD, "getTAKEN$annotations", "TAKEN", "e", "getCANCELLED$annotations", "CANCELLED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class SemaphoreKt {

    /* renamed from: a  reason: collision with root package name */
    private static final int f72482a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i0 f72483b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i0 f72484c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i0 f72485d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final i0 f72486e;

    /* renamed from: f  reason: collision with root package name */
    private static final int f72487f;

    static {
        int d4;
        int d5;
        d4 = m0.d("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);
        f72482a = d4;
        f72483b = new i0("PERMIT");
        f72484c = new i0("TAKEN");
        f72485d = new i0("BROKEN");
        f72486e = new i0("CANCELLED");
        d5 = m0.d("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);
        f72487f = d5;
    }

    @NotNull
    public static final d a(int i2, int i4) {
        return new SemaphoreImpl(i2, i4);
    }

    public static /* synthetic */ d b(int i2, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i4 = 0;
        }
        return a(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e j(long j4, e eVar) {
        return new e(j4, eVar, 0);
    }

    private static /* synthetic */ void k() {
    }

    private static /* synthetic */ void l() {
    }

    private static /* synthetic */ void m() {
    }

    private static /* synthetic */ void n() {
    }

    private static /* synthetic */ void o() {
    }

    private static /* synthetic */ void p() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object q(@org.jetbrains.annotations.NotNull kotlinx.coroutines.sync.d r4, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<? extends T> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = (kotlinx.coroutines.sync.SemaphoreKt$withPermit$1) r0
            int r1 = r0.f72491d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f72491d = r1
            goto L18
        L13:
            kotlinx.coroutines.sync.SemaphoreKt$withPermit$1 r0 = new kotlinx.coroutines.sync.SemaphoreKt$withPermit$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f72490c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f72491d
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r4 = r0.f72489b
            r5 = r4
            kotlin.jvm.functions.Function0 r5 = (kotlin.jvm.functions.Function0) r5
            java.lang.Object r4 = r0.f72488a
            kotlinx.coroutines.sync.d r4 = (kotlinx.coroutines.sync.d) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L32:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f72488a = r4
            r0.f72489b = r5
            r0.f72491d = r3
            java.lang.Object r6 = r4.c(r0)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            java.lang.Object r5 = r5.invoke()     // Catch: java.lang.Throwable -> L58
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.release()
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            return r5
        L58:
            r5 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.release()
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.SemaphoreKt.q(kotlinx.coroutines.sync.d, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object r(d dVar, Function0<? extends T> function0, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        dVar.c(continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            dVar.release();
            InlineMarker.finallyEnd(1);
        }
    }
}
