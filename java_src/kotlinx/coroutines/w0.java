package kotlinx.coroutines;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
/* compiled from: DebugStrings.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u001a\u0010\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0000H\u0000\"\u001a\u0010\u0006\u001a\u00020\u0001*\u00020\u00038@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u001a\u0010\b\u001a\u00020\u0001*\u00020\u00038@@\u0000X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\t"}, d2 = {"Lkotlin/coroutines/Continuation;", "", ai.aD, "", "a", "(Ljava/lang/Object;)Ljava/lang/String;", "classSimpleName", "b", "hexAddress", "kotlinx-coroutines-core"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class w0 {
    @NotNull
    public static final String a(@NotNull Object obj) {
        return obj.getClass().getSimpleName();
    }

    @NotNull
    public static final String b(@NotNull Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    @NotNull
    public static final String c(@NotNull Continuation<?> continuation) {
        String m24constructorimpl;
        if (continuation instanceof kotlinx.coroutines.internal.j) {
            return continuation.toString();
        }
        try {
            Result.Companion companion = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(continuation + '@' + b(continuation));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m24constructorimpl = Result.m24constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m27exceptionOrNullimpl(m24constructorimpl) != null) {
            m24constructorimpl = ((Object) continuation.getClass().getName()) + '@' + b(continuation);
        }
        return (String) m24constructorimpl;
    }
}
