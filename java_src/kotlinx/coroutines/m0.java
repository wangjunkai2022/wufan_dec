package kotlinx.coroutines;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletionState.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aK\u0010\n\u001a\u0004\u0018\u00010\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012%\b\u0002\u0010\b\u001a\u001f\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a0\u0010\u000e\u001a\u0004\u0018\u00010\t\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0000ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a6\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"T", "Lkotlin/Result;", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "onCancellation", "", "b", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lkotlinx/coroutines/p;", "caller", ai.aD, "(Ljava/lang/Object;Lkotlinx/coroutines/p;)Ljava/lang/Object;", NoticeTopAnimActivityDialog_.f34402n, "Lkotlin/coroutines/Continuation;", "uCont", "a", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class m0 {
    @NotNull
    public static final <T> Object a(@Nullable Object obj, @NotNull Continuation<? super T> continuation) {
        if (obj instanceof h0) {
            Result.Companion companion = Result.Companion;
            Throwable th = ((h0) obj).f72127a;
            if (v0.e() && (continuation instanceof CoroutineStackFrame)) {
                th = kotlinx.coroutines.internal.h0.o(th, (CoroutineStackFrame) continuation);
            }
            return Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        Result.Companion companion2 = Result.Companion;
        return Result.m24constructorimpl(obj);
    }

    @Nullable
    public static final <T> Object b(@NotNull Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        if (m27exceptionOrNullimpl == null) {
            return function1 != null ? new i0(obj, function1) : obj;
        }
        return new h0(m27exceptionOrNullimpl, false, 2, null);
    }

    @Nullable
    public static final <T> Object c(@NotNull Object obj, @NotNull p<?> pVar) {
        Throwable m27exceptionOrNullimpl = Result.m27exceptionOrNullimpl(obj);
        if (m27exceptionOrNullimpl != null) {
            if (v0.e() && (pVar instanceof CoroutineStackFrame)) {
                m27exceptionOrNullimpl = kotlinx.coroutines.internal.h0.o(m27exceptionOrNullimpl, (CoroutineStackFrame) pVar);
            }
            obj = new h0(m27exceptionOrNullimpl, false, 2, null);
        }
        return obj;
    }

    public static /* synthetic */ Object d(Object obj, Function1 function1, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            function1 = null;
        }
        return b(obj, function1);
    }
}
