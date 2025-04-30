package kotlinx.coroutines.sync;

import com.sdk.a.g;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Mutex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u0010\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0001\u001a\u00020\u0000\u001aD\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0004*\u00020\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0086Hø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\"\u001c\u0010\u0010\u001a\u00020\u000b8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u0012\u0004\b\u000e\u0010\u000f\"\u001c\u0010\u0015\u001a\u00020\u00118\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u0012\u0004\b\u0014\u0010\u000f\"\u001c\u0010\u0018\u001a\u00020\u00118\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u0012\u0004\b\u0017\u0010\u000f\"\u001c\u0010\u001b\u001a\u00020\u000b8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0019\u0010\r\u0012\u0004\b\u001a\u0010\u000f\"\u001c\u0010\u001e\u001a\u00020\u000b8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u001c\u0010\r\u0012\u0004\b\u001d\u0010\u000f\"\u001c\u0010 \u001a\u00020\u000b8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0003\u0010\r\u0012\u0004\b\u001f\u0010\u000f\"\u001c\u0010#\u001a\u00020\u000b8\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b!\u0010\r\u0012\u0004\b\"\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"", "locked", "Lkotlinx/coroutines/sync/c;", "a", "T", "", "owner", "Lkotlin/Function0;", "action", "q", "(Lkotlinx/coroutines/sync/c;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/i0;", ai.aD, "Lkotlinx/coroutines/internal/i0;", "getSELECT_SUCCESS$annotations", "()V", "SELECT_SUCCESS", "Lkotlinx/coroutines/sync/b;", g.f56552a, "Lkotlinx/coroutines/sync/b;", "getEMPTY_UNLOCKED$annotations", "EMPTY_UNLOCKED", "f", "getEMPTY_LOCKED$annotations", "EMPTY_LOCKED", "b", "getUNLOCK_FAIL$annotations", "UNLOCK_FAIL", "e", "getUNLOCKED$annotations", "UNLOCKED", "getLOCK_FAIL$annotations", "LOCK_FAIL", com.xinzhu.overmind.utils.helpers.d.f64708a, "getLOCKED$annotations", "LOCKED", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class MutexKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final i0 f72462a = new i0("LOCK_FAIL");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i0 f72463b = new i0("UNLOCK_FAIL");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i0 f72464c = new i0("SELECT_SUCCESS");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final i0 f72465d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final i0 f72466e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final b f72467f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final b f72468g;

    static {
        i0 i0Var = new i0("LOCKED");
        f72465d = i0Var;
        i0 i0Var2 = new i0("UNLOCKED");
        f72466e = i0Var2;
        f72467f = new b(i0Var);
        f72468g = new b(i0Var2);
    }

    @NotNull
    public static final c a(boolean z3) {
        return new MutexImpl(z3);
    }

    public static /* synthetic */ c b(boolean z3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z3 = false;
        }
        return a(z3);
    }

    private static /* synthetic */ void j() {
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
    /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object q(@org.jetbrains.annotations.NotNull kotlinx.coroutines.sync.c r4, @org.jetbrains.annotations.Nullable java.lang.Object r5, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function0<? extends T> r6, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.sync.MutexKt$withLock$1
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.sync.MutexKt$withLock$1 r0 = (kotlinx.coroutines.sync.MutexKt$withLock$1) r0
            int r1 = r0.f72473e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f72473e = r1
            goto L18
        L13:
            kotlinx.coroutines.sync.MutexKt$withLock$1 r0 = new kotlinx.coroutines.sync.MutexKt$withLock$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f72472d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f72473e
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r4 = r0.f72471c
            r6 = r4
            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6
            java.lang.Object r5 = r0.f72470b
            java.lang.Object r4 = r0.f72469a
            kotlinx.coroutines.sync.c r4 = (kotlinx.coroutines.sync.c) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4e
        L34:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.f72469a = r4
            r0.f72470b = r5
            r0.f72471c = r6
            r0.f72473e = r3
            java.lang.Object r7 = r4.c(r5, r0)
            if (r7 != r1) goto L4e
            return r1
        L4e:
            java.lang.Object r6 = r6.invoke()     // Catch: java.lang.Throwable -> L5c
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.d(r5)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            return r6
        L5c:
            r6 = move-exception
            kotlin.jvm.internal.InlineMarker.finallyStart(r3)
            r4.d(r5)
            kotlin.jvm.internal.InlineMarker.finallyEnd(r3)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexKt.q(kotlinx.coroutines.sync.c, java.lang.Object, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object r(c cVar, Object obj, Function0<? extends T> function0, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        cVar.c(obj, continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            cVar.d(obj);
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ Object s(c cVar, Object obj, Function0 function0, Continuation continuation, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            obj = null;
        }
        InlineMarker.mark(0);
        cVar.c(obj, continuation);
        InlineMarker.mark(1);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            cVar.d(obj);
            InlineMarker.finallyEnd(1);
        }
    }
}
